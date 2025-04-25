
select ProductID as id ,ProductName as Name from Products

select p.ProductName, p.UnitPrice * p.UnitsInStock as Total from Products p

select p.ProductID as Kod , p.ProductName as Adý , p.UnitsOnOrder as Sipariþ from Products p 

-- Bu sorguyla birlikte ayný sonuç penceresinde hem ürün ve id leri hem de üründen kazanýlacak toplam kazancý gösteren bir
-- elde edildi 