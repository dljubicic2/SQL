use master
use zadacasql
go
-- zadatak 9
create table urar(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	mjesto varchar(50) not null,
	oib char(11) null
);
create table sat(
	id int not null primary key identity(1,1),
	vrsta varchar(50) not null,
	naziv varchar(50) null,
	materijal varchar(50) null
);
create table korisnik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	sat int not null,
	spol bit null
);
create table popravak(
	id int not null primary key identity(1,1),
	cijena decimal(18,2) not null,
	naziv varchar(50) null,
	sat int not null
);

-- veze izmedju tablica
alter table korisnik add foreign key (sat) references sat (id);
alter table popravak add foreign key (sat) references sat (id);