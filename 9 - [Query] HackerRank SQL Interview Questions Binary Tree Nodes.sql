
/*
	• Root Node: The topmost node in a binary tree, without a parent.
	• Inner Node: A node with at least one child.
	• Leaf Node: A node with no children, found at the end of a branch.

*/
SELECT
	N,
	CASE
		WHEN P IS NULL THEN 'Root'
		WHEN N IN (SELECT P FROM BST) THEN 'Insert'
		ELSE 'Leaf'
	END
FROM
	BST
ORDER BY
	N;

