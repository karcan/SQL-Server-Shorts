;WITH CTE_Numbers AS (
	SELECT
		NUM = CAST(1 AS DECIMAL(6,2 ))

	UNION ALL

	SELECT
		NUM = CAST(NUM + 1 AS DECIMAL(6, 2))
	FROM
		CTE_Numbers
	WHERE
		NUM < 10
)
SELECT
	STRING_AGG(CAST(crr.NUM AS INT), '&')
FROM
	CTE_Numbers AS crr
WHERE
	NOT EXISTS (
		SELECT
			NULL
		FROM
			CTE_Numbers AS prev
		WHERE
			prev.NUM < crr.NUM
			AND (crr.NUM / prev.NUM) % 1 = 0
			AND prev.NUM != 1
	)
	AND crr.NUM > 1
OPTION(MAXRECURSION 1000);