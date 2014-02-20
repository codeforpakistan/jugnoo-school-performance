DROP TABLE IF EXISTS householdparents CASCADE;
CREATE TABLE householdparents (
 `id` int(11) NOT NULL,
 `householdid` int(11) NOT NULL,
 `motherAge` int(2),
 `motherschooling` tinyint UNSIGNED,
 `mothergraduated` varchar(10),
 `fatherage` int(2),
 `fatherschooling` tinyint UNSIGNED,
 `fathergraduated` varchar(10),
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'householdparents.csv' INTO table householdparents
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
	id,
	householdid,
	@motherAge,
	@motherschooling,
	mothergraduated,
	@fatherage,
	@fatherschooling,
	fathergraduated
)
SET motherschooling = ( CASE WHEN @motherschooling = -1 THEN 1 WHEN @motherschooling = 0 THEN 0 END ),
	fatherschooling = ( CASE WHEN @fatherschooling = -1 THEN 1 WHEN @fatherschooling = 0 THEN 0 END ),
	motherAge = NULLIF(@motherAge,''),
	fatherage = NULLIF(@fatherage,'');
commit;
select * from householdparents;