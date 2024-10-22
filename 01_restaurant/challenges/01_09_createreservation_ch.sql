-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

Declare @CustID INTEGER

SELECT @CustID= CustomerID FROM Customers WHERE FirstName='Sam'
AND LastName ='McAdams'

IF @CustID is NULL
BEGIN
INSERT INTO Customers(FirstName, LastName, Email, Phone)
Values('Sam', 'McAdams', 'smac@kinetecoinc.com', '(555) 555-1232')
END

INSERT into Reservations(CustomerID, Date, PartySize)
VALUES((SELECT CustomerID FROM Customers WHERE Email='smac@kinetecoinc.com'),
'2022-08-12 18:00:00', 5)