DROP TABLE IF EXISTS schoolmedium CASCADE;
CREATE TABLE schoolmedium (
  id int(3) NOT NULL,
  gender varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO schoolmedium VALUES ( 0,"Other" );
INSERT INTO schoolmedium VALUES ( 1,"English" );
INSERT INTO schoolmedium VALUES ( 2,"Urdu" );
INSERT INTO schoolmedium VALUES ( 3,"Pashtu" );
INSERT INTO schoolmedium VALUES ( 4,"Sindhi" );
commit;
select * from schoolmedium;