-- Q3
WITH i AS
(
    SELECT ItemId
    FROM Category
    GROUP BY ItemId
    HAVING COUNT(*) = 4
)
SELECT COUNT(*)
FROM i;