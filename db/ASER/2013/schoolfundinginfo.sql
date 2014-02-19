DROP TABLE IF EXISTS schoolfundinginfo CASCADE;
CREATE TABLE schoolfundinginfo (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`surveyid` varchar(50) NOT NULL,
	`schooltype` int(2),
	`formtype` int(2),
	`fundtype` varchar(50),
	`fundsreceived` tinyint unsigned,
	`fundamount` int(15),
	`fundgrantmonth` int(2),
	`fundfullyspent` tinyint unsigned,
	`emiscode` varchar(25),
	PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOAD DATA INFILE 'D:\\Dropbox\\Jugnoo Local\\ASER Raw\\schoolfundinginfo.csv' INTO table schoolfundinginfo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(
	@id,
	surveyid,
	schooltype,
	formtype,
	@fundtype,
	@fundsreceived,
	@fundamount,
	@fundgrantmonth,
	@fundfullyspent,
	@emiscode
)
set id = null,
	fundtype = nullif(@fundtype, ''),
	fundsreceived = ( CASE WHEN @fundsreceived = 1 THEN 1 WHEN @fundsreceived = 0 THEN 0 WHEN @fundsreceived = '' THEN 0 END ),
	fundamount = nullif(@fundamount,''),
	fundgrantmonth = nullif(@fundgrantmonth, ''),
	fundfullyspent = ( CASE WHEN @fundfullyspent = 1 THEN 1 WHEN @fundfullyspent = 0 THEN 0 WHEN @fundfullyspent = '' THEN 0 END ),
    emiscode = nullif(@emiscode, '');
commit;
select * from schoolfundinginfo;