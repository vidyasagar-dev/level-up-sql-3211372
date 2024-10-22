-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

Select c.CustomerID, c.FirstName, c.LastName Count(orderID) as OrderCount FROM
Customer c
JOIN Orders o ON o.CustomerID=c.CustomerID
Group by c.CustomerID having OrderCount>1
ORDER BY OrderCount DESC
LIMIT 15;