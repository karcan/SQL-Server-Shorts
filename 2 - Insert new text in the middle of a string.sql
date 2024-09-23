-- Let's see how STUFF works.
SELECT
STUFF(
	/*p1*/	'SQL Tutorial', 
	/*p2*/	5, 
	/*p3*/	0, 
	/*p4*/	'Server '
);

-- Let's see how PATINDEX works.
SELECT 
PATINDEX('%Tutorial', 'SQL Tutorial');

-- Let's combine them.
SELECT
STUFF(
	/*p1*/	'SQL Tutorial',
	/*p2*/	PATINDEX('%Tutorial', 'SQL Tutorial'),
	/*p3*/	0,
	/*p4*/	'Server '
);