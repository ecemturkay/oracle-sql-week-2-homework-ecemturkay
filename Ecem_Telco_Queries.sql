--1 T
SELECT * FROM product
WHERE quota = 'LIMITLESS'

--2 T
SELECT * FROM customer
WHERE STATUS = 'INITIAL';

--3 T
SELECT * FROM ADDRESS
WHERE CITY LIKE 'Istan%';

--9 T
SELECT cnt_value FROM contact
WHERE  is_primary = 0 AND CNT_TYPE = 'PHONE';

--12 T
SELECT * FROM account
WHERE  payment_type <> 'CASH'; 

--13 T
SELECT DISCONNECTION_DATE FROM customer
WHERE STATUS = 'DEACTIVE' ;

--16 T
SELECT * FROM account
WHERE account_closing_date IS NOT NULL ;

--17 T
SELECT * FROM account
WHERE e_bill_email IS NOT NULL ;

--19 T
SELECT * FROM agreement
WHERE commitment_end_date BETWEEN '01/01/2000' AND '01/01/2005' ;

--21 T
SELECT * FROM subscription
WHERE create_date <= '01/01/2005' AND STATUS = 'ACTIVE' ;

--22 T
SELECT * FROM agreement
WHERE commitment_start_date >= '31/01/2010' ; 

--23 T
SELECT * FROM customer
WHERE NAME LIKE 'E%' ;

--24 T
SELECT PRODUCT_NAME FROM PRODUCT
WHERE PRODUCT_TYPE LIKE '%DSL' ;

--27 T 
SELECT *  FROM customer
WHERE NAME LIKE '%ü%' OR SURNAME LIKE '%ü%';

--30 T 
SELECT id, agreement_id, country_cd, full_address FROM address
WHERE COUNTRY_CD = 'UK' OR COUNTRY_CD = 'AU';

--32 T
SELECT * FROM AGREEMENT
WHERE commitment_duration = '120 MONTHS' OR commitment_duration = '240 MONTHS'
ORDER BY commitment_duration ASC;

--35 T
SELECT COUNT(*) FROM AGREEMENT
WHERE SUBTYPE = 'MAIN' ;

--36 T
SELECT COUNT(*) FROM CUSTOMER
WHERE STATUS = 'DEACTIVE' ;

--38 T
SELECT COUNT(*) FROM CONTACT
WHERE CNT_TYPE = 'EMAIL' AND STATUS = 'USED' ;




























