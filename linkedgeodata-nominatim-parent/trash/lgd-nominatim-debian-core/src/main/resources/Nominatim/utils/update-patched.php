#!/usr/bin/php -Cq
<?php

        require_once(dirname(dirname(__FILE__)).'/lib/init-cmd.php');
        ini_set('memory_limit', '800M');

	$aCMDOptions = array(
		"Import / update / index osm data",
		array('help', 'h', 0, 1, 0, 0, false, 'Show Help'),
		array('quiet', 'q', 0, 1, 0, 0, 'bool', 'Quiet output'),
		array('verbose', 'v', 0, 1, 0, 0, 'bool', 'Verbose output'),

		array('max-load', '', 0, 1, 1, 1, 'float', 'Maximum load average - indexing is paused if this is exceeded'),
		array('max-blocking', '', 0, 1, 1, 1, 'int', 'Maximum blocking processes - indexing is aborted / paused if this is exceeded'),

		array('import-osmosis', '', 0, 1, 0, 0, 'bool', 'Import using osmosis'),
		array('import-osmosis-all', '', 0, 1, 0, 0, 'bool', 'Import using osmosis forever'),
		array('no-npi', '', 0, 1, 0, 0, 'bool', 'Do not write npi index files'),
		array('no-index', '', 0, 1, 0, 0, 'bool', 'Do not index the new data'),

		array('import-npi-all', '', 0, 1, 0, 0, 'bool', 'Import npi pre-indexed files'),

		array('import-hourly', '', 0, 1, 0, 0, 'bool', 'Import hourly diffs'),
		array('import-daily', '', 0, 1, 0, 0, 'bool', 'Import daily diffs'),
		array('import-all', '', 0, 1, 0, 0, 'bool', 'Import all available files'),

		array('import-file', '', 0, 1, 1, 1, 'realpath', 'Re-import data from an OSM file'),
		array('import-diff', '', 0, 1, 1, 1, 'realpath', 'Import a diff (osc) file from local file system'),
		array('osm2pgsql-cache', '', 0, 1, 1, 1, 'int', 'Cache size used by osm2pgsql'),

		array('import-node', '', 0, 1, 1, 1, 'int', 'Re-import node'),
		array('import-way', '', 0, 1, 1, 1, 'int', 'Re-import way'),
		array('import-relation', '', 0, 1, 1, 1, 'int', 'Re-import relation'),
		array('import-from-main-api', '', 0, 1, 0, 0, 'bool', 'Use OSM API instead of Overpass to download objects'),

		array('index', '', 0, 1, 0, 0, 'bool', 'Index'),
		array('index-rank', '', 0, 1, 1, 1, 'int', 'Rank to start indexing from'),
		array('index-instances', '', 0, 1, 1, 1, 'int', 'Number of indexing instances (threads)'),
		array('index-estrate', '', 0, 1, 1, 1, 'int', 'Estimated indexed items per second (def:30)'),

		array('deduplicate', '', 0, 1, 0, 0, 'bool', 'Deduplicate tokens'),
	);
	getCmdOpt($_SERVER['argv'], $aCMDOptions, $aResult, true, true);

	if ($aResult['import-hourly'] + $aResult['import-daily'] + isset($aResult['import-diff']) > 1)
	{
		showUsage($aCMDOptions, true, 'Select either import of hourly or daily');
	}

	if (!isset($aResult['index-instances'])) $aResult['index-instances'] = 1;
	if (!isset($aResult['index-rank'])) $aResult['index-rank'] = 0;

