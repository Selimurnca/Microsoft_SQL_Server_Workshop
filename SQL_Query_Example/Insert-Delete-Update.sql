select * from CustomersWork

insert into CustomersWork (CustomerID,CompanyName,Contactname)
select CustomerID,CompanyName,Contactname from Customers

delete from CustomersWork

insert into CustomersWork (CustomerID,CompanyName,Contactname)
select CustomerID,CompanyName,Contactname from Customers
where ContactName like '%en%'

update Customers set CompanyName = CustomersWork.CompanyName
from Customers inner join CustomersWork
on Customers.CustomerID=CustomersWork.CustomerID
where CustomersWork.CompanyName like '%TEST%'
--Çalýþtýðýmýz tabloda company name deki farklý olanlarla orjinal Customer tablosundaki copmany name leri eþleþtirdik.

delete Customers 
from
Customers inner join CustomersWork
on 
Customers.CustomerID=CustomersWork.CustomerID
where 
CustomersWork.CompanyName like '%TEST%'
--Baðlý oldugu sipariþler oldugu için silme iþlemýnde hata erdi yoksa çalýþacak.

select CustomerID,CompanyName,ContactName from Customers
union
select * from CustomersWork
--Bu iki sorguyu birleþtirirken sadece ortak olan kolonlarý ve ayný olanlarý bir kere farklý olanlarý da geitirir
--Yani bu iki ayný sandýgýmz tablolalarýn arasýndaký farký gormek için iyi bir yoldur 

-- Eðer gene de getirmesini istersek þu ; 

select CustomerID,CompanyName,ContactName from Customers
union all
select * from CustomersWork






