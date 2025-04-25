select c.CategoryID,sum(od.quantity) as Total from Categories c inner join Products p
on c.CategoryID=p.CategoryID
inner join [Order Details] od
on p.ProductID=od.ProductID
group by c.CategoryID
-- Bu sorgu kategori �e�itlerinden toplam ka� adet sat�� oldugunu bize s�yler
