select *  from my_contacts;
alter table my_contacts add phone_no int not null;

alter table my_contacts modify phone_no varchar(10);

alter table my_contacts add phone_no varchar(10) after first_name;

create database ch9;
use ch9;
show tables;
select * from projekts;

alter table projekts rename to project_list;
desc project_list;

alter table project_list 
change column `number` `proj_id` int not null auto_increment, 
add primary key (proj_id);
select * from project_list;

alter table project_list
modify column proj_desc varchar(120);

alter table project_list
change column descriptionofproj proj_desc varchar(100),
change column contractoronjob con_name varchar(30);

ALTER TABLE project_list
ADD COLUMN con_phne VARCHAR(10),
ADD COLUMN start_date DATE,
ADD COLUMN est_cost DEC(7,2);

ALTER TABLE project_list
DROP COLUMN start_date;

USE mysql;
select * from hooptie;

ALTER TABLE hooptie rename car_table, ADD COLUMN car_id int not null auto_increment first, add primary key(car_id), change column mo model VARCHAR(30), change column howmuch price DEC(7.2), add column VIN VARCHAR(20) after car_id;
select * from car_table;

alter table car_table 
modify column make varchar(20) after VIN; 

alter table car_table modify model varchar(30) after make; 

use gregs_list;
select * from my_contacts;
alter table my_contacts add column state VARCHAR(5);
update my_contacts set state = right(location, 2);
alter table my_contacts drop column state;














