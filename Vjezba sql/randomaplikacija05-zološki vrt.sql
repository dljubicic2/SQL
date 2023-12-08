create database randomaplikacija05;
use randomaplikacija05;

create table Zivotinja(
	Sifra int not null primary key identity (1,1),
	Vrsta varchar(50),
	Naziv varchar(50),
	Djelatnik int not null,
	Prostorija int not null,
	Datum int not null
);

create table Djelatnik(
	Sifra int not null primary key identity(1,1),
	Ime varchar(50),
	Prezime varchar(50),
	Oib char(11)
);

create table Prostorija(
	Sifra int not null primary key identity (1,1),
	Dimenzije varchar(30),
	MaksBroj int,
	Mjesto varchar(50)
);

create table Datum(
	DatumRodenja datetime,
	DatumDolaska datetime,
	DatumSmrti datetime
);

alter table Zivotinja add foreign key (Djelatnik) references Djelatnik (Sifra);
alter table Zivotinja add foreign key (Prostorija) references Prostorija (Sifra);


insert into Zivotinja(Vrsta, Naziv, Djelatnik, Prostorija, Datum)
values('sisavac','lemur',1,1,1);

insert into Djelatnik(Ime, Prezime, Oib)
values('Ivo','Ivić','44556113248');

insert into Prostorija(Dimenzije, MaksBroj, Mjesto)
values('7x5',3,'Dvorište');

insert into Datum(DatumRodenja,DatumDolaska,DatumSmrti)
values('04-04-2018','05-7-2018','08-07-2023');