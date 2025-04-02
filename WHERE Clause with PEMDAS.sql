
SELECT *
FROM employee_demographics
#with %
WHERE first_name LIKE 'a%'
# with underscore (_)
WHERE first_name LIKE '__a__'
;