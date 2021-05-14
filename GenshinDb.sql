-- Create Database for new project
/*
create database GenshinImpactDb;
*/

-- Create table for Characters
/*
use GenshinImpactDb
	create table Characters
		(Id int primary key identity(1,1),
			Name varchar(30) not null,
				Region varchar(50), 
					
									
		);
*/

-- Create table for Elements
/*
create table Elements
	(Id int primary key identity(1,1),
		CharacterId int not null foreign key references Characters(Id),
			Element varchar(20) not null, 

	);

*/

-- Create weapons table
/*
create table Weapons
	(Id int primary key identity(1,1),
		CharacterId int not null foreign key references Characters(Id),
			WeaponType varchar(20) not null
	);
*/
/*
use GenshinImpactDb

insert into Characters
	(Name, Region)
	values ('Diluc', 'Mondstadt');
*/
/*
use GenshinImpactDb;

insert into Characters(Name, Region)
	values ('Ganyu','Liyue');
*/
