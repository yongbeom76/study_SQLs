-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계와 평균은 ?
SELECT SUM(Price),AVG(Price) FROM Products
WHERE (Price >= 10 AND Price <= 50)
AND CategoryID IN (SELECT CategoryID FROM Categories
					WHERE CategoryName IN ('Dairy Products','Seafood'));        