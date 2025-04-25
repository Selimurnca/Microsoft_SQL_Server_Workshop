select (FirstName + ' ' + LastName) as [Çalýþan Ýsmi] ,ReportsTo from Employees

select (e1.FirstName + ' '+ e1.LastName) as Çalýþan,(e2.FirstName + ' '+ e2.LastName) as Üstü
from Employees e1 inner join Employees e2 
on e1.ReportsTo=e2.EmployeeID
-- Burada hangi çalýþanýn kime hesap verdiðini isimleriyle birlikte göstermiþ olduk
-- Ayný zamanda self join örneðide gerçekleþtrýmýs olduk.