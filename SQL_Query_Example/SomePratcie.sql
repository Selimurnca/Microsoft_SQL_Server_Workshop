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
--se�ilen kolondaki minimum kayd� al�r 

select max(UnitPrice) from Products

select avg(UnitPrice) from Products

select sum(UnitPrice * Quantity) as Kazan� from [Order Details]

select rand()
--rastgele say� �retir 

select left(ProductName,3) from Products

select right(ProductName,3) from Products

select ProductName , len(ProductName) as Karakter  from Products

Select lower(ProductName) from Products

Select upper(ProductName) from Products

select trim('           selim ')

select * from Products where ProductName='Chai'

select reverse('Selim Kara')

select CHARINDEX('n','Selim Urunca',1)
--Bu sorgu k�saca n harfinin selim urunca str sinde ka��nc�
--harfinde oldugunu s�yler . Sondaki 1 ise ka��nc� karakterden aramya ba�layacag�n� belirtir.

select ProductName  from Products where CHARINDEX(' ',ProductName,1)>0
  
  select ProductName  from Products where CHARINDEX('anton',ProductName,1)>0

  --Burdaki ama� ger�ek hayatta metin i�erisinde farkl� bir metini aramaya yarar.
  --Sonda >0 ifadesi �unun i�in e�er aranan �artlar 0 dan buyukse vard�r. Sonuc gormek i�in gerekli.

  select REPLACE('Selim URUNCA',' ', '_')
  --Kay�t i�erisinde bir �eyleri ba�ka bir �eyle de�i�tirmek istedi�imizde 

  select REPLACE(ProductName,' ','_') from Products

  select SUBSTRING('Selim URUNCA',1,8)

select ASCII('B')
--Harflerin pc i�in say�sal kar��l���d�r 

select ascii(3)
--Say�lar�nda pc i�in kar��l��� vard�r 

select char(66)
--Char ifadesi de bu kar��l��� yeinden ifadeye d�d�rmeye yarar. 
