-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는 ?
-- 갯수 : 379
SELECT OrderID
FROM Orders
WHERE OrderID IN (SELECT OrderID
				FROM OrderDetails
				WHERE ProductID IN (SELECT ProductID
									FROM Products
									WHERE Price BETWEEN 10.00 AND 50.00
                                    AND CategoryID IN (SELECT CategoryID
													FROM Categories
													WHERE CategoryName = 'Dairy Products' OR CategoryName = 'Seafood')));