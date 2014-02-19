DROP TABLE IF EXISTS queryformtypes CASCADE;
CREATE TABLE queryformtypes (
	`id` int(11) NOT NULL,
	`hhid` varchar(50) NOT NULL
	PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'D:\\Dropbox\\Jugnoo Local\\ASER Raw\\queryformtypes.csv' INTO table queryformtypes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
	id,
	hhid
);
commit;
select * from queryformtypes;