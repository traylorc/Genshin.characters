-- Create Database for new project


use master;

drop database GenshinImpactDb;

create database GenshinImpactDb;

use GenshinImpactDb;


-- Create table for Characters

use GenshinImpactDb
	create table Characters
		(Id int primary key identity(1,1),
			Name varchar(30) not null,
				Region varchar(50) not null default 'Mondstadt',
					Ranking int not null default 4
					
									
		);


-- Create table for Elements

create table Elements
	(Id int primary key identity(1,1),
		CharacterId int not null foreign key references Characters(Id),
			Element varchar(20) not null, 

	);



-- Create weapons table

create table Weapons
	(Id int primary key identity(1,1),
		CharacterId int not null foreign key references Characters(Id),
			WeaponType varchar(20) not null
	);


use GenshinImpactDb

insert into Characters(Name,Ranking)
	values ('Albedo',5);

insert into Characters(Name)
	values ('Amber');

insert into Characters(Name)
	values ('Barbara');

insert into Characters
	(Name, Ranking)
	values ('Diluc', 5);

insert into Characters(Name, Region,Ranking)
	values ('Ganyu','Liyue',5);





