--create table EmployeeDemographics
--(
--EmployeeId int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)


--create table EmployeeSalary
--(
--EmployeeID int,
--JobTitle varchar(50), 
--Salary int
--)


--insert into EmployeeDemographics
--values
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Scott', 35, 'Male'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')



--insert into EmployeeSalary values
--(1001, 'Salesman', 45000 ),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000), 
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)


--Select statement 
--Top, Distinct, Count, As, Max, Min, Avg


--select top 5 *
--from EmployeeDemographics

--select  Distinct(EmployeeId) 
--from EmployeeDemographics


--select  Count(LastName)  as LastNameCount
--from EmployeeDemographics


--select max(Salary)  as MaxSalary
--from EmployeeSalary

--select min(Salary)  as MinSalary
--from EmployeeSalary

--select avg(Salary)  as AvgSalary
--from EmployeeSalary


--important
--select *  from SQLTutorial.dbo.EmployeeSalary


--Where statement
--=, <>,<, >, And, or, not, like, null, not null, in

--select * from EmployeeDemographics
--where FirstName != 'Jim'

--select * from EmployeeDemographics
--where Age >= 30

--select * from EmployeeDemographics
--where Age <= 32 and Gender = 'Male'


--select * from EmployeeDemographics
--where Age <= 32 or Gender = 'Male'


--select * from EmployeeDemographics
--where LastName like 'S%'

--select * from EmployeeDemographics
--where LastName like '%S'

--select * from EmployeeDemographics
--where LastName like 'Scott'


--select * from EmployeeDemographics
--where FirstName is not null

--select  * from 
--EmployeeDemographics
--where FirstName in ('Jim', 'Michael')


--Group by, Order by

--select * 
--from EmployeeDemographics


--select Gender , Age,  count(Gender) as countofGender
--from EmployeeDemographics
--where Age > 31
--group by Gender, Age
--order by Gender Desc

--select * 
--from EmployeeDemographics
--order by Age desc, Gender desc



--select * 
--from EmployeeDemographics
--order by 4 desc, 5 desc




--INTERMEDIATE

--Joins = Inner join, full/left/rightouter join


--INNER JOIN 
--select * 
--from EmployeeDemographics as dim
--join EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID


--select * from 
--SQLTutorial.dbo.EmployeeDemographics as dim
--inner join SQLTutorial.dbo.EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID


--select * from 
--SQLTutorial.dbo.EmployeeDemographics as dim
--left outer join SQLTutorial.dbo.EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID

--select * from 
--SQLTutorial.dbo.EmployeeDemographics as dim
--right outer join SQLTutorial.dbo.EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID

--select  dim.EmployeeId, FirstName, LastName, JobTitle, Salary
----from 
--SQLTutorial.dbo.EmployeeDemographics as dim
--inner join SQLTutorial.dbo.EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID


--select  dim.EmployeeId, FirstName, LastName, JobTitle, Salary
--from 
--SQLTutorial.dbo.EmployeeDemographics as dim
--right join SQLTutorial.dbo.EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID


--select  *
--from 
--SQLTutorial.dbo.EmployeeDemographics as dim
--inner join SQLTutorial.dbo.EmployeeSalary as sal
--on dim.EmployeeId = sal.EmployeeID
--where FirstName <> 'Micheal'
--order by Salary desc



--select JobTitle, Avg(Salary)
--from SQLTutorial.dbo.EmployeeDemographics dim
--inner  join SQLTutorial.dbo.EmployeeSalary sal
--on  dim.EmployeeId = sal.EmployeeId
--Where JobTitle = 'Salesman'
--Group By JobTitle



--UNIONS 

--select EmployeeID, FirstName, Age
--from SQLTutorial.dbo.EmployeeDemographics
--union
--select EmployeeID, JobTitle, Salary
--from SQLTutorial.dbo.EmployeeSalary
--order by EmployeeId

--UNION ALL
--select * from SQLTutorial.dbo.EmployeeDemographics
--union all
--select * from SQLTutorial.dbo.EmployeeSalary
--order by EmployeeId




--CASE STATEMENTS


--select FirstName, LastName, Age,
--CASE
--	 when Age > 30 Then'Old' 
--	 when Age between 27 and 30 Then 'Young'  else 'Baby'
--End as Agebracket
--from SQLTutorial.dbo.EmployeeDemographics
--where Age is not null
--order by Age


--select FirstName, LastName, Jobtitle, Salary,
--CASE
--	when JobTitle = 'Salesman' then Salary+(Salary * .10)
--	when JobTitle = 'Salesman' then Salary+(Salary * .05)
--	when JobTitle = 'HR' then Salary+(Salary * .000001)
--	else salary+(salary* .03)
--END salarybracket
--from SQLTutorial.dbo.EmployeeDemographics dim
--join SQLTutorial.dbo.EmployeeSalary sal
--on dim.EmployeeId = sal.EmployeeID


--HAVING CLAUSE


--select JobTitle, count(JobTitle)
--from SQLTutorial.dbo.EmployeeDemographics dim
--join SQLTutorial.dbo.EmployeeSalary sal
--on dim.EmployeeId = sal.EmployeeID
--group by JobTitle
--having count(JobTitle) > 1


--UPDATING/DELETING DATA
--select 
--* from EmployeeDemographics


--update EmployeeDemographics
--set Age = 31, Gender = 'Female'
--where FirstName = 'Pam' and LastName = 'Beasley'


--Delete from EmployeeDemographics
--where EmployeeId = 1005





--Partition by


--select FirstName, LastName, Gender, Salary,
--count(Salary) over(partition by Gender) as TotalGender
--from EmployeeDemographics dem
--join EmployeeSalary sal
--on dem.EmployeeId = sal.EmployeeID


--select  Gender, count(Gender)
--from EmployeeDemographics dem
--join EmployeeSalary sal
--on dem.EmployeeId = sal.EmployeeID
--group by Gender 



--CTE'S 

--with cte_employee as
--(
--select FirstName, LastName, Gender, Salary,
--count(Salary) over(partition by Gender) as TotalGender,
--Avg(Salary) over (partition by Salary) as AvgSalary
--from EmployeeDemographics dem
--join EmployeeSalary sal
--on dem.EmployeeId = sal.EmployeeID
--where Salary > '45000'
--)
--select FirstName, Avg(Salary)
--from cte_employee




--Temporary table


--create table  #temp_employee
--(
--EmployeeId int,
--JobTitle varchar(50),
--Salary int
--)

--select * from #temp_employee


--insert into #temp_employee 
--values
--(
--'1001', 'HR', '45000'
--)


Drop table if exists #temp_employee2
create table #temp_employee2 
(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)


insert into #temp_employee2
select JobTitle, count(JobTitle), Avg(Age), Avg(Salary)
from EmployeeDemographics dem
join EmployeeSalary sal
on dem.EmployeeId = sal.EmployeeId
group by JobTitle



select * from #temp_employee2

