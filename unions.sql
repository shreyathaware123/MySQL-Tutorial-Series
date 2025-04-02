# Example1
select age, gender
from employee_demographics
union
select first_name, last_name 
from employee_salary
;

# Example2
select first_name, last_name
from employee_demographics
union distinct #distinct gives teh unique valuess and remove the duplicates
select first_name, last_name 
from employee_salary
;

# Example2 - without distinct, that means will also have duplicates
select first_name, last_name
from employee_demographics
union all 
select first_name, last_name 
from employee_salary
;

# Example3
select first_name, last_name, 'old man' as label
from employee_demographics
where age> 40 and  gender = 'male'
union
select first_name, last_name, 'old lady' as label
from employee_demographics
where age >40 and gender = 'female'
union
select first_name, last_name, 'Highly paid employee' as label
from employee_salary
where salary >70000
order by first_name, last_name

