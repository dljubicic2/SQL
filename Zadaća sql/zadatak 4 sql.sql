-- zadatak 4
use database zadacasql;

create table vrtic(
	naziv varchar(50),
	cijena decimal(18,2),
	verificiran bit
);
create table djete(
	ime varchar(50),
	prezime varchar(50),
	oib char(11)
);
create table skupina(
	naziv varchar(50),
	datumpocetka datetime,
	dvorana int
);
