-- Products_Quantity.sql
-- +3: 제품명, 가격, 주문 갯수

SELECT Products.ProductName, Products.Price, OrderDetails.Quantity
FROM Products INNER JOIN OrderDetails
	ON Products.ProductID=OrderDetails.ProductID
;

-- 결과값: 2155개