--4 S
select * from order_ýtems
where unýt_prýce >= 150 
order by unýt_prýce ASC;

--5 S
select hýre_date, fýrst_name, last_name, employee_ýd FROM employees
where hýre_date between '01/05/2016' and '31/05/2016'
order by hýre_date;

--6 S
select contact_ýd, fýrst_name, last_name from contacts
where fýrst_name = 'Charlie' or fýrst_name = 'Charlsie' ;

--8 S
SELECT products.product_ýd, products.product_name, products.descrýptýon, ýnventorýes.quantýty
FROM products 
ýnner joýn ýnventorýes on
     products.product_ýd = ýnventorýes.product_ýd
where quantity between 10 and 50
order by ýnventorýes.quantýty asc;

--10 S 
SELECT * FROM order_ýtems
where unýt_prýce > 100
order by unýt_prýce;

--14 S
SELECT employee_ýd, fýrst_name, last_name, job_týtle FROM employees
WHERE manager_ýd IS NULL;

--15 S
SELECT locatýon_ýd, cýty, address, postal_code FROM locatýons
WHERE state IS NULL;

--18 S
SELECT * FROM ORDERS 
WHERE STATUS = 'Canceled' AND salesman_ýd IS NULL;

--20 S HAZÝRAN DAHÝL MÝ?
SELECT * FROM ORDERS
WHERE order_date BETWEEN '01/01/2016' AND '30/06/2016' 
ORDER BY order_date ASC;

--25 S
SELECT employee_ýd, fýrst_name, last_name, job_týtle FROM employees
WHERE job_týtle LIKE 'S%'
ORDER BY job_týtle;

--26 S
SELECT products.product_ýd, products.product_name, products.descrýptýon, products.standard_cost, products.lýst_prýce, product_categorýes.category_name FROM products INNER JOIN product_categorýes ON 
      products.category_ýd = product_categorýes.category_ýd
WHERE products.product_name LIKE 'Intel Xeon%' 
ORDER BY products.product_ýd;

--28 S
SELECT contact_ýd, fýrst_name, last_name, phone FROM contacts
WHERE fýrst_name LIKE 'C%'
ORDER BY last_name ASC;

--29 S 
SELECT * FROM PRODUCTS 
WHERE product_name LIKE 'Asus%' AND lýst_prýce < standard_cost;

--31 S 
SELECT * FROM product_categorýes 
WHERE product_categorýes.category_ýd <> 3;

--33 S
SELECT customers.customer_ýd, customers.name, customers.address, customers.websýte, customers.credýt_lýmýt, orders.status FROM customers INNER JOIN orders ON
       orders.customer_ýd = customers.customer_ýd
WHERE orders.status <> 'Shipped';

--34 S
SELECT products.product_ýd, products.product_name, products.descrýptýon, products.standard_cost, products.lýst_prýce, products.category_ýd, ýnventorýes.quantýty FROM products INNER JOIN ýnventorýes ON 
       products.product_ýd = ýnventorýes.product_ýd
WHERE ýnventorýes.quantýty = 100
ORDER BY products.product_ýd;

--37 S
SELECT COUNT(PRODUCT_ID) FROM INVENTORIES
WHERE warehouse_ýd = 8;

--39 S
SELECT COUNT(PRODUCT_ID) FROM PRODUCTS
WHERE lýst_prýce BETWEEN 1000 AND 3000;











