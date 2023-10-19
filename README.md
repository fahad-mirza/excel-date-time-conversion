# Date Variable in Excel (without date format) converted to Stata date time
Imagine an Excel file that contains multiple sheets but the date column in each field is not assigned the date format. When such a variable is imported within Stata, it is shown as a number with decimals. When we assign a date format in Stata on such a number, it ends up either not converting or displays an incorrect date/time.  

This code will help unwrap the issue behind conversion and solve it seamlessly.  

## Original Date (Excel)
![alt text](https://github.com/fahad-mirza/excel-date-time-conversion/blob/a944c757b5290d79c23e23c0737484a3f6bc67b7/Excel_date_time.png?raw=true)  

## Stata converted date
![alt_text](https://github.com/fahad-mirza/excel-date-time-conversion/blob/a944c757b5290d79c23e23c0737484a3f6bc67b7/Excel_Stata_date_time.png?raw=true)

