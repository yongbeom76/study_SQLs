-- 5 : ? 분류(Categories)가 Produce, Beverages인 제품(Products) 총 갯수는 ?
-- 17개

SELECT COUNT(ProductID)
FROM Products
WHERE CategoryID IN (SELECT CategoryID
                    FROM Categories
            	    WHERE CategoryID IN (1, 7));