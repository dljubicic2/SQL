create database zadacasql;
use zadacasql;
create table frizerski(
	naziv varchar(50),
	radnovrijeme decimal(18,2),
	mjesto varchar(50)
);
create table korisnik(
	ime varchar(50),
	prezime varchar(50),
	kosa varchar(50)
);
create table usluga(
	cijena decimal(18,2),
	naziv varchar(50),
	korinsik varchar(50)
);