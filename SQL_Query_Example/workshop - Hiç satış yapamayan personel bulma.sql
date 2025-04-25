select e.EmployeeID,O.EmployeeID ÇalýþanID from Employees e inner join Orders o
on e.EmployeeID=o.EmployeeID
order by e.EmployeeID
-- Satýþ yapamayan hiçbir çalýþanýmýz yok

select e.EmployeeID,O.EmployeeID ÇalýþanID from Employees e left join Orders o
on e.EmployeeID=o.EmployeeID
where o.EmployeeID is null
order by e.EmployeeID
