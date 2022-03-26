/* Following query took 260 minutes on the server */
TRUNCATE lgd_stat_datatype;
INSERT INTO
	lgd_stat_datatype
SELECT
	k,
	SUM(1) AS count_total,
	SUM(CASE WHEN lgd_tryparse_int(v) IS NOT NULL THEN 1 ELSE 0 END) AS count_int,
	SUM(CASE WHEN lgd_tryparse_float(v) IS NOT NULL THEN 1 ELSE 0 END) AS count_float,
	SUM(CASE WHEN lgd_tryparse_boolean(v) IS NOT NULL THEN 1 ELSE 0 END) as count_boolean
FROM
	lgd_tags
GROUP BY
	k;

	
	

/* Based on the stats, determine the best matching datatyp */
/* DROP TABLE IF EXISTS lgd_tags_datatypes; */
TRUNCATE lgd_map_datatype;
INSERT INTO
	lgd_map_datatype
SELECT
	k, datatype
FROM (
	SELECT
		k,
		(CASE WHEN a_error_boolean < 5000 AND r_error_boolean < 0.01 THEN lgd_datatype('boolean') ELSE
			(CASE WHEN a_error_int < 5000 AND r_error_int < 0.01 THEN lgd_datatype('int') ELSE
				(CASE WHEN a_error_float < 5000 AND r_error_float < 0.01 THEN lgd_datatype('float') END)
			END)
		END) datatype
	FROM
		lgd_stat_datatype_error) x
WHERE
	datatype IS NOT NULL;

