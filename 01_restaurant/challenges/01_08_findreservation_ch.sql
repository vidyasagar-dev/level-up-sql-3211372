-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

Select * from Reservations
Where CustomerID in(Select CustomerID from Customers
    Where FirstName like 'St%')
AND PartySize=4 and Month(Date) > '06' and DAY(Date) >'14'