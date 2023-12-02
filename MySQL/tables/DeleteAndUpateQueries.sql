use mysql;
show tables;

select * from clown_info;

INSERT into clown_info VALUES ('Zippo','Millstone mall','F, orange suit, baggy pants','singing');

INSERT INTO clown_info VALUES('Snuggles', 'Ball mart', 'F, Yellow shirt, baggy blue pants','horn, umbrella');

INSERT INTO clown_info VALUES('Bonzo', ' Dickson park','M, In drag, polka dot dress','singing, dancing');

insert into clown_info VALUES('Sniffles', 'Tracy''s', 'M, green, purple suit, pointy nose','Climbingintoo a car');

insert into clown_info VALUES ('Mr Hobo','Party for eric grey', 'M, cigar, black hair, tiny hat','violin');

Select * from clown_info where name='Zippo';
select * from clown_info where activities ='dancing';
delete from clown_info where activities ='dancing';
Select * from clown_info;

insert into clown_info values('Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge fower, blue dress','dancing');
select * from clown_info where name = 'Clarabelle' AND activities = 'yelling, dancing';
delete from clown_info where name = 'Clarabelle' AND activities = 'yelling, dancing';

insert into drink_info values('Kiss on the Lips',5.5,42.5,'purple','Y', 170);
select * from drink_info;
select * from drink_info where calories=171;
delete from drink_info where calories=171;

insert into drink_info values ('Blackthorn',3,8.4,'gold','Y',33), ('Greyhound',4,14,'gold','Y',50);
delete from drink_info where color='yellow';

update clown_info set last_seen = 'Tracy\'s' where name= 'Mr Hobo' and last_seen = 'Party for eric grey';
select * from clown_info;

select * from clown_info where last_seen = ' Dickson park';
delete from clown_info where last_seen = ' Dickson park';
update clown_info set last_seen = 'Dickson park' where name='Bonzo';

use drinks;
select * from drink_info;
update drink_info set cost = cost + 1 where cost = 2.5 or cost = 3.5; 
