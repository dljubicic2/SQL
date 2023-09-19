-- zadatak 11
use master
use zadacasql;
go
create table student(
	id int not null primary key identity(1,1),
	ime varchar(50) null,
	prezime varchar(50) null,
	jmbag char(10) not null
);
create table kolegij(
	id int not null primary key identity (1,1),
	naziv varchar(50) not null,
	ects int not null,
	opis varchar(50) null
);
create table rok(
	id int not null primary key identity(1,1),
	naziv varchar(50) not null,
	datumpocetka datetime not null,
	datumzavrsetka datetime not null
);
create table studentkolegij(
	id int not null primary key identity(1,1),
	student int not null,
	kolegij int not null,
	rok int not null
);

-- veze izme?u tablica
alter table studentkolegij add foreign key (student) references student (id);
alter table studentkolegij add foreign key (kolegij) references kolegij (id);
alter table studentkolegij add foreign key (rok) references rok (id);