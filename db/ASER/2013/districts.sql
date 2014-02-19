DROP TABLE IF EXISTS districts CASCADE;
CREATE TABLE districts (
  `id` int(11) NOT NULL,
  `dcode` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pcode` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'D:\\Dropbox\\Jugnoo Local\\ASER Raw\\districts.csv' INTO table districts
FIELDS TERMINATED BY ','
(
	id,
	dcode,
	@name,
	pcode
)
set name = upper(@name);
commit;
select * from districts;