/*
	// Lock to prevent multiple copies running
	if (exec('/bin/ps uww | grep '.basename(__FILE__).' | grep -v /dev/null | grep -v grep -c', $aOutput2, $iResult) > 1)
	{
		fail("Copy already running\n");
	}
	if (!isset($aResult['max-load'])) $aResult['max-load'] = 1.9;
	if (!isset($aResult['max-blocking'])) $aResult['max-blocking'] = 3;
	if (getBlockingProcesses() > $aResult['max-blocking'])
	{
		fail("Too many blocking processes for import\n");
	}
*/

	// Assume osm2pgsql is in the folder above
	$sBasePath = dirname(dirname(__FILE__));

	date_default_timezone_set('Etc/UTC');

	$oDB =& getDB();

	$aDSNInfo = DB::parseDSN(CONST_Database_DSN);
	if (!isset($aDSNInfo['port']) || !$aDSNInfo['port']) $aDSNInfo['port'] = 5432;

	// cache memory to be used by osm2pgsql, should not be more than the available memory
	$iCacheMemory = (isset($aResult['osm2pgsql-cache'])?$aResult['osm2pgsql-cache']:2000);
	if ($iCacheMemory + 500 > getTotalMemoryMB())
	{
		$iCacheMemory = getCacheMemoryMB();
		echo "WARNING: resetting cache memory to $iCacheMemory\n";
	}
//	$sOsm2pgsqlCmd = CONST_Osm2pgsql_Binary.' -klas --number-processes 1 -C '.$iCacheMemory.' -O gazetteer -d '.$aDSNInfo['database'].' -P '.$aDSNInfo['port'];

        $sOsm2pgsqlCmd = 'PGPASS=' . $aDSNInfo['password'] . ' ';

        $sOsm2pgsqlCmd .= CONST_Osm2pgsql_Binary
