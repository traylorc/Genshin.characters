-- Create Database for new project

/*
use master;

drop database GenshinImpactDb;

create database GenshinImpactDb;

use GenshinImpactDb;

*/
-- Create table for Characters

use GenshinImpactDb
	create table Characters
		(Id int primary key identity(1,1),
			Name varchar(30) not null,
				Region varchar(50) null default 'Mondstadt',
					Location varchar(80) null,
						Ranking int not null default 4
							
									
		);


-- Create table for Elements

create table Elements
	(Id int primary key identity(1,1),
			Element varchar(20) not null

	);



-- Create weapons table

create table Weapons
	(Id int primary key identity(1,1),
		CharacterId int not null foreign key references Characters(Id),
			WeaponType varchar(20) not null
	);




alter table Characters
	add ElementsId int null foreign key references Elements(Id);




Begin Transaction;

insert into Characters(Name,Location, Ranking)
	values ('Albedo','Wyrmrest Valley',5);

insert into Characters(Name, Location)
	values ('Amber','Mondstadt');

insert into Characters(Name, Location)
	values ('Barbara','Mondstadt');

insert into Characters(Name,Region,Location)
	values ('Beidou', 'Inazuma','Guyun Stone Forest');
insert into Characters(Name, Location)
	values ('Bennett','Mondstadt');

insert into Characters(Name, Location, Ranking)
	values ('Diluc', 'Dawn Winery', 5);

insert into Characters(Name,Region,Location,Ranking)
	values ('Ganyu','Liyue','Liyue Harbor',5);

commit transaction;

select * from Elements
select * from Characters



insert into Characters(Name,Location,Ranking)
	values ('Jean','Mondstadt',5);






insert into  Elements
	(Element)
		values
	('Anemo');

insert into  Elements
	(Element)
		values
	('Geo');

insert into  Elements
	(Element)
		values
	('Cryo');

insert into  Elements
	(Element)
		values
	('Pyro');

insert into  Elements
	(Element)
		values
	('Electro');

insert into  Elements
	(Element)
		values
	('Hydro');



