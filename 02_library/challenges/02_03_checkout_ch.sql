-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

-- Declare @PatronID INT
-- Select @PatronID = PatronID from Patrons Where FirstName='Jack' AND LastName='Vaan'
-- AND Email ='jvaan@wisdompets.com'

-- Declare @LoanDate Date = '2022-08-25'
-- Declare @DueDate Date = '2022-09-08'

-- INSERT INTO Loans(BookId, PatronID, LoanDate, DueDate)
-- VALUES
-- ((SELECT BookID FROM Books Where Title='The Picture of Dorian Gray' AND Barcode=2855934983),
--   , @PatronID, @LoanDate, @DueDate),
--   ((SELECT BookID FROM Books Where Title='Great Expectations' AND Barcode=4043822646),
--   , @PatronID, @LoanDate, @DueDate)

INSERT INTO Loans(BookId, PatronID, LoanDate, DueDate)
VALUES
(
  (
  SELECT BookID FROM Books Where Title='The Picture of Dorian Gray' AND Barcode=2855934983
  ),
  (
  Select PatronID from Patrons Where FirstName='Jack' AND LastName='Vaan' AND Email ='jvaan@wisdompets.com'
  ), 
  '2022-08-25', '2022-09-08'
),
(
  (
  SELECT BookID FROM Books Where Title='Great Expectations' AND Barcode=4043822646
  ),
  (
  Select PatronID from Patrons Where FirstName='Jack' AND LastName='Vaan' AND Email ='jvaan@wisdompets.com'
  ), 
  '2022-08-25', '2022-09-08')

SELECT * from Loans Order by LoanID DESC LIMIT 5;