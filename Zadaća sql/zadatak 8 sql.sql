use master

use zadacasql2;

create table postolar(
	id int not null primary key identity(1,1),
	ime varchar(50) null,
	oib char(11) null
);
create table obuca(
	id int not null primary key identity(1,1),
	popravak int not null,
	brojobuce int not null,
	marka varchar(50) null
);
create table korisnik(
	id int not null primary key identity(1,1),
	spol bit not null,
	obuca int not null
);
create table popravak(
	id int not null primary key identity(1,1),
	cijena decimal(18,2) null,
	naziv varchar(50) null
);
create table segrt(
	id int not null primary key identity(1,1),
	popravak int not null,
	ime varchar(50) null
);

-- veza izmedju tablica
alter table obuca add foreign key (popravak) references popravak (id);
alter table obuca add foreign key (korisnik) references korisnik (id);
alter table segrt add foreign key (popravak) references popravak (id);