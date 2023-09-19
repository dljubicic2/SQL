-- zadatak 7
use zadacasql;
create table taksi(
	naziv varchar(50),
	mjesto varchar(50),
	brojvozila int
);
create table vozilo(
	marka varchar(50),
	vozac varchar(50),
	starost int
);
create table vozac(
	ime varchar(50),
	prezime varchar(50),
	vozilo varchar(50)
);
create table vožnja(
	cijena decimal(18,2),
	dužina int,
	vozilo varchar(50)
);
create table putnik(
	ime varchar(50),
	prezime varchar(50),
	oib char(11)
);