# Joins 

select * from employee_demographics;
select * from employee_salary;

# Inner joins
select * from employee_demographics as dem  #aliasing
INNER JOIN employee_salary as sal #aliasing 
# by default if we right join, sql can called it inner join
on dem.employee_id = sal.employee_id;


# Outer joins
# There are total three outer joins:

# 1. left join 
select * from employee_demographics as dem  #aliasing
left JOIN employee_salary as sal #aliasing
on dem.employee_id = sal.employee_id;


# 2. right join
select * from employee_demographics as dem  #aliasing
right JOIN employee_salary as sal #aliasing
on dem.employee_id = sal.employee_id;

# 3. full join - The FULL JOIN basically returns all records from the left table and also from the right table




# Self join = A join where tables joins itself 
select * 
from employee_salary emp1
join employee_salary emp2
on
emp1.employee_id+1 = emp2.employee_id;

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
on
emp1.employee_id+1 = emp2.employee_id;


# Joining multiple tables together

select * from employee_demographics as dem  #aliasing
INNER JOIN employee_salary as sal #aliasing
on dem.employee_id = sal.employee_id
inner join parks_departments pd
on sal.dept_id = pd.department_id;

select * from parks_departments;
