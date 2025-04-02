select * from employee_demographics;
# group by
select gender, avg(age), max(age), min(age),count(age)
from employee_demographics
group by gender;

# Order by
select * 
from employee_demographics
#order by 5,4; represent the colums, gender at 5 and age at 4 but sometimes it can be risky as we can make mistakes adding different columns
order by gender, age;


# Create a new table called "products" in the Supermart_DB database 
select * from products;
# Create a new table called "products" in the Supermart_DB database 
select * from sales;
