--Join Genshin Tables

use GenshinImpactDb;

select c.Name, c.Region, e.Element,w.WeaponType 
from Characters c
join Elements e
on c.Id = e.CharacterId
join Weapons w
on c.Id = w.CharacterId;

select * from Characters