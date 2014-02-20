DROP TABLE IF EXISTS household CASCADE;
CREATE TABLE household (
  `id` int(11) NOT NULL,
  `villagemapsurveyid` int(11) NOT NULL,
  `familyhead` varchar(100), 
  `surveyor1` varchar(100),
  `surveyor2` varchar(100),
  `housetype` int(11),
  `ishouseowned` tinyint UNSIGNED,
  `iselectricity` tinyint UNSIGNED,
  `istoilet` tinyint UNSIGNED,
  `ismobile` tinyint UNSIGNED,
  `istvavailable` tinyint UNSIGNED,
  `nearestschool` varchar(10),
  `spokenlanguage` varchar(50),
  `prefmedium` int(1) UNSIGNED,
  `iscomputerlit` tinyint UNSIGNED,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'household.csv' INTO table household
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
  id,
  villagemapsurveyid,
  familyhead,
  surveyor1,
  surveyor2,
  housetype,
  @ishouseowned,
  @iselectricity,
  @istoilet,
  @ismobile,
  @istvavailable,
  nearestschool,
  spokenlanguage,
  prefmedium,
  @iscomputerlit
)
SET ishouseowned = ( CASE WHEN @ishouseowned = -1 THEN 1 WHEN @ishouseowned = 0 THEN 0 END ),
	iselectricity = ( CASE WHEN @iselectricity = -1 THEN 1 WHEN @iselectricity = 0 THEN 0 END ),
	istoilet = ( CASE WHEN @istoilet = -1 THEN 1 WHEN @istoilet = 0 THEN 0 END ),
	ismobile = ( CASE WHEN @ismobile = -1 THEN 1 WHEN @ismobile = 0 THEN 0 END ),
	istvavailable = ( CASE WHEN @istvavailable = -1 THEN 1 WHEN @istvavailable = 0 THEN 0 END ),
	iscomputerlit  = ( CASE WHEN @iscomputerlit = -1 THEN 1 WHEN @iscomputerlit = 0 THEN 0 END );
commit;
select * from household;