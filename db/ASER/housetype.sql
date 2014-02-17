DROP TABLE IF EXISTS housetype CASCADE;
CREATE TABLE housetype (
  `HouseTypeId` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  PRIMARY KEY  (`HouseTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into housetype values (1,"Kutcha");
insert into housetype values (2,"Semi Pucca");
insert into housetype values (3,"Pucca");
commit;