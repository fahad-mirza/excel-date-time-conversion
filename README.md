# Date Variable in Excel (without date format) converted to Stata date time
Imagine an Excel file that contains multiple sheets but the date column in each field is not assigned the date format. When such a variable is imported within Stata, it is shown as a number with decimals. When we assign a date format in Stata on such a number, it ends up either not converting or displays an incorrect date/time.  

This code will help unwrap the issue behind conversion and solve it seamlessly.
