select (FirstName + ' ' + LastName) as [�al��an �smi] ,ReportsTo from Employees

select (e1.FirstName + ' '+ e1.LastName) as �al��an,(e2.FirstName + ' '+ e2.LastName) as �st�
from Employees e1 inner join Employees e2 
on e1.ReportsTo=e2.EmployeeID
-- Burada hangi �al��an�n kime hesap verdi�ini isimleriyle birlikte g�stermi� olduk
-- Ayn� zamanda self join �rne�ide ger�ekle�tr�m�s olduk.