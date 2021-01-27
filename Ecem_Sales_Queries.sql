--4 S
select * from order_items
where unit_price >= 150 
order by unit_price ASC;

--5 S
select hire_date, first_name, last_name, employee_id FROM employees
where hire_date between '01/05/2016' and '31/05/2016'
order by hire_date;

--6 S
select contact_id, first_name, last_name from contacts
where first_name = 'Charlie' or first_name = 'Charlsie' ;

--8 S
SELECT products.product_id, products.product_name, products.description, inventories.quantity
FROM products 
inner join inventories on
     products.product_id = inventories.product_id
where quantity between 10 and 50
order by inventories.quantity asc;

--10 S 
SELECT * FROM order_items
where unit_price > 100
order by unit_price;

--14 S
SELECT employee_id, first_name, last_name, job_title FROM employees
WHERE manager_id IS NULL;

--15 S
SELECT location_id, city, address, postal_code FROM locations
WHERE state IS NULL;

--18 S
SELECT * FROM ORDERS 
WHERE STATUS = 'Canceled' AND salesman_id IS NULL;

--20 S
SELECT * FROM ORDERS
WHERE order_date BETWEEN '01/01/2016' AND '30/06/2016' 
ORDER BY order_date ASC;

--25 S
SELECT employee_id, first_name, last_name, job_title FROM employees
WHERE job_title LIKE 'S%'
ORDER BY job_title;

--26 S
SELECT products.*, product_categories.category_name FROM products INNER JOIN product_categorıes ON 
      products.category_id = product_categories.category_id
WHERE products.product_name LIKE 'Intel Xeon%' 
ORDER BY products.product_id;

--28 S
SELECT contact_id, first_name, last_name, phone FROM contacts
WHERE first_name LIKE 'C%'
ORDER BY last_name ASC;

--29 S 
SELECT * FROM PRODUCTS 
WHERE product_name LIKE 'Asus%' AND lýst_prýce < standard_cost;

--31 S 
SELECT * FROM product_categories 
WHERE product_categories.category_id <> 3;

--33 S
SELECT customers.*, orders.status FROM customers INNER JOIN orders ON
       orders.customer_id = customers.customer_id
WHERE orders.status <> 'Shipped';

--34 S
SELECT products.*, inventories.quantity FROM products INNER JOIN inventories ON 
       products.product_id = inventories.product_id
WHERE inventories.quantity = 100
ORDER BY products.product_id;

--37 S
SELECT COUNT(PRODUCT_ID) FROM INVENTORIES
WHERE warehouse_id = 8;

--39 S
SELECT COUNT(PRODUCT_ID) FROM PRODUCTS
WHERE list_price BETWEEN 1000 AND 3000;











