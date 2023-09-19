-- zadatak 3
use zadacasql
create table udruga(
	naziv varchar(50),
	mjesto varchar(50),
	budzet decimal(18,2)
);
create table životinja(
	vrsta varchar(50),
	spol varchar,
	dob int
);
create table prostor(
	zivotinja varchar(50),
	sirina decimal(18,2),
	duzina decimal(18,2)
);
