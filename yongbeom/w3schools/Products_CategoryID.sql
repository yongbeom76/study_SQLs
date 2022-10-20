-- +2: Products에 CategoryID가 5,6을 표시
-- 내용 프로덕트 이름,공급자 이름 출력?

SELECT ProductName, SupplierID 
FROM Products
WHERE CategoryID IN (5,6)
;

-- 결과값 13