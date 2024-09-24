-- Format the current date to 'Day, Month day, year' in US English format
SELECT 
FORMAT(
	GETDATE(), 'dddd, MMMM dd, yyyy', 'en-US'
);

-- Format the current date to 'Day, Month day, year' in Turkish format
SELECT 
FORMAT(
	GETDATE(), 'dddd, MMMM dd, yyyy', 'tr-TR'
);

-- Format the number as currency (USD) in US English format
SELECT 
FORMAT(
	123456.789, 'C', 'en-US'
);

-- Format the number as currency (TRY) in Turkish format
SELECT 
FORMAT(
	123456.789, 'C', 'tr-TR'
);

-- Format the current date to 'MM/dd/yyyy' (US date format without culture)
SELECT
FORMAT(
	GETDATE(), 'MM/dd/yyyy'
);