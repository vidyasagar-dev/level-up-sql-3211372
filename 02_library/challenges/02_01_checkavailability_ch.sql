-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

--Get the number of copies of the book

Select Count(BookID) FROM
Books where Title='Dracula'

--Get the number of copies of the book not available to borrow

Select count(b.BookID) CopiesUnavailable FROM
Loans l
INNER JOIN Books b
ON l.bookID = b.BookID
Where b.Title = 'Dracula'
AND l.ReturnedDate is NULL


--Combine the above queries to find the number of copies available to borrow

Select
(
(Select Count(BookID) TotalCopies FROM
Books where Title='Dracula') - 
(Select count(b.BookID) CopiesUnavailable FROM
Loans l
INNER JOIN Books b
ON l.bookID = b.BookID
Where b.Title = 'Dracula'
AND l.ReturnedDate is NULL)
)AvailableCopies