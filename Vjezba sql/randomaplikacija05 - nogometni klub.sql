create database randomaplikacija06;
use randomaplikacija06;

create table Igrac(
	Sifra int not null primary key identity(1,1),
	Ime varchar(50),
	Prezime varchar(50),
	Broj_Dresa int not null,
	Visina int not null
);

create table Menadzer(
	Sifra int not null primary key identity(1,1),
	Ime varchar(50),
	Prezime varchar(50)
);

create table Ugovor(
	Sifra int not null primary key identity(1,1),
	Cijena decimal(14,2),
	Igrac int not null,
	Menadzer int not null
);

alter table Ugovor add foreign key (Igrac) references Igrac (Sifra);
alter table Ugovor add foreign key (Menadzer) references Menadzer (Sifra);

insert into Igrac (Ime,Prezime,Broj_Dresa,Visina)
values('John','Johnson',12,175),
('Majk','Broforce',8,168),
('Ante','Mihalj',10,180);

insert into Menadzer (Ime,Prezime)
values('Ante','Antić'),
('Xying','Lyong'),
('Jason','Timberlane');

insert into Ugovor (Cijena,Igrac,Menadzer)
values(123.000,1,2),
(500.000,2,1),
(150.000,3,2);