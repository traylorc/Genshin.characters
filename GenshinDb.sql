-- Create Database for new project


use master;

drop database GenshinImpactDb;

create database GenshinImpactDb;

use GenshinImpactDb;

-- Create table for Elements

create table Elements
	(Id int primary key identity(1,1),
			Element varchar(20) not null

	);

-- Create weapons table

create table Weapons
	(Id int primary key identity(1,1),
		WeaponType varchar(20)
     			
	);

-- Create table for Characters

use GenshinImpactDb
	create table Characters
		(Id int primary key identity(1,1),
			Name varchar(30) not null,
				Region varchar(50) null default 'Mondstadt',
					Location varchar(80) null,
						Ranking int not null default 4,
							WeaponId int null foreign key references Weapons(Id),
								ElementsId int null foreign key references Elements(Id)
							
									
		);

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

	insert into Weapons (WeaponType)
		values ('Longsword');
	insert into Weapons (WeaponType)
		values ('Claymore');
	insert into Weapons (WeaponType)
		values ('Polearm');
	insert into Weapons (WeaponType)
		values ('Bow');
	insert into Weapons (WeaponType)
		values ('Catalyst');



Begin Transaction;

insert into Characters(Name,Location, Ranking, WeaponId, ElementsId)
	values ('Albedo','Wyrmrest Valley',5, 1, 2);

insert into Characters(Name, Location, WeaponId, ElementsId)
	values ('Amber','Mondstadt', 4, 4);

insert into Characters(Name, Location, WeaponId, ElementsId)
	values ('Barbara','Mondstadt', 5, 6);

insert into Characters(Name,Region,Location, WeaponId, ElementsId)
	values ('Beidou', 'Inazuma','Guyun Stone Forest', 2, 5);

insert into Characters(Name, Location, WeaponId, ElementsId)
	values ('Bennett','Mondstadt', 1, 4);

insert into Characters(Name, Region, Location, Ranking, WeaponId, ElementsId)
	values ('Xiao', 'Liyue', 'Wangshu Inn', 5, 3, 1);

insert into Characters(Name,Region,Location,Ranking, WeaponId, ElementsId)
	values ('Ganyu','Liyue','Liyue Harbor',5, 4, 3);

commit transaction;



insert into Characters(Name,Location,Ranking, WeaponId, ElementsId)
	values ('Jean','Mondstadt',5, 1, 1);








