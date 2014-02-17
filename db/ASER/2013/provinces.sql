DROP TABLE IF EXISTS provinces CASCADE;
CREATE TABLE provinces (
  `id` int(11) NOT NULL,
  `pcode` int(11) NOT NULL,
  `provincename` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into provinces values (2,01,"Punjab");
insert into provinces values (3,02,"Sindh");
insert into provinces values (4,03,"Balochistan");
insert into provinces values (5,04,"Khyber Pukhtoonkhawa");
insert into provinces values (6,05,"Gilgit-Baltistan");
insert into provinces values (7,06,"AJK");
insert into provinces values (8,07,"Islamabad - ICT");
insert into provinces values (9,08,"Fata");
insert into provinces values (11,09,"Urban");
commit;