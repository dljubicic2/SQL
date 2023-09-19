-- zadatak 5
use database zadacasql;
create table muzej(
	naziv varchar(50),
	ulaznica decimal(18,2),
	mjesto varchar(50)
);
create table kustos(
	ime varchar(50),
	prezime varchar(50),
	izložba varchar(50)
);
create table izlozba(
	djelo varchar(50),
	sponzor varchar(50),
	naziv varchar (50)
);
create table djelo(
	naziv varchar(50),
	izlozba varchar(50),
	vrijednost decimal(18,2)
);