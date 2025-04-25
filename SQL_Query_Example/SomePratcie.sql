select * from Products where CategoryID =1

select * from Products where UnitsInStock < 5

select * from Products where UnitsInStock = 0 and UnitsOnOrder > 0

select * from Products where UnitsInStock= 0 or UnitsOnOrder=0

select * from Products where not ProductName='Tarte au sucre' and UnitPrice< 30

select * from Products order by UnitPrice asc , ProductName desc

select * from Products where ProductName like '%ch%'

select * from Products where UnitPrice between 10 and 50 order by UnitPrice 

select * from Products where CategoryID in (1,2) order by CategoryID

select Count(*) from Customers

select Count(Region) from Customers
--count fonksiyonu NULL ifadeleri saymaz 

select min(UnitPrice) from Products
--seçilen kolondaki minimum kaydý alýr 

select max(UnitPrice) from Products

select avg(UnitPrice) from Products

select sum(UnitPrice * Quantity) as Kazanç from [Order Details]

select rand()
--rastgele sayý üretir 

select left(ProductName,3) from Products

select right(ProductName,3) from Products

select ProductName , len(ProductName) as Karakter  from Products

Select lower(ProductName) from Products

Select upper(ProductName) from Products

select trim('           selim ')

select * from Products where ProductName='Chai'

select reverse('Selim Kara')

select CHARINDEX('n','Selim Urunca',1)
--Bu sorgu kýsaca n harfinin selim urunca str sinde kaçýncý
--harfinde oldugunu söyler . Sondaki 1 ise kaçýncý karakterden aramya baþlayacagýný belirtir.

select ProductName  from Products where CHARINDEX(' ',ProductName,1)>0
  
  select ProductName  from Products where CHARINDEX('anton',ProductName,1)>0

  --Burdaki amaç gerçek hayatta metin içerisinde farklý bir metini aramaya yarar.
  --Sonda >0 ifadesi þunun için eðer aranan þartlar 0 dan buyukse vardýr. Sonuc gormek için gerekli.

  select REPLACE('Selim URUNCA',' ', '_')
  --Kayýt içerisinde bir þeyleri baþka bir þeyle deðiþtirmek istediðimizde 

  select REPLACE(ProductName,' ','_') from Products

  select SUBSTRING('Selim URUNCA',1,8)

select ASCII('B')
--Harflerin pc için sayýsal karþýlýðýdýr 

select ascii(3)
--Sayýlarýnda pc için karþýlýðý vardýr 

select char(66)
--Char ifadesi de bu karþýlýðý yeinden ifadeye dödürmeye yarar. 
