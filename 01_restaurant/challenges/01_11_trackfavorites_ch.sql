-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Update Customers(DishID)
SET FavouriteDish = 
  (SELECT DishID FROM Dishes where Name ='Quinoa Salmon Salad')
Where FirstName = 'Cleo' AND LastName = 'Goldwater'
