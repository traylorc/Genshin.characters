/*
create database GenshinImpactDb;
*/
/*
use GenshinImpactDb;
*/
/*
create table Characters (
				Id int primary key identity(1,1),
				Name varchar(30) not null,
				Region varchar(50)
                         );
*/
/*
create table Elements (
				Id int primary key identity(1,1),
				CharacterId int not null foreign key references Characters(Id),
				Element varchar(20) not null,
				       );
*/
/*
create table Weapons (
				Id int primary key identity(1,1),
				CharacterId int not null foreign key references Characters(Id),
				WeaponType varchar (20) not null
					 );
*/

select c.Name, c.Region, e.Element, w.WeaponType
	from Characters c
		join Elements e
			on c.id = e.characterId
		join Weapons w
			on c.id = w.characterId


