-- Categories별로 구성된 제품 갯수, 가격 평균, 최고값, 최저값을 표시하세요
SELECT COUNT(ProductName), CategoryID, AVG(Price), MAX(Price), MIN(Price)
FROM Products
GROUP BY CategoryID;