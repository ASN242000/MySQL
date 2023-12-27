show databases;

create database gregs_list;

use gregs_list;

select * from my_contacts;

desc my_contacts;
alter table my_contacts
add column contact_id int auto_increment primary key first;

create table interests(
int_id int not null auto_increment primary key,
interest varchar(50) not null,
contact_id int not null,
constraint my_contacts_contact_id_fk
foreign key(contact_id)
references my_contacts(contact_id));

desc interests;