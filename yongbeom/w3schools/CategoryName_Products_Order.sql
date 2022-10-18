-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 주문 OrderID 내역과 총 갯수는 ?
-- (where 절에 subquery가 두개가 들어간다.힌트. subquery의 subquiery의 subquery 로 해도 된다.)
-- CategoryName_Products_Order.sql
SELECT DISTINCT OrderID FROM OrderDetails
WHERE OrderID NOT IN (SELECT OrderID FROM OrderDetails
					WHERE ProductID NOT IN (SELECT ProductID FROM Products
											WHERE (Price >= 10 AND Price <= 50)
											AND CategoryID IN (SELECT CategoryID FROM Categories
											WHERE CategoryName IN ('Dairy Products','Seafood'))));
#총개수 54개