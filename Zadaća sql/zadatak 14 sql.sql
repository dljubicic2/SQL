-- zadatak 14
use master
drop database if exists zadacasql;
go
create database zadacasql;
go
use zadacasql;

create table trgovackicentar(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	mjesto varchar(50) not null
);
create table trgovina(
	id int not null primary key identity(1,1),
	zaposlenik int not null,
	naziv varchar(50) not null,
	vrsta varchar(50) not null
);
create table zaposlenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11) null
);
create table sef(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null
);
create table seftrgovina(
	trgovina int not null,
	sef int not null
);

-- veze izme?u tablica

alter table trgovina add foreign key (zeposlenik) references zaposlenik(id);
alter table seftrgovina add foreign key (trgovina) references trgovina (id);
alter table seftrgovina add foreign key (sef) references sef (id);