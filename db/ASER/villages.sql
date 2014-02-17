DROP TABLE IF EXISTS villages CASCADE;
CREATE TABLE villages (
  `id` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `villagename` varchar(100) NOT NULL,
  `tehsil` varchar(50),
  `QH` varchar(50),
  `PC` varchar(50),
  `UC` varchar(50),
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'D:\\Dropbox\\Jugnoo Local\\ASER Raw\\villages.csv' INTO table villages
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
	id,
	districtid,
	villagename,
	tehsil,
	QH,
	PC,
	UC
);
commit;
select * from villages;