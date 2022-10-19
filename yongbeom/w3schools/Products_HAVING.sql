# +1: 카테고리 10이상인 제품 있는 카테고리 표시?
# Products_HAVING.sql
SELECT CategoryName FROM Categories
WHERE CategoryID IN (SELECT CategoryID FROM Products
					GROUP BY CategoryID
					HAVING COUNT(ProductID)>=10);

#CategoryName
#Beverages
#Condiments
#Confections
#Dairy Products
#Seafood                    