--4 S
select * from order_�tems
where un�t_pr�ce >= 150 
order by un�t_pr�ce ASC;

--5 S
select h�re_date, f�rst_name, last_name, employee_�d FROM employees
where h�re_date between '01/05/2016' and '31/05/2016'
order by h�re_date;

--6 S
select contact_�d, f�rst_name, last_name from contacts
where f�rst_name = 'Charlie' or f�rst_name = 'Charlsie' ;

--8 S
SELECT products.product_�d, products.product_name, products.descr�pt�on, �nventor�es.quant�ty
FROM products 
�nner jo�n �nventor�es on
     products.product_�d = �nventor�es.product_�d
where quantity between 10 and 50
order by �nventor�es.quant�ty asc;

--10 S 
SELECT * FROM order_�tems
where un�t_pr�ce > 100
order by un�t_pr�ce;

--14 S
SELECT employee_�d, f�rst_name, last_name, job_t�tle FROM employees
WHERE manager_�d IS NULL;

--15 S
SELECT locat�on_�d, c�ty, address, postal_code FROM locat�ons
WHERE state IS NULL;

--18 S
SELECT * FROM ORDERS 
WHERE STATUS = 'Canceled' AND salesman_�d IS NULL;

--20 S HAZ�RAN DAH�L M�?
SELECT * FROM ORDERS
WHERE order_date BETWEEN '01/01/2016' AND '30/06/2016' 
ORDER BY order_date ASC;

--25 S
SELECT employee_�d, f�rst_name, last_name, job_t�tle FROM employees
WHERE job_t�tle LIKE 'S%'
ORDER BY job_t�tle;

--26 S
SELECT products.product_�d, products.product_name, products.descr�pt�on, products.standard_cost, products.l�st_pr�ce, product_categor�es.category_name FROM products INNER JOIN product_categor�es ON 
      products.category_�d = product_categor�es.category_�d
WHERE products.product_name LIKE 'Intel Xeon%' 
ORDER BY products.product_�d;

--28 S
SELECT contact_�d, f�rst_name, last_name, phone FROM contacts
WHERE f�rst_name LIKE 'C%'
ORDER BY last_name ASC;

--29 S 
SELECT * FROM PRODUCTS 
WHERE product_name LIKE 'Asus%' AND l�st_pr�ce < standard_cost;

--31 S 
SELECT * FROM product_categor�es 
WHERE product_categor�es.category_�d <> 3;

--33 S
SELECT customers.customer_�d, customers.name, customers.address, customers.webs�te, customers.cred�t_l�m�t, orders.status FROM customers INNER JOIN orders ON
       orders.customer_�d = customers.customer_�d
WHERE orders.status <> 'Shipped';

--34 S
SELECT products.product_�d, products.product_name, products.descr�pt�on, products.standard_cost, products.l�st_pr�ce, products.category_�d, �nventor�es.quant�ty FROM products INNER JOIN �nventor�es ON 
       products.product_�d = �nventor�es.product_�d
WHERE �nventor�es.quant�ty = 100
ORDER BY products.product_�d;

--37 S
SELECT COUNT(PRODUCT_ID) FROM INVENTORIES
WHERE warehouse_�d = 8;

--39 S
SELECT COUNT(PRODUCT_ID) FROM PRODUCTS
WHERE l�st_pr�ce BETWEEN 1000 AND 3000;











