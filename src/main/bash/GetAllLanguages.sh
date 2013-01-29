#!/bin/bash
curl "http://translatewiki.net/w/i.php?title=Special:MessageGroupStats&group=out-osm-site" | sed -n -r 's|.*language=([^;"]+).*|\1|p'
