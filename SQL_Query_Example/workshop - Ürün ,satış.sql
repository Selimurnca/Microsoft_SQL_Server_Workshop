select p.ProductID,sum(od.Quantity) as Total from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
group by p.ProductID 
order by P.ProductID
-- Kaç üründen kaç adet satoþ yaptýgýmýzý gösterir