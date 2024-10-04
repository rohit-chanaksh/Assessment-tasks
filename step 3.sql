
select p.ProductName, sum(s.QuantitySold) as total_sales from sales as s
join prod as p 
on s.ProductID = P.ProductID
group by p.ProductName


select sp.Region, sum(s.QuantitySold) AS total_sales from sales as s
join sp 
on s.SalespersonID = sp.SalespersonID
group by sp.Region


select sp.SalespersonName, avg(s.QuantitySold) AS average_sales
from sales as s
join sp
on s.SalespersonID = sp.SalespersonID
group by sp.SalespersonName
