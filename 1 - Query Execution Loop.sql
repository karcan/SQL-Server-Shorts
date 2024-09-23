-- Clean the table
TRUNCATE TABLE dbo.Numbers

-- First, let's see the empty table 
SELECT * FROM dbo.Numbers

-- Then let's add 10 rows.
INSERT INTO dbo.Numbers(Number)
VALUES(
	ISNULL((SELECT MAX(Number) FROM dbo.Numbers), 0) + 1
);
GO 10

-- Finally, let's see the new rows
SELECT * FROM dbo.Numbers
