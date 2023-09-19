--use master;
use zoloskivrt;

select * from zivotinja;

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

-- Promjena tablice

select * from djelatnik;

update djelatnik set ime='Marta'
where id=1;

update prostorija set maksbroj=4
where id=2;

update datum set dsmrti='2022 07-23 15:15:00'
where id=3;

-- Brisanje u tablici

select from * prostorija;

delete from prostorija where id=1002;
delete from prostorija where id=1003;
delete from prostorija where id=1004;

delete from djelatnik where id=1002;
delete from djelatnik where id=1003;
delete from djelatnik where id=1004;

delete from datum where id=1002;
delete from datum where id=1003;
delete from datum where id=1004;
delete from datum where id=1005;
delete from datum where id=1006;
delete from datum where id=1007;

delete from prostorija where id=3;

delete from datum where id=1;

delete from djelatnik where id=2;

