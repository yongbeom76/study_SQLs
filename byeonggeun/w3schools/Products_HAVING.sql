-- 카테고리에 제품이 10개 이상인 카테고리 표시
SELECT CategoryName
FROM Categories
WHERE CategoryID in (SELECT CategoryID
					FROM Products
                    GROUP BY CategoryID
                    HAVING COUNT(CategoryID)>=10);

-- CategoryName
-- Beverages
-- Condiments
-- Confections
-- Dairy Products
-- Seafood