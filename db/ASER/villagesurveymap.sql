DROP TABLE IF EXISTS villagemapsurvey CASCADE;
CREATE TABLE villagemapsurvey (
  `id` int(11) NOT NULL,
  `villageid` int(11) NOT NULL,
  `surveyor1` varchar(100),
  `surveyor2` varchar(100),
  `totalhousehold` int(11),
  `population` int(11),
  `ispostoffice` tinyint UNSIGNED,
  `isbank` tinyint UNSIGNED,
  `ispco` tinyint UNSIGNED,
  `iscomputercenter` tinyint UNSIGNED,
  `ishealthfacility` tinyint UNSIGNED,
  `iscarpetedroad` tinyint UNSIGNED,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'D:\\Dropbox\\Jugnoo Local\\ASER Raw\\villagemapsurvey.csv' INTO table villagemapsurvey
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
  id,
  villageid,
  surveyor1,
  surveyor2,
  @totalhousehold,
  @population,
  @ispostoffice,
  @isbank,
  @ispco,
  @iscomputercenter,
  @ishealthfacility,
  @iscarpetedroad
)
SET totalhousehold = nullif(@totalhousehold,''),
	population = nullif(@population,''),
	ispostoffice = ( CASE WHEN @ispostoffice = -1 THEN 1 WHEN @ispostoffice = 0 THEN 0 END ),
	isbank = ( CASE WHEN @isbank = -1 THEN 1 WHEN @isbank = 0 THEN 0 END ),
	ispco = ( CASE WHEN @ispco = -1 THEN 1 WHEN @ispco = 0 THEN 0 END ),
	iscomputercenter = ( CASE WHEN @iscomputercenter = -1 THEN 1 WHEN @iscomputercenter = 0 THEN 0 END ),
	ishealthfacility = ( CASE WHEN @ishealthfacility = -1 THEN 1 WHEN @ishealthfacility = 0 THEN 0 END ),
	iscarpetedroad  = ( CASE WHEN @iscarpetedroad = -1 THEN 1 WHEN @iscarpetedroad = 0 THEN 0 END );
commit;
select * from villagemapsurvey;