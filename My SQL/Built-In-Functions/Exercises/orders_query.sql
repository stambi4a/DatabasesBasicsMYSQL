-- Problem 16.

-- CREATE TABLE orders(
-- id INT PRIMARY KEY NOT NULL,
-- product_name VARCHAR(50),
-- order_date DATE
-- );

-- INSERT INTO orders
-- (id, product_name, order_date)
-- VALUES 
-- (1, 'Butter', CAST('2016-09-19 00:00:00' AS DATE)),
-- (2, 'Milk', CAST('2016-09-30 00:00:00' AS DATE)),
-- (3, 'Cheese', CAST('2016-09-04 00:00:00' AS DATE)),
-- (4, 'Bread', CAST('2015-12-20 00:00:00' AS DATE)),
-- (5, 'Tomatoes', CAST('2015-12-30 00:00:00' AS DATE))

SELECT product_name, order_date, DATE_ADD(order_date, INTERVAL 3 DAY) AS pay_due, 
DATE_ADD(order_date, INTERVAL 1 MONTH) AS deliver_due FROM orders