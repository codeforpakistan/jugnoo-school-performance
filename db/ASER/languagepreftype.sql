DROP TABLE IF EXISTS languagepreferencetype CASCADE;
CREATE TABLE languagepreferencetype (
  `LanguagePrefId` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  PRIMARY KEY  (`LanguagePrefId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into languagepreferencetype values (1,"English");
insert into languagepreferencetype values (2,"Urdu");
insert into languagepreferencetype values (3,"Local");
commit;