DROP TABLE IF EXISTS districts CASCADE;
CREATE TABLE districts (
  `id` int(11) NOT NULL,
  `dcode` int(11) NOT NULL,
  `districtname` varchar(50) NOT NULL,
  `provinceid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'D:\\Dropbox\\Jugnoo Local\\ASER Raw\\districts.csv' INTO table districts
FIELDS TERMINATED BY ','
(
	id,
	dcode,
	districtname,
	provinceid
);
commit;
select * from districts;