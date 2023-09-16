use master;

create database autooglasnik03;
use autooglasnik03;

create table Upit (
	Sifra int not null primary key identity (1,1),
	Oglas int not null,
	Pitanje varchar(250) null,
	Osoba int not null,
	Vozilo int not null
);
create table Osoba (
	Sifra int not null primary key identity (1,1),
	Nadimak varchar(50) null,
	Email varchar(50) null,
	Lozinka varchar(20) null,
);
create table Oglas (
	Sifra int not null primary key identity (1,1),
	Naslov varchar(250) null,
	Opis varchar(250) null,
	Osoba int not null,
	Cijena decimal (18,2) null
);
create table Vozilo (
	Sifra int not null primary key identity (1,1),
	Vrsta varchar(50) null,
	Marka varchar(50) null,
	Model varchar(50) null,
	Pogon varchar(50) null,
	Godiste datetime null,
	Kilometraza int null,
	Osoba int not null
);

-- veze izme?u tablica

alter table Upit add foreign key (Osoba) references Osoba (Sifra);
alter table Oglas add foreign key (Osoba) references Osoba (Sifra);
alter table Vozilo add foreign key (Osoba) references Osoba (Sifra);
alter table Upit add foreign key (Oglas) references Oglas (Sifra);

-- inserti u tablicu

insert into Osoba (Nadimak,Email,Lozinka)
values ('Ante66','ante66@gmail.com','antisa2'),
('Miloradcar23','milorad23@gmail.com','mina123'),
('Autoplacremix','remix@gmail.com','remix33'),
('Marina123','marina123@gmail.com','inarina007'),
('Saracautokuca','sarac@gmail.com','autokuca');

insert into Vozilo (Vrsta,Marka,Model,Pogon,Godiste,Kilometraza,Osoba)
values ('kupe','Mazda','RX7','benzin','1992-05-21',106.000,4),
('sedan','Audi','A6','dizel','2019-11-15',28.987,1),
('karavan','Volkswagen','Passat','dizel','2008-02-15',179.000,5),
('monovolumen','Renult','Espace','dizel','2017-04-2',64.500,2),
('SUV','Jaguar','F-Pace','benzin','2020-01-13','29.980',3);

insert into Oglas (Vozilo,Naslov,Opis,Osoba,Cijena)
values (4,'Renault Espace INITIALE PARIS 1.6 DCI','Vozilo vozilo jedan vlasnik, cijena bez prijenosa vlasništva',1,'23.000'),
(1,'Mazda RX7 Turbo 2','U dobrom stanju, cijena fiksna',2,'15.950'),
(5,'Jaugar F-Pace SVR AWD','Kuka za prikolicu, el. retrovizori, funcija memorije i ambijentalna svijetla, automobil maksmialno ocuvan',3,'69.599'),
(2,'Audi A6 40 TDI SPORT QUATTRO S LINE','Besprijekorno stanje, servisi odradjeni',4,'36.990'),
(3,'Vokswagen Passat Variant 2.0 TDI Higline','Odradjen kompletan servis, originalnih 179.000 km',5,'4.500');

insert into Upit (Oglas,Pitanje,Osoba)
values (3,'da li je vozilo jos dostupno',2),
(1,'mozete li mi poslati jos slika',5),
(5,'Zanima me kilometraža vozila i ispravnost vozila',3),
(2,'Postovani da li je klima ispravna',1),
(3,'Da li je to zadnja cijena',4);
