-- 이름이 Teddy, Allen인 컬럼의 이름, 이메일, 권한 표시

SELECT users.NAME, users.EMAIL, auth_names.AUTH_NAME
FROM users INNER JOIN auths
			ON users.UNIQUE_ID = auths.UNIQUE_ID_USERS
            INNER JOIN auth_names
            ON auths.UNIQUE_ID_AUTH_NAMES = auth_names.UNIQUE_ID
            AND users.NAME IN ('Teddy', 'Allen');