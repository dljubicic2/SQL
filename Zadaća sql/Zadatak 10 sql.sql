use master
use zadacasql;
go
-- zadatak 10
create table doktor(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	ordinacija varchar(50) not null
);
create table pacijent(
	id int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	bolest varchar(50) not null
);
create table medicinskasestra(
	id int not null primary key identity(1,1),
	ime varchar(50) null,
	prezime varchar(50) null
);
create table lijecenje(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	pacijent int not null,
	datum datetime not null
);

-- veza izmedju tablice
alter table lijecenje add foreign key (pacijent) references pacijent (id);