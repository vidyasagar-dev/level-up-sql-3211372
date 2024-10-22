-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

Declare @CustID

Select @CustID =CustomerID from Customer c
JOIN Reservations r on c.CustomerID=r.CustomerID where c.FirstName ='Norby'
and r.Date>'2022-07-24'

Delete from Customer
Where CustomerID=@CustID