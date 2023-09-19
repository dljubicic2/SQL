-- zadatak 15
use master;
drop database if exists zadacasql;
go
create database zadacasql;
go
use zadacasql;

create table restoran(
	id int not null primary key identity (1,1),
	naziv varchar(50) not null,
	mjesto varchar(50) not null
);
create table kategorija(
	id int not null primary key identity (1,1),
	jelo int not null,
	naziv varchar(50) null
);
create table jelo(
	id int not null primary key identity (1,1),
	pice int not null,
	naziv varchar(50) null,
	vrsta varchar(50) null
);
create table pice(
	id int not null primary key identity (1,1),
	jelo int not null,
	naziv varchar(50) null,
	vrsta varchar(50) null
);

-- veze izme?u tablica
alter table kategorija add foreign key (jelo) references jelo (id);
alter table jelo add foreign key (pice) references pice (id);
alter table pice add foreign key (jelo) references jelo (id);