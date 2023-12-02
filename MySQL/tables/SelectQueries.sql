USE drinks;
SHOW TABLES;
select location, type from doughnut_ratings where rating = 10;
select * from doughnut_ratings;
select drink_name from easy_drinks where main='soda' and amount = 2;
select drink_name from easy_drinks where main='soda' and amount>1;
select * from drink_info;

select drink_name from drink_info where cost>=3.50 and calories<50;

select drink_name, cost from drink_info where ice = 'Y' and color = 'yellow' and calories>33;

select drink_name, color from drink_info Where carbs<=4 and ice ='Y';

select cost from drink_info where calories>=80; 

select drink_name, color, ice from drink_info where carbs= 42.5 or carbs= 14;
select drink_name, color, ice from drink_info where cost >3.8;

select drink_name from drink_info where drink_name>='L' and drink_name<'M';

select drink_name from easy_drinks where main='cherry juice' or second='cherry juice';

select drink_name from easy_drinks where main= 'orange juice' or main='apple juice';

select type from doughnut_ratings WHERE location = 'Krispy King' AND rating <> 6;
SELECT type FROM doughnut_ratings WHERE location = 'Krispy King' AND rating = 3;
SELECT type FROM doughnut_ratings WHERE location = 'Snappy Bagel' AND rating >= 6;
SELECT type FROM doughnut_ratings WHERE location = 'Krispy King' OR rating > 5;


select drink_name from drink_info where calories is null;
select * from drink_info;

USE gregs_list;
select * from my_contacts;
SELECT * from my_contacts where location like '%CA';
select first_name from my_contacts where first_name LIKE '_oe';

USE drinks;
select drink_name from drink_info where calories>=30 and calories <=60;
select drink_name from drink_info where calories between 30 and 60;
select drink_name from drink_info where drink_name between 'G' and 'O';


select drink_name from drink_info where calories>60 or calories<30;

select drink_name from drink_info where calories between 60 and 30; #Order matters, so you won't get any results from this query.

select * from easy_drinks;

select drink_name, main from easy_drinks where main IN('soda','peach nectar');
select drink_name, main from easy_drinks where main NOT IN('soda','peach nectar');
select drink_name from drink_info where not carbs between 3 and 5; # NOT keyord goes right after where clause except when using IN and NULL.

SELECT * FROM easy_drinks WHERE main IS NOT NULL;
SELECT * FROM easy_drinks WHERE NOT main = 'soda' AND NOT main = 'iced tea';




