# Stored procedures
Delimiter $$
create  procedure large_sal()
Begin
select * from employee_salary
where salary >= 50000;
select * from employee_salary 
where salary >= 10000;
End $$
Delimiter ;

call large_salaries3();

# Parameter ---  Parameters are the  variables which are used as inputs in the stored procedures

Delimiter $$
create  procedure large_salaries4(p_confidentlady int)
Begin
select salary
 from employee_salary
where employee_id = p_confidentlady;
End $$
Delimiter ;



call large_salaries4(1);






