	
	* Importing the data
	import excel "./Date_issue_excel.xlsx", sheet("Sheet1") firstrow clear 
	
	
	****************************************************************************
	
	* There are 1000 milliseconds in 1 second
	* Stata reads date time from Janury 1, 1960 00:00:00 as 0
	* Excel reads date time from January 1 1900 00:00:00 as 1
	
	* Some notes: 
	* https://www.myonlinetraininghub.com/excel-date-and-time#:~:text=Excel%20stores%20dates%20and%20time,the%20underlying%20date%20serial%20number.
	
	* Excel dates after 28th February 1900 are actually one day out. Excel behaves as though the date 29th February 1900 existed, which it didn't.
	* Also, because there is a difference of 1 unit count between stata and excel which is why we deduct 2 days from the original count 
	
	****************************************************************************
	
	generate double date_new = date												// Duplicating the original date variable
	replace date_new = date_new * (24 * 60 * 60) 								// Converting days to minutes 24 hours * 60 Minutes per hour * 60 seconds per minute
	replace date_new = date_new * 1000 											// Convert the above minutes to milliseconds 
	
	generate date_1900 = "January 1, 1900 00:00:00"								// Generating Excel reference date used in Stata
	generate double date_1900_converted = clock(date_1900, "MDYhms") 			// Converting the excel reference date in string to Stata readable format	
	
	* Substracting the excel reference date value from current dates.
	* Similarly we subtract leap year that excel adds on its own from the year 1900 along with 
	* the subtraction of difference in index count between Stata and excel (making it a total of 2 days)
	generate double date_stata = date_new + date_1900_converted - (2 * 24 * 60 * 60 * 1000)
	format %tc date_stata 														// Converting the variable to Stata readable format