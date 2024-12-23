-- 11 show all data of employess whoes total pay between 50,000 and 75000
select * from salaries where TotalPay between 50000 and 75000;
-- 12 show all the employees where basepay less than 50000
-- or a total pay greater than 100 000
select * from salaries
where BasePay < 50000 or TotalPay > 100000;
