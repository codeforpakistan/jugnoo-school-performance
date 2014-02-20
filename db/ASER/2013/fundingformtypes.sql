DROP TABLE IF EXISTS fundingformtypes CASCADE;
CREATE TABLE fundingformtypes (
	`id` int(11) NOT NULL,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'fundingformtypes.csv' INTO table fundingformtypes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
	id,
	name
);
commit;
select * from fundingformtypes;