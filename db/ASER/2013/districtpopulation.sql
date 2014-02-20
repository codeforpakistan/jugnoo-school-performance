DROP TABLE IF EXISTS districtpopulation CASCADE;
CREATE TABLE districtpopulation (
	id int(11) NOT NULL auto_increment,
	name varchar(25),
	provinceid int(2),
	population int(10),
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'districtpopulation.csv' INTO table districtpopulation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
	@id,
	@name,
	provinceid,
	population
)
set id = null,
	name = upper(@name);
commit;
select * from districtpopulation;