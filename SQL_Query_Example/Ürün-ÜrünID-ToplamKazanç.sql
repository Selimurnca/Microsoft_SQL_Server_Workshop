
select ProductID as id ,ProductName as Name from Products

select p.ProductName, p.UnitPrice * p.UnitsInStock as Total from Products p

select p.ProductID as Kod , p.ProductName as Ad� , p.UnitsOnOrder as Sipari� from Products p 

-- Bu sorguyla birlikte ayn� sonu� penceresinde hem �r�n ve id leri hem de �r�nden kazan�lacak toplam kazanc� g�steren bir
-- elde edildi 