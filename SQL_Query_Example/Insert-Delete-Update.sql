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
--�al��t���m�z tabloda company name deki farkl� olanlarla orjinal Customer tablosundaki copmany name leri e�le�tirdik.

delete Customers 
from
Customers inner join CustomersWork
on 
Customers.CustomerID=CustomersWork.CustomerID
where 
CustomersWork.CompanyName like '%TEST%'
--Ba�l� oldugu sipari�ler oldugu i�in silme i�lem�nde hata erdi yoksa �al��acak.

select CustomerID,CompanyName,ContactName from Customers
union
select * from CustomersWork
--Bu iki sorguyu birle�tirirken sadece ortak olan kolonlar� ve ayn� olanlar� bir kere farkl� olanlar� da geitirir
--Yani bu iki ayn� sand�g�mz tablolalar�n aras�ndak� fark� gormek i�in iyi bir yoldur 

-- E�er gene de getirmesini istersek �u ; 

select CustomerID,CompanyName,ContactName from Customers
union all
select * from CustomersWork






