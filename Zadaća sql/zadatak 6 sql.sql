-- zadatak 6
use master;
drop database if exists zadacasql;
create database zadacasql;
use zadacasql;
create table samostan(
	naziv varchar(50),
	mjesto varchar(50),
	starost int
);
create table svecenik(
	ime varchar(50),
	prezime varchar(50),
	dob int
);
create table nsvecenik(
	ime varchar(50),
	prezime varchar(50),
	svecenik varchar(50)
);
create table posao(
	naziv varchar(50),
	vrsta varchar(50),
	trajanje decimal(18,2)
);
