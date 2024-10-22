-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

Select * from Dishes ORDER BY price

Select * from Dishes where Type in('appetizer', 'beverage')

Select * from Dishes where Type != 'beverage'