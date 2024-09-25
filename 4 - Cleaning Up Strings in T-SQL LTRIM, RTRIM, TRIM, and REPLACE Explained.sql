-- Removes spaces from the start.
SELECT 
	'#' + LTRIM('    KARCAN �ZBAL')

-- Removes spaces from the end.
SELECT 
	RTRIM('KARCAN �ZBAL    ') + '#'

-- Removes spaces from the start/end.
SELECT 
	'#' + TRIM('    KARCAN �ZBAL    ') + '#'

-- Removes '@' symbols from the start/end
SELECT 
	TRIM(N'@' FROM '@karcanozbal@')

-- Compare: 
	-- Removing '@' symbol by REPLACE vs
	-- Removing '@' from start/end using TRIM
SELECT 
REPLACE('@karcanozbal@outlook.com@', '@', ''),
TRIM(N'@' FROM '@karcanozbal@outlook.com@')