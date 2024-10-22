-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

Declare @UpdateCustID INTEGER

SELECT @UpdateCustID = CustomerID from Customer
WHERE FirstName='Taylor' and LastName ='Jenkins'

UPDATE Customer
SET Address = '74 Pine St.',
City = 'New York',
State = 'NY'
WHERE ID = @UpdateCustID