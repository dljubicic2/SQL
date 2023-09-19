-- Vježbanje zološki vrt
use master;
create database zoloskivrt;
go
use zoloskivrt;

create table zivotinja(
	id int not null primary key identity (1,1),
	vrsta varchar(50) not null,
	ime varchar(50) not null,
	djelatnik int not null,
	prostorija int not null,
	datum int not null
);
create table djelatnik(
	id int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	iban varchar(50) null
);
create table prostorija(
	id int not null primary key identity (1,1),
	dimenzije varchar(30) null,
	maksbroj int null,
	mjesto varchar(30) not null
);
create table datum(
	id int not null primary key identity (1,1),
	drodenja datetime not null,
	ddolaska datetime not null,
	dsmrti datetime not null 
);

-- veze izme?u ?lanova
alter table zivotinja add foreign key (djelantik) references djelatnik (id);
alter table zivotinja add foreign key (prostorija) references prostorija (id);
alter table zivotinja add foreign key (datum) references datum (id);

-- Promjena unutar tablice

insert into djelatnik (ime,prezime,iban)
values ('Marica','Maric','457914467714905277'),
('Ante','Antic','222456245593682259'),
('Tanja','Tanjic','456789000115673890');

insert prostorija (dimenzije,maksbroj,mjesto)
values ('4x5','7','Split'),
('2x2','3','Koprivnica'),
('7x9','8','Osijek');

insert into datum (drodenja,ddolaska,dsmrti)
values ('2021-08-11 16:34','2021-11-23 11:30','2023-03-16 8:00'),
('2015-06-04 12:25','2016-08-27 14:45','2020-09-12 15:18'),
('2017-02-16 22:10','2017-10-17 9:00','2023-04-15 18:22');

insert into zivotinja (vrsta,ime,djelatnik,prostorija,datum)
values ('tigar','Janko',1,1,1),
('lav','Emira',2,2,2),
('kornjaca','Leona',3,3,3);

-- Brisanje unutar tablice

delete from prostorija where id=3;

delete from datum where id=1;

delete from djelatnik where id=2;