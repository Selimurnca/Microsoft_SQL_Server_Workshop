select e.EmployeeID,O.EmployeeID �al��anID from Employees e inner join Orders o
on e.EmployeeID=o.EmployeeID
order by e.EmployeeID
-- Sat�� yapamayan hi�bir �al��an�m�z yok

select e.EmployeeID,O.EmployeeID �al��anID from Employees e left join Orders o
on e.EmployeeID=o.EmployeeID
where o.EmployeeID is null
order by e.EmployeeID
