# string function in sql

#length
select length('skyfall');

select first_name, length(first_name)
from employee_demographics
order by 2;

# Upper -  it convert the data into uppercase
select  first_name, upper('skyfall')
from employee_demographics;

# Lower --   it convert the data into lowercase
select  first_name, lower('skyfall')
from employee_demographics;

# Trim --- it create the space between records
select trim('   sky     ');


# There are multiple types of trim()
# 1. left trim();
 select ltrim('   sky     ');
 
 # 2. right trim();
  select RTRIM('         sky         ');

# Left - The LEFT() function extracts a number of characters  from a string (starting from left).
# Right - The RIGHT() function extracts a number of characters from a string (starting from right).
# Substring - SUBSTRING function extracts a substring from a string, starting at a specified position and with an optional length.
select first_name, 
left(first_name, 4),
right(first_name, 3),
substring(first_name, 3, 2),
birth_date,
substring(birth_date, 6, 2),
substring(birth_date, 1, 4) as birth_month
from  employee_demographics;

# Replace - it converts  and replaces the original string value to the new one
select first_name, replace(first_name,'a', 'z' )
 from employee_demographics;
 
 # Locate  - LOCATE() function is used to find the position of a substring in a string
#				if string is found, will return 1 if not then 0.
 select locate ('x', 'Alexander');
 
 select first_name, locate ('An', first_name)
 from employee_demographics;
 
 # CONCAT-- The CONCAT() function adds two or more strings together.
  select first_name, locate ('An', first_name),
    concat(first_name, ' ', last_name) as full_name # ' ' is used to create the space between the two strings
 from employee_demographics;
 



 
