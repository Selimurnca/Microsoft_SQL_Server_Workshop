select distinct(Country) from Customers
--Seçilen sütundaki kayýtlarýn bir kere görmemizi yani tekrar etmemesini saðlar
select distinct Country,City from Customers order by Country

select Country,City,Count(*) Adet from Customers group  by Country,City
--Group by kodu istediðimiz katagoride istemidiðimiz kadar liste oluþturmamýzý saðlar. Distinct de bir group by ifadesidir . Ama grp by daha kapsamlýdýr.
--Belirttiðimiz kolona göre gruplama yapar.
--Her country burda bir tablo olarak görebiliriz.

select Country,City,Count(*) Adet from Customers
where City <> 'Nantes'
group by Country,City having count(*)>1
order by Country
--Ülke ve þehir bazýndan birden fazla müþteri olan yerler  mesela.
--Having ile her bir listeye ayrý ayrý sorgu yazamamýza yardýmcý olur.
--Having kümületif ama where tamamen tek bir veri flitrelemek için kullanýlýyor.

-- join - inner join(þart noktasýnda eþleþenleri , ortak olan þeyleri eþleþtirir) ortak noktalarý olan tablolarý beraber göstermek için kullanýrýz.
select * from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>20 -- Ürün deðeri 20 nýn uzerýnde olan ve eþleþen ürünleri getirdi mesela. 
order by Categories.CategoryID -- order by where den sonra yazýlýr.
-- 9 ýd li bý urun yok mesela yada kategori id si o yuzden result da çýkmýyor.

select p.ProductName,o.OrderDate,od.Quantity * od.UnitPrice as Total 
from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o 
on o.OrderID=od.OrderID
order by p.ProductName,o.OrderDate
-- Burada ilk önce products ile order details i join ettik cunkun product ile orders in ortak kumesi yok onu sonradan dahil ettik.

select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID
where od.ProductID is null
--Hiç satmayan ürünü bulmamýza yardýmcý oldu.
select * from Customers c left join Orders o 
on c.CustomerID=o.CustomerID
where o.CustomerID is null
--Hiç ürün satamadýgýmýz musteriyi bulmamýza yardýmcý oldu.
--Left veya right olmasýnýn izahi þu .Soldaki tabloda oluð saðdaki tabloda olmayaný getirir. Where koþulu da saðdaki tabloda null olanlarý görmek için gereklidir.
--Soldaki tablo left , saðdaki tablo için right 
select c.ContactName,c.CustomerID from Orders o right join Customers c
on o.CustomerID=c.CustomerID
where o.CustomerID is null

select * from Customers c full join Orders o
on o.CustomerID=c.CustomerID
--left right ve inner joinlerin hepsini görmemizi saðlar.




