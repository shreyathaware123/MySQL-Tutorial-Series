# limit - used to set the limit of records and data 
select * from employee_demographics
order by age desc
limit 2, 1; # After 2 we have also return 1 which will not print anything which is right after the record 2

# Aliasing - used to give temporary name to any column we want .

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age>40;