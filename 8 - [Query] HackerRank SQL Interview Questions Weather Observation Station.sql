/*
	P1(a,b) and P2(c,d)

	a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).

	b happens to equal the minimum value in Western Longitude (LONG_W in STATION).

	c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).

	d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

	Query the Manhattan Distance between points  and  and round it to a scale of 4 decimal places.

	Manhattan distance:
	p1 at (x1, y1) and p2 at (x2, y2)
	it is |x1 - x2| + |y1 - y2|
*/

SELECT
	/*4 decimal places*/
	CAST(
		ABS(/*X1*/MIN(LAT_N) - MAX(LAT_N)/*X2*/)
		+ ABS(/*Y1*/MIN(LONG_W) - MAX(LONG_W)/*Y2*/)
	AS DECIMAL(13, 4))
FROM
	STATION