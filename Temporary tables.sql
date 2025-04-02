# temporary tables

create temporary table temp_tab
(first_name varchar(50),
last_name varchar(50), 
favorite_movie varchar(50))
;
select * from temp_tab;

insert into temp_tab 
values( 'shre', 's2:shre1');
select * from temp_tab;


create temporary table salary_over_50k
select * from employee_salary
where salary > 50000;
select * from salary_over_50k