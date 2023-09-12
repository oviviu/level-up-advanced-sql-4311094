-- select emp.employeeId, emp.firstName, emp.lastName, count(sls.salesId) as NumOfCarsSold
-- from employee emp
-- inner join sales sls on sls.employeeId = emp.employeeId
-- group by emp.employeeId, emp.firstName, emp.lastName
-- order by 4 desc

select emp.employeeId, emp.firstName, emp.lastName,
(select salesAmount from sales 
  where sales.employeeId = emp.employeeId order by salesAmount asc LIMIT 1) as MinSalesAmount
from employee emp