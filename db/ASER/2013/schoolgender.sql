DROP TABLE IF EXISTS schoolgender CASCADE;
CREATE TABLE schoolgender (
  id int(3) NOT NULL,
  gender varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO schoolgender VALUES ( 0,"Other" );
INSERT INTO schoolgender VALUES ( 1,"Boys School" );
INSERT INTO schoolgender VALUES ( 2,"Girls School" );
INSERT INTO schoolgender VALUES ( 3,"Boys and Girls School" );
commit;
select * from schoolgender;