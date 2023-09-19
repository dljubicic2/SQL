-- zadatak 13
use master
drop database if exists zadacasql;
go
create database zadacasql;
use zadacasql;

create table predavanje(
	id int not null primary key identity(1,1),
	razred int not null,
	predmet varchar(50) not null,
	naziv varchar(50) null
);
create table razred(
	id int not null primary key identity(1,1),
	ucenik int not null,
	profesor int not null,
	brojdvorane int null
);
create table ucenik(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	brojuimeniku int not null
);
create table profesor(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null
);

-- veze između tablica

alter table predavanje add foreign key (razred) references razred(id);
alter table razred add foreign key (ucenik) references ucenik(id);
alter table razred add foreign key (profesor) references profesor(id);