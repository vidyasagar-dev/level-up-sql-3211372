-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Tables Involved: Customers, Dishes, Orders, OrdersDishes
-- Optional: CustomerDishes

Declare @CustID INT;

SELECT @CustID = CustomerID FROM Customers WHERE FirstName = 'Loretta' AND LastName = 'Hundey';

INSERT INTO Orders(CustomerID, OrderDate)
VALUES(@CustID, '2022-09-20 14:00:00')

Declare @OrderID = SCOPE_IDENTITY()

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES
  (@OrderID, (SELECT DishID FROM Dishes Where Name ='House Salad')),
  (@OrderID, (SELECT DishID FROM Dishes Where Name ='Mini Cheeseburgers')),
  (@OrderID, (SELECT DishID FROM Dishes Where Name ='Tropical Blue Smoothie'))

SELECT SUM(Price) FROM OrderDishes where OrderID=@OrderID

        -- (OR)

SELECT SUM(d.Price) FROM
Dishes d INNER JOIN OrdersDishes od
ON d.DishID = od.DishID
Where o.OrderID = @OrderID
