-- Q4
WITH i AS
(
SELECT Max(Currently), *
FROM Item
)
SELECT i.ItemId
FROM i;