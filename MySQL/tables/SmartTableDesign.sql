SHOW databases;
USE gregs_list;
SHOW TABLES;

SHOW create table my_contacts;
DROP table my_contacts;

alter table my_contacts 
add column contact_id int not null auto_increment first,
add primary key(contact_id);

select * from my_contacts;