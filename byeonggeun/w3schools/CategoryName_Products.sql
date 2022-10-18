-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계와 평균은 ?
-- 합 : 390.34
-- 평균 : 24.396250

SELECT SUM(price)
FROM Products
WHERE Price BETWEEN 10.00 AND 50.00
AND CategoryID in (SELECT CategoryID
					FROM Categories
					WHERE CategoryName = 'Dairy Products' OR CategoryName = 'Seafood');

SELECT AVG(price)
FROM Products
WHERE Price BETWEEN 10.00 AND 50.00
AND CategoryID in (SELECT CategoryID
					FROM Categories
					WHERE CategoryName = 'Dairy Products' OR CategoryName = 'Seafood');