select distinct(Country) from Customers
--Se�ilen s�tundaki kay�tlar�n bir kere g�rmemizi yani tekrar etmemesini sa�lar
select distinct Country,City from Customers order by Country

select Country,City,Count(*) Adet from Customers group  by Country,City
--Group by kodu istedi�imiz katagoride istemidi�imiz kadar liste olu�turmam�z� sa�lar. Distinct de bir group by ifadesidir . Ama grp by daha kapsaml�d�r.
--Belirtti�imiz kolona g�re gruplama yapar.
--Her country burda bir tablo olarak g�rebiliriz.

select Country,City,Count(*) Adet from Customers
where City <> 'Nantes'
group by Country,City having count(*)>1
order by Country
--�lke ve �ehir baz�ndan birden fazla m��teri olan yerler  mesela.
--Having ile her bir listeye ayr� ayr� sorgu yazamam�za yard�mc� olur.
--Having k�m�letif ama where tamamen tek bir veri flitrelemek i�in kullan�l�yor.

-- join - inner join(�art noktas�nda e�le�enleri , ortak olan �eyleri e�le�tirir) ortak noktalar� olan tablolar� beraber g�stermek i�in kullan�r�z.
select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>20 -- �r�n de�eri 20 n�n uzer�nde olan ve e�le�en �r�nleri getirdi mesela. 
order by Categories.CategoryID -- order by where den sonra yaz�l�r.
-- 9 �d li b� urun yok mesela yada kategori id si o yuzden result da ��km�yor.

select p.ProductName,o.OrderDate,od.Quantity * od.UnitPrice as Total 
from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o 
on o.OrderID=od.OrderID
order by p.ProductName,o.OrderDate
-- Burada ilk �nce products ile order details i join ettik cunkun product ile orders in ortak kumesi yok onu sonradan dahil ettik.

select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID
where od.ProductID is null
--Hi� satmayan �r�n� bulmam�za yard�mc� oldu.
select * from Customers c left join Orders o 
on c.CustomerID=o.CustomerID
where o.CustomerID is null
--Hi� �r�n satamad�g�m�z musteriyi bulmam�za yard�mc� oldu.
--Left veya right olmas�n�n izahi �u .Soldaki tabloda olu� sa�daki tabloda olmayan� getirir. Where ko�ulu da sa�daki tabloda null olanlar� g�rmek i�in gereklidir.
--Soldaki tablo left , sa�daki tablo i�in right 
select c.ContactName,c.CustomerID from Orders o right join Customers c
on o.CustomerID=c.CustomerID
where o.CustomerID is null

select * from Customers c full join Orders o
on o.CustomerID=c.CustomerID
--left right ve inner joinlerin hepsini g�rmemizi sa�lar.




