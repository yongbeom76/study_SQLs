-- + 4-1: 이름, 이메일, 권한이름 표시, 조건 이름이 'Teddy', 'Allen'?
-- Users_Auth_names.sql
SELECT users.NAME, users.EMAIL, auths.UNIQUE_ID_AUTH_NAMES
FROM users INNER JOIN auths
ON (users.UNIQUE_ID=auths.UNIQUE_ID_USERS) 
AND users.NAME IN ('Teddy','Allen')
;
-- 결과값: 4개