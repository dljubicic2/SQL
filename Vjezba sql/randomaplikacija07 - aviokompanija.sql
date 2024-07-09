create database randomaplikacija07;
use randomaplikacija07;

create table Putnik(
	Sifra int not null primary key identity(1,1),
	Ime varchar(50),
	Prezime varchar(50),
	Tezina_Prtljage int 
);

create table Zrakoplov(
	Sifra int not null primary key identity(1,1),
	Broj_Sjedala int,
	Proizvodjac varchar(100),
	Model varchar(100),
	Broj_Posade int
);

create table Let(
	Sifra int not null primary key identity(1,1),
	Putnik int not null,
	Zrakoplov int not null,
	Naziv varchar(50),
	Broj_Putnika int,
	Vrijeme_Polijetanja datetime,
	Vrijeme_Slijetanja datetime
);


alter table Let add foreign key (Putnik) references Putnik (Sifra);
alter table Let add foreign key (Zrakoplov) references Zrakoplov (Sifra);