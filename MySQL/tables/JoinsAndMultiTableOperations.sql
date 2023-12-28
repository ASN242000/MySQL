use gregs_list;
select * from my_contacts;

select distinct status, profession, interests, seeking from my_contacts;

select status from my_contacts group by status order by status;

select profession from my_contacts group by profession order by profession;

select interests from my_contacts group by interests order by interests;

select seeking from my_contacts group by seeking order by seeking;

alter table my_contacts add column interest1 varchar(20),add column interest2 varchar(20),add column interest3 varchar(20),add column interest4 varchar(20);

update my_contacts set interest1 = substring_index(interests, ',', 1);

update my_contacts set interests = substr(interests, length(interest1)+2);

update my_contacts set interest2 = substring_index(interests, ',', 1);

update my_contacts set interests = substr(interests, length(interest2)+2);

update my_contacts set interest3 = interests;

alter table my_contacts drop column interest4;

create table profession (id int(11) not null auto_increment primary key,
profession varchar(20));
insert into profession (profession) select profession from my_contacts
group by profession
order by profession;

select * from profession;
drop table profession;

create table profession AS 
select profession from my_contacts
group by profession 
order by profession;

alter table profession 
add column id int not null auto_increment,
add primary key(id);

alter table profession drop column id;

create table profession(
id int not null auto_increment primary key,
profession varchar(30)) AS
select profession from my_contacts
group by profession 
order by profession;

desc profession;

#Column aliases
create table profession(
id int not null auto_increment primary key,
mc_prof varchar(30)) AS 
select profession as mc_prof from my_contacts
group by mc_prof
order by mc_prof;

select t.toy, b.boy
from toys as t
cross join
boys as b;

select * from boys;

select b1.boy, b2.boy
from boys as b1
cross join
boys as b2;

# Equi Join
SELECT boys.boy, toys.toy
from boys 
INNER JOIN
toys
ON boys.toy_id = toys.toy_id;

use joins;

# Nonequi Join
select boys.boy, toys.toy
from boys
INNER JOIN
toys
ON boys.toy_id <> toys.toy_id
ORDER BY boys.boy;

# Natural Join

select boys.boy, toys.toy
from boys 
NATURAL JOIN
toys; 






