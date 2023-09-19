use zadacasql;
use zadacasql;
-- zadatak 2
create table salon(
	naziv varchar(50),
	radnovrijeme decimal(18,2),
	mjesto varchar(50)
);
create table djelatnica(
	ime varchar(50),
	prezime varchar(50),
	korisnik varchar(50)
);
create table korisnik(
	ime varchar(50),
	prezime varchar(50),
	usluga varchar(50)
);
create table usluga(
	cijena decimal(18,2),
	naziv varchar(50),
	korisnik varchar(50)
);