//        $sOsm2pgsqlCmd .= '/usr/bin/osm2pgsql'
                       . ' -klas --number-processes 1 -C '.$iCacheMemory.' -O gazetteer'
                       . ' -H ' . $aDSNInfo['hostspec']
                       . ' -U ' . $aDSNInfo['username']
                       . ' -P ' . $aDSNInfo['port']
                       . ' -d ' . $aDSNInfo['database']
                       ;

        echo "cmd = $sOsm2pgsqlCmd\n";
        echo "const = " . CONST_Osm2pgsql_Binary . '\n';

	if (!is_null(CONST_Osm2pgsql_Flatnode_File))
	{
		$sOsm2pgsqlCmd .= ' --flat-nodes '.CONST_Osm2pgsql_Flatnode_File;
	}


	$bFirst = true;
	$bContinue = $aResult['import-all'];
	while ($bContinue || $bFirst)
	{
		$bFirst = false;

		if ($aResult['import-hourly'])
		{
			// Mirror the hourly diffs
			exec('wget --quiet --mirror -l 1 -P '.$sMirrorDir.' http://planet.openstreetmap.org/hourly');
			$sNextFile = $oDB->getOne('select TO_CHAR(lastimportdate,\'YYYYMMDDHH24\')||\'-\'||TO_CHAR(lastimportdate+\'1 hour\'::interval,\'YYYYMMDDHH24\')||\'.osc.gz\' from import_status');
			$sNextFile = $sMirrorDir.'planet.openstreetmap.org/hourly/'.$sNextFile;
			$sUpdateSQL = 'update import_status set lastimportdate = lastimportdate+\'1 hour\'::interval';
		}

		if ($aResult['import-daily'])
		{
			// Mirror the daily diffs
			exec('wget --quiet --mirror -l 1 -P '.$sMirrorDir.' http://planet.openstreetmap.org/daily');
			$sNextFile = $oDB->getOne('select TO_CHAR(lastimportdate,\'YYYYMMDD\')||\'-\'||TO_CHAR(lastimportdate+\'1 day\'::interval,\'YYYYMMDD\')||\'.osc.gz\' from import_status');
			$sNextFile = $sMirrorDir.'planet.openstreetmap.org/daily/'.$sNextFile;
			$sUpdateSQL = 'update import_status set lastimportdate = lastimportdate::date + 1';
		}
		
		if (isset($aResult['import-diff']))
		{
			// import diff directly (e.g. from osmosis --rri)
			$sNextFile = $aResult['import-diff'];
			if (!file_exists($sNextFile))
			{
				fail("Cannot open $sNextFile\n");
			}
			// Don't update the import status - we don't know what this file contains
			$sUpdateSQL = 'update import_status set lastimportdate = now() where false';
		}

		// Missing file is not an error - it might not be created yet
		if (($aResult['import-hourly'] || $aResult['import-daily'] || isset($aResult['import-diff'])) && file_exists($sNextFile))
		{
			// Import the file
			$sCMD = $sOsm2pgsqlCmd.' '.$sNextFile;
			echo $sCMD."\n";
			exec($sCMD, $sJunk, $iErrorLevel);

			if ($iErrorLevel)
			{
				fail("Error from osm2pgsql, $iErrorLevel\n");
			}
	
			// Move the date onwards
			$oDB->query($sUpdateSQL);
		}
		else
		{
			$bContinue = false;
		}
	}

	$bModifyXML = false;
	$sModifyXMLstr = '';
	$bUseOSMApi = isset($aResult['import-from-main-api']) && $aResult['import-from-main-api'];
	if (isset($aResult['import-file']) && $aResult['import-file'])
	{
		$bModifyXML = true;
	}
	if (isset($aResult['import-node']) && $aResult['import-node'])
	{
		$bModifyXML = true;
		if ($bUseOSMApi)
		{
			$sModifyXMLstr = file_get_contents('http://www.openstreetmap.org/api/0.6/node/'.$aResult['import-node']);
		}
		else
		{
			$sModifyXMLstr = file_get_contents('http://overpass-api.de/api/interpreter?data=node('.$aResult['import-node'].');out%20meta;');
		}
	}
	if (isset($aResult['import-way']) && $aResult['import-way'])
	{
		$bModifyXML = true;
		if ($bUseOSMApi)
		{
			$sCmd = 'http://www.openstreetmap.org/api/0.6/way/'.$aResult['import-way'].'/full';
		}
		else
		{
			$sCmd = 'http://overpass-api.de/api/interpreter?data=(way('.$aResult['import-way'].');node(w););out%20meta;';
		}
		$sModifyXMLstr = file_get_contents($sCmd);
	}
	if (isset($aResult['import-relation']) && $aResult['import-relation'])
	{
		$bModifyXML = true;
		if ($bUseOSMApi)
		{
			$sModifyXMLstr = file_get_contents('http://www.openstreetmap.org/api/0.6/relation/'.$aResult['import-relation'].'/full');
		}
		else
		{
			$sModifyXMLstr = file_get_contents('http://overpass-api.de/api/interpreter?data=((rel('.$aResult['import-relation'].');way(r);node(w));node(r));out%20meta;');
		}
	}
	if ($bModifyXML)
	{
		// derive change from normal osm file with osmosis
		$sTemporaryFile = CONST_BasePath.'/data/osmosischange.osc';
		if (isset($aResult['import-file']) && $aResult['import-file'])
		{
			$sCMD = CONST_Osmosis_Binary.' --read-xml \''.$aResult['import-file'].'\' --read-empty --derive-change --write-xml-change '.$sTemporaryFile;
			echo $sCMD."\n";
			exec($sCMD, $sJunk, $iErrorLevel);
			if ($iErrorLevel)
			{
				fail("Error converting osm to osc, osmosis returned: $iErrorLevel\n");
			}
		}
		else
		{
			$aSpec = array(
				0 => array("pipe", "r"),  // stdin
				1 => array("pipe", "w"),  // stdout
				2 => array("pipe", "w") // stderr
			);
			$sCMD = CONST_Osmosis_Binary.' --read-xml - --read-empty --derive-change --write-xml-change '.$sTemporaryFile;
			echo $sCMD."\n";
			$hProc = proc_open($sCMD, $aSpec, $aPipes);
			if (!is_resource($hProc))
			{
				fail("Error converting osm to osc, osmosis failed\n");
			}
			fwrite($aPipes[0], $sModifyXMLstr);
			fclose($aPipes[0]);
			$sOut = stream_get_contents($aPipes[1]);
			if ($aResult['verbose']) echo $sOut;
			fclose($aPipes[1]);
			$sErrors = stream_get_contents($aPipes[2]);
			if ($aResult['verbose']) echo $sErrors;
			fclose($aPipes[2]);
			if ($iError = proc_close($hProc))
			{
				echo "Error converting osm to osc, osmosis returned: $iError\n";
				echo $sOut;
				echo $sErrors;
				exit(-1);
			}
		}

		// import generated change file
		$sCMD = $sOsm2pgsqlCmd.' '.$sTemporaryFile;
		echo $sCMD."\n";
		exec($sCMD, $sJunk, $iErrorLevel);
		if ($iErrorLevel)
		{
			fail("osm2pgsql exited with error level $iErrorLevel\n");
		}
	}

	if ($aResult['deduplicate'])
	{

		$pgver = (float) CONST_Postgresql_Version;
                if ($pgver < 9.3) {
			fail("ERROR: deduplicate is only currently supported in postgresql 9.3");
		}

                $oDB =& getDB();
                $sSQL = 'select partition from country_name order by country_code';
                $aPartitions = $oDB->getCol($sSQL);
                if (PEAR::isError($aPartitions))
                {
                        fail($aPartitions->getMessage());
                }
                $aPartitions[] = 0;

		$sSQL = "select word_token,count(*) from word where substr(word_token, 1, 1) = ' ' and class is null and type is null and country_code is null group by word_token having count(*) > 1 order by word_token";
		$aDuplicateTokens = $oDB->getAll($sSQL);
		foreach($aDuplicateTokens as $aToken)
		{
			if (trim($aToken['word_token']) == '' || trim($aToken['word_token']) == '-') continue;
			echo "Deduping ".$aToken['word_token']."\n";
			$sSQL = "select word_id,(select count(*) from search_name where nameaddress_vector @> ARRAY[word_id]) as num from word where word_token = '".$aToken['word_token']."' and class is null and type is null and country_code is null order by num desc";
			$aTokenSet = $oDB->getAll($sSQL);
			if (PEAR::isError($aTokenSet))
			{
				var_dump($aTokenSet, $sSQL);
				exit(1);
			}

			$aKeep = array_shift($aTokenSet);
			$iKeepID = $aKeep['word_id'];

			foreach($aTokenSet as $aRemove)
			{
				$sSQL = "update search_name set";
				$sSQL .= " name_vector = array_replace(name_vector,".$aRemove['word_id'].",".$iKeepID."),";
				$sSQL .= " nameaddress_vector = array_replace(nameaddress_vector,".$aRemove['word_id'].",".$iKeepID.")";
				$sSQL .= " where name_vector @> ARRAY[".$aRemove['word_id']."]";
				$x = $oDB->query($sSQL);
				if (PEAR::isError($x))
				{
					var_dump($x);
					exit(1);
				}

				$sSQL = "update search_name set";
				$sSQL .= " nameaddress_vector = array_replace(nameaddress_vector,".$aRemove['word_id'].",".$iKeepID.")";
				$sSQL .= " where nameaddress_vector @> ARRAY[".$aRemove['word_id']."]";
				$x = $oDB->query($sSQL);
				if (PEAR::isError($x))
				{
					var_dump($x);
					exit(1);
				}

				$sSQL = "update location_area_country set";
				$sSQL .= " keywords = array_replace(keywords,".$aRemove['word_id'].",".$iKeepID.")";
				$sSQL .= " where keywords @> ARRAY[".$aRemove['word_id']."]";
				$x = $oDB->query($sSQL);
				if (PEAR::isError($x))
				{
					var_dump($x);
					exit(1);
				}

				foreach ($aPartitions as $sPartition)
				{
					$sSQL = "update search_name_".$sPartition." set";
					$sSQL .= " name_vector = array_replace(name_vector,".$aRemove['word_id'].",".$iKeepID.")";
					$sSQL .= " where name_vector @> ARRAY[".$aRemove['word_id']."]";
					$x = $oDB->query($sSQL);
					if (PEAR::isError($x))
					{
						var_dump($x);
						exit(1);
					}

					$sSQL = "update location_area_country set";
					$sSQL .= " keywords = array_replace(keywords,".$aRemove['word_id'].",".$iKeepID.")";
					$sSQL .= " where keywords @> ARRAY[".$aRemove['word_id']."]";
					$x = $oDB->query($sSQL);
					if (PEAR::isError($x))
					{
						var_dump($x);
						exit(1);
					}
				}

				$sSQL = "delete from word where word_id = ".$aRemove['word_id'];
				$x = $oDB->query($sSQL);
				if (PEAR::isError($x))
				{
					var_dump($x);
					exit(1);
				}
			}

		}
	}

	if ($aResult['index'])
	{
		passthru(CONST_BasePath.'/nominatim/nominatim -i -d '.$aDSNInfo['database'].' -P '.$aDSNInfo['port'].' -t '.$aResult['index-instances'].' -r '.$aResult['index-rank']);
	}

	if ($aResult['import-osmosis'] || $aResult['import-osmosis-all'])
	{
		if (strpos(CONST_Replication_Url, 'download.geofabrik.de') !== false && CONST_Replication_Update_Interval < 77760) { //86400) { // let's allow 10~ tolerance
			fail("Error: Update interval too low for download.geofabrik.de.  Please check install documentation (http://wiki.openstreetmap.org/wiki/Nominatim/Installation#Updates)\n");
		}

		$sImportFile = CONST_BasePath.'/data/osmosischange.osc';
		$sOsmosisCMD = CONST_Osmosis_Binary;
		$sOsmosisConfigDirectory = CONST_BasePath.'/settings';
		$sCMDDownload = $sOsmosisCMD.' --read-replication-interval workingDirectory='.$sOsmosisConfigDirectory.' --simplify-change --write-xml-change '.$sImportFile;
		$sCMDCheckReplicationLag = $sOsmosisCMD.' -q --read-replication-lag workingDirectory='.$sOsmosisConfigDirectory;
		$sCMDImport = $sOsm2pgsqlCmd.' '.$sImportFile;

                $sCMDIndex = 'PGPASS=' . $aDSNInfo['password'] . ' ';
		$sCMDIndex .= $sBasePath.'/nominatim/nominatim -i';

                $sCMDIndex .= ' -H ' . $aDSNInfo['hostspec']
                            . ' -U ' . $aDSNInfo['username']
                            . ' -P ' . $aDSNInfo['port']
                            . ' -d ' . $aDSNInfo['database']
                            ;
// -d '.$aDSNInfo['database'].' -P '.$aDSNInfo['port'].' 


                $sCMDIndex .= ' -t '.$aResult['index-instances'];
		if (!$aResult['no-npi']) {
			$sCMDIndex .= '-F ';
		}
		while(true)
		{
			$fStartTime = time();
			$iFileSize = 1001;

			// Logic behind this is that osm2pgsql locks the database quite a bit
			// So it is better to import lots of small files
			// But indexing works most efficiently on large amounts of data
			// So do lots of small imports and a BIG index

//			while($aResult['import-osmosis-all'] && $iFileSize > 1000)
//			{
				if (!file_exists($sImportFile))
				{
					// First check if there are new updates published (except for minutelies - there's always new diffs to process)
					if ( CONST_Replication_Update_Interval > 60 )
					{

						unset($aReplicationLag);
						exec($sCMDCheckReplicationLag, $aReplicationLag, $iErrorLevel); 
						while ($iErrorLevel > 0 || $aReplicationLag[0] < 1)
						{
							if ($iErrorLevel)
							{
								echo "Error: $iErrorLevel. ";
								echo "Re-trying: ".$sCMDCheckReplicationLag." in ".CONST_Replication_Recheck_Interval." secs\n";
							}
							else
							{
								echo ".";
							}
							sleep(CONST_Replication_Recheck_Interval);
							unset($aReplicationLag);
							exec($sCMDCheckReplicationLag, $aReplicationLag, $iErrorLevel); 
						}
						// There are new replication files - use osmosis to download the file
						echo "\n".date('Y-m-d H:i:s')." Replication Delay is ".$aReplicationLag[0]."\n";
					}
					$fStartTime = time();
					$fCMDStartTime = time();
					echo $sCMDDownload."\n";
					exec($sCMDDownload, $sJunk, $iErrorLevel);
					while ($iErrorLevel > 0)
					{
						echo "Error: $iErrorLevel\n";
						sleep(60);
						echo 'Re-trying: '.$sCMDDownload."\n";
						exec($sCMDDownload, $sJunk, $iErrorLevel);
					}
					$iFileSize = filesize($sImportFile);
					$sBatchEnd = getosmosistimestamp($sOsmosisConfigDirectory);
					$sSQL = "INSERT INTO import_osmosis_log values ('$sBatchEnd',$iFileSize,'".date('Y-m-d H:i:s',$fCMDStartTime)."','".date('Y-m-d H:i:s')."','osmosis')";
					var_Dump($sSQL);
					$oDB->query($sSQL);
					echo date('Y-m-d H:i:s')." Completed osmosis step for $sBatchEnd in ".round((time()-$fCMDStartTime)/60,2)." minutes\n";
				}

				$iFileSize = filesize($sImportFile);
				$sBatchEnd = getosmosistimestamp($sOsmosisConfigDirectory);
		
				// Import the file
				$fCMDStartTime = time();
				echo $sCMDImport."\n";
				exec($sCMDImport, $sJunk, $iErrorLevel);
				if ($iErrorLevel)
				{
					echo "Error: $iErrorLevel\n";
					exit($iErrorLevel);
				}
				$sSQL = "INSERT INTO import_osmosis_log values ('$sBatchEnd',$iFileSize,'".date('Y-m-d H:i:s',$fCMDStartTime)."','".date('Y-m-d H:i:s')."','osm2pgsql')";
				var_Dump($sSQL);
				$oDB->query($sSQL);
				echo date('Y-m-d H:i:s')." Completed osm2pgsql step for $sBatchEnd in ".round((time()-$fCMDStartTime)/60,2)." minutes\n";

				// Archive for debug?
				unlink($sImportFile);
//			}

			$sBatchEnd = getosmosistimestamp($sOsmosisConfigDirectory);

			// Index file
			$sThisIndexCmd = $sCMDIndex;
			$fCMDStartTime = time();

			if (!$aResult['no-npi'])
			{
				$iFileID = $oDB->getOne('select nextval(\'file\')');
				if (PEAR::isError($iFileID))
				{
					echo $iFileID->getMessage()."\n";
					exit(-1);
				} 
				$sFileDir = CONST_BasePath.'/export/diff/';
				$sFileDir .= str_pad(floor($iFileID/1000000), 3, '0', STR_PAD_LEFT);
				$sFileDir .= '/'.str_pad(floor($iFileID/1000) % 1000, 3, '0', STR_PAD_LEFT);

				if (!is_dir($sFileDir)) mkdir($sFileDir, 0777, true);
				$sThisIndexCmd .= $sFileDir;
				$sThisIndexCmd .= '/'.str_pad($iFileID % 1000, 3, '0', STR_PAD_LEFT);
				$sThisIndexCmd .= ".npi.out";

				preg_match('#^([0-9]{4})-([0-9]{2})-([0-9]{2})#', $sBatchEnd, $aBatchMatch);
				$sFileDir = CONST_BasePath.'/export/index/';
				$sFileDir .= $aBatchMatch[1].'/'.$aBatchMatch[2];

				if (!is_dir($sFileDir)) mkdir($sFileDir, 0777, true);
				file_put_contents($sFileDir.'/'.$aBatchMatch[3].'.idx', "$sBatchEnd\t$iFileID\n", FILE_APPEND);
			}

			if (!$aResult['no-index'])
			{
				echo "$sThisIndexCmd\n";
				exec($sThisIndexCmd, $sJunk, $iErrorLevel);
				if ($iErrorLevel)
				{
					echo "Error: $iErrorLevel\n";
					exit($iErrorLevel);
				}

				if (!$aResult['no-npi'])
				{
					$sFileDir = CONST_BasePath.'/export/diff/';
					$sFileDir .= str_pad(floor($iFileID/1000000), 3, '0', STR_PAD_LEFT);
					$sFileDir .= '/'.str_pad(floor($iFileID/1000) % 1000, 3, '0', STR_PAD_LEFT);

					$sThisIndexCmd = 'bzip2 -z9 '.$sFileDir.'/'.str_pad($iFileID % 1000, 3, '0', STR_PAD_LEFT).".npi.out";
					echo "$sThisIndexCmd\n";
					exec($sThisIndexCmd, $sJunk, $iErrorLevel);
					if ($iErrorLevel)
					{
						echo "Error: $iErrorLevel\n";
						exit($iErrorLevel);
					}

					rename($sFileDir.'/'.str_pad($iFileID % 1000, 3, '0', STR_PAD_LEFT).".npi.out.bz2",
						$sFileDir.'/'.str_pad($iFileID % 1000, 3, '0', STR_PAD_LEFT).".npi.bz2");
				}
			}

			$sSQL = "INSERT INTO import_osmosis_log values ('$sBatchEnd',$iFileSize,'".date('Y-m-d H:i:s',$fCMDStartTime)."','".date('Y-m-d H:i:s')."','index')";
			var_Dump($sSQL);
			$oDB->query($sSQL);
			echo date('Y-m-d H:i:s')." Completed index step for $sBatchEnd in ".round((time()-$fCMDStartTime)/60,2)." minutes\n";

			$sSQL = "update import_status set lastimportdate = '$sBatchEnd'";
			$oDB->query($sSQL);

			$fDuration = time() - $fStartTime;
			echo date('Y-m-d H:i:s')." Completed all for $sBatchEnd in ".round($fDuration/60,2)." minutes\n";
			if (!$aResult['import-osmosis-all']) exit(0);

			if ( CONST_Replication_Update_Interval > 60 )
			{
				$iSleep = max(0,(strtotime($sBatchEnd)+CONST_Replication_Update_Interval-time()));
			}
			else
			{
				$iSleep = max(0,CONST_Replication_Update_Interval-$fDuration);
			}
			echo date('Y-m-d H:i:s')." Sleeping $iSleep seconds\n";
			sleep($iSleep);
		}

	}

	if ($aResult['import-npi-all'])
	{
		$iNPIID = $oDB->getOne('select max(npiid) from import_npi_log');
		if (PEAR::isError($iNPIID))
		{
			var_dump($iNPIID);
			exit(1);
		}
		$sConfigDirectory = CONST_BasePath.'/settings';
		$sCMDImportTemplate = $sBasePath.'/nominatim/nominatim -d gazetteer -P 5433 -I -T '.$sBasePath.'/nominatim/partitionedtags.def -F ';
		while(true)
		{
			$fStartTime = time();

			$iNPIID++;

			$sImportFile = CONST_BasePath.'/export/diff/';
			$sImportFile .= str_pad(floor($iNPIID/1000000), 3, '0', STR_PAD_LEFT);
			$sImportFile .= '/'.str_pad(floor($iNPIID/1000) % 1000, 3, '0', STR_PAD_LEFT);
			$sImportFile .= '/'.str_pad($iNPIID % 1000, 3, '0', STR_PAD_LEFT);
			$sImportFile .= ".npi";
			while(!file_exists($sImportFile) && !file_exists($sImportFile.'.bz2'))
			{
				echo "sleep (waiting for $sImportFile)\n";
				sleep(10);
			}
			if (file_exists($sImportFile.'.bz2')) $sImportFile .= '.bz2';

			$iFileSize = filesize($sImportFile);
		
			// Import the file
			$fCMDStartTime = time();
			$sCMDImport = $sCMDImportTemplate . $sImportFile;
			echo $sCMDImport."\n";
			exec($sCMDImport, $sJunk, $iErrorLevel);
			if ($iErrorLevel)
			{
				fail("Error: $iErrorLevel\n");
			}
			$sBatchEnd = $iNPIID;
			echo "Completed for $sBatchEnd in ".round((time()-$fCMDStartTime)/60,2)." minutes\n";
			$sSQL = "INSERT INTO import_npi_log values ($iNPIID, null, $iFileSize,'".date('Y-m-d H:i:s',$fCMDStartTime)."','".date('Y-m-d H:i:s')."','import')";
			var_Dump($sSQL);
			$oDB->query($sSQL);
		}
		
	}

	function getosmosistimestamp($sOsmosisConfigDirectory)
	{
		$sStateFile = file_get_contents($sOsmosisConfigDirectory.'/state.txt');
		preg_match('#timestamp=(.+)#', $sStateFile, $aResult);
		return str_replace('\:',':',$aResult[1]);
	}
