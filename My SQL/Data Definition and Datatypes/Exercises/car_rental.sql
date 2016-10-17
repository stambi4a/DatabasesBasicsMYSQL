-- CREATE DATABASE car_rental
CREATE TABLE categories(
id INT PRIMARY KEY NOT NULL,
category VARCHAR(50),
daily_rate FLOAT,
weekly_rate FLOAT,
monthly_rate FLOAT,
weekend_rate FLOAT
);

CREATE TABLE cars(
id INT PRIMARY KEY NOT NULL,
plate_number VARCHAR(50),
make VARCHAR(50),
model VARCHAR(50),
car_year VARCHAR(50),
category_id VARCHAR(50),
doors INT,
picture BLOB,
car_condition VARCHAR(50),
available BIT
);
--
CREATE TABLE employees(
id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
title VARCHAR(50),
notes VARCHAR(50)
);
--
CREATE TABLE customers(
id INT PRIMARY KEY NOT NULL,
driver_license_number VARCHAR(50),
full_name VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
zip_code VARCHAR(50),
notes VARCHAR(50)
);
--
CREATE TABLE rental_orders(
id INT PRIMARY KEY NOT NULL,
employee_id INT,
customer_id INT,
car_id INT,
car_condition VARCHAR(50),
tank_level VARCHAR(50),
kilometrage_start VARCHAR(50),
kilometrage_end VARCHAR(50),
total_kilometrage VARCHAR(50),
start_date DATE,
end_date Date,
total_days INT,
rate_applied FLOAT,
tax_rate FLOAT,
order_status BIT,
notes VARCHAR(50)
);

INSERT INTO categories
VALUES(1, 'SUV', 20, 50, 120, 35);
INSERT INTO categories
VALUES(2, 'Offroad', 30, 60, 150, 45);
INSERT INTO categories
VALUES(3, 'Racing', 40,80, 240, 75);
--
INSERT INTO cars
VALUES(1, 'CA 1280 HK', 'Toyota', 'Landcruiser', '2008-10-19', 'Offroad', 4, NULL, 'Excellent', 1);
INSERT INTO cars
VALUES(2, 'CB 7787 CC', 'Audi', 'Cayenne', '2003-03-14', 'SUV', 4, NULL, 'Excellent', 1);
INSERT INTO cars
VALUES(3, 'A 2837 CC', 'Ferrari', 'Spider', '2008-03-14', 'Racing', 2, NULL, 'Excellent', 0);

INSERT INTO employees
VALUES(1, 'Mihail', 'Hristov', 'Manager Sales', 'Mihail Hristov notes');
INSERT INTO employees
VALUES(2, 'Rado', 'Nenev', 'Manager IT', 'Rado Nenev notes');
INSERT INTO employees
VALUES(3, 'Boqn', 'Katev', 'CTO', 'Boqn Katev notes');

INSERT INTO customers
VALUES(1, 'RA-878990', 'Venci Bobev', 'jk Dybnika', 'Vraca', '3000', 'Venci notes');
INSERT INTO customers
VALUES(2, 'RA-827468', 'Stamo Lekov', 'jk Mladost', 'Pleven', '5800', 'Stamo notes');
INSERT INTO customers
VALUES(3, 'RA-278340', 'Doni Subov', 'jk Mladost', 'Pleven', '5800', 'Stamo notes');

INSERT INTO rental_orders
VALUES(1, 2, 1, 3, 'Excellent', 'empty', 224567, 225123, 556, '2016-09-12', '2016-09-15', 3, 10, 10, 1, 'Order 1 notes');
INSERT INTO rental_orders
VALUES(2, 1, 2, 1, 'Good', 'Full', 249833, 251900, 2077, '2016-09-14', '2016-09-25', 21, 15, 20, 1, 'Order 2 notes');
INSERT INTO rental_orders
VALUES(3, 3, 2, 1, 'Poor', 'Middle', 23456, 24456, 1000, '2016-10-01', '2016-09-04', 4, 20, 20, 1, 'Order 3 notes');