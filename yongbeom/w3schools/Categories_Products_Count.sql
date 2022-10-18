#+1: Categories별로 구성된 제품 갯수,가격평균,최고값,최저값 표시하세요.
# Categories_Products_Count.sql
SELECT COUNT(ProductID),AVG(Price),MAX(Price),MIN(Price),CategoryID 
FROM Products
GROUP BY CategoryID;