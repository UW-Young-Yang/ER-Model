-- Q7
SELECT COUNT(DISTINCT Category)
FROM Category
WHERE ItemId IN (SELECT ItemId
                FROM Bidder
                WHERE Amount > 100);