-- 1 Show data 
select * from salaries;
-- 2 show only empoyee name and job title coloums 
select  EmployeeName , JobTitle from salaries;
-- 3 show The number of Employees in this table 
select * from salaries;
select count(Id) from salaries;
select count(*) from salaries;
-- 4 show the unique job titles 
select  distinct JobTitle from salaries ;
select  count(distinct JobTitle) from salaries ;
-- 5 show the jobv title of the employees for all with overtime greater tha 5000
select * from salaries;
select JobTitle, OvertimePay from salaries where OvertimePay > 50000;
-- 6 show averag base pay of all employees 
select avg(basepay) from salaries as Average;
-- 7 show top 10 hightes pay employees
select * from salaries;
select EmployeeName,TotalPay from salaries order by TotalPay desc
limit 10;
-- 8 show average of base pay , overtimepay , and other pay 
select * from salaries;
select EmployeeName, (BasePay + OvertimePay + OtherPay)/3
from salaries;
-- 9 Show manager data 
select * from salaries;
select * from salaries where JobTitle like "%Manager%";
-- 10  show job title with out managers 
select * from salaries where JobTitle != "%Manager%";
select * from salaries where JobTitle <> "%Manager%";



