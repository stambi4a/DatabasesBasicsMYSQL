-- CREATE DATABASE hotels

CREATE TABLE employees(
id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
title VARCHAR(50),
notes VARCHAR(50)
);
--
CREATE TABLE customers(
account_number VARCHAR(50) PRIMARY KEY NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone_number VARCHAR(50),
emergency_name VARCHAR(50),
emergency_number VARCHAR(50),
notes VARCHAR(50)
);
--
CREATE TABLE room_status(
room_status VARCHAR(50) PRIMARY KEY NOT NULL,
notes VARCHAR(50)
);
--
CREATE TABLE room_types(
room_type VARCHAR(50) PRIMARY KEY NOT NULL,
notes VARCHAR(50)
);
--
CREATE TABLE bed_types(
bed_type VARCHAR(50) PRIMARY KEY NOT NULL,
notes VARCHAR(50)
);
--
CREATE TABLE rooms(
room_number VARCHAR(50) PRIMARY KEY NOT NULL,
room_type VARCHAR(50) NOT NULL,
bed_type VARCHAR(50) NOT NULL,
rate FLOAT,
room_status VARCHAR(50) NOT NULL,
notes VARCHAR(50)
);
--
CREATE TABLE payments(
id INT PRIMARY KEY NOT NULL,
employee_id INT NOT NULL,
payment_date DATE,
account_number VARCHAR(50) NOT NULL,
first_date_occupied VARCHAR(50),
last_date_occupied VARCHAR(50),
total_days INT,
amount_charged FLOAT,
tax_rate FLOAT,
tax_amount FLOAT,
payment_total FLOAT,
notes VARCHAR(50)
);
--
CREATE TABLE occupancies(
id INT PRIMARY KEY NOT NULL,
employee_id INT NOT NULL,
date_occupied DATE,
account_number VARCHAR(50) NOT NULL,
room_number VARCHAR(50) NOT NULL,
rate_applied FLOAT,
phone_charge FLOAT,
notes VARCHAR(50)
);
--
INSERT INTO employees
VALUES(1, 'Stanimir', 'Todorov', 'Sir', 'S.T. notes');
INSERT INTO employees
VALUES(2, 'Stanislav', 'Ivanov', 'D-r', 'Stanislav notes');
INSERT INTO employees
VALUES(3, 'Krasimir', 'Myrchev', 'Ph.D', 'Krasimir notes');
--
INSERT INTO customers
VALUES('AB234', 'Venci', 'Hristov', '0898765432', 'VeHr', '234', 'Venci Hristov notes');
INSERT INTO customers
VALUES('AB235', 'Dobri', 'Radev', '0887124530', 'DoRa', '235', 'Dobri Radev notes');
INSERT INTO customers
VALUES('AB236', 'Marko', 'Ushanov', '0886200234', 'MaUs', '236', 'Marko Ushanov notes');
--
INSERT INTO room_status
VALUES('empty', 'empty notes');
INSERT INTO room_status
VALUES('full', 'full notes');
INSERT INTO room_status
VALUES('vacant', 'vacant notes');
--
INSERT INTO room_types
VALUES('bedroom', 'bedroom notes');
INSERT INTO room_types
VALUES('single', 'single notes');
INSERT INTO room_types
VALUES('double', 'double notes');
--
INSERT INTO bed_types
VALUES('Luxurious', 'Luxurious notes');
INSERT INTO bed_types
VALUES('kings bed', 'kings bed notes');
INSERT INTO bed_types
VALUES('Royal bed', 'royal bed notes');

INSERT INTO rooms
VALUES('123', 'bedroom', 'Luxurious', 30, 'empty', '123 notes');
INSERT INTO rooms
VALUES('124', 'double', 'kings bed', 40, 'full', '124 notes');
INSERT INTO rooms
VALUES('125', 'snigle', 'Royal bed', 50, 'vacant', '125 notes');

INSERT INTO payments
VALUES(1, 1, '2015-09-09', 'AB234', '2015-09-10', '2015-09-12', 3, 90, 10, 10, 100, 'payments 1 notes');
INSERT INTO payments
VALUES(2, 3, '2015-10-02', 'AB235', '2015-10-02', '2015-09-05', 3, 120, 20, 36, 156, 'payments 2 notes');
INSERT INTO payments
VALUES(3, 2, '2015-09-28', 'AB236', '2015-09-28', '2015-10-03', 6, 240, 25, 60, 300, 'payments 3 notes');

INSERT INTO occupancies
VALUES(1, 1, '2016-09-10', 'AB234', '123', 15, 10, 'occupany 1 notes');
INSERT INTO occupancies
VALUES(2, 3, '2016-09-15', 'AB236', '124', 20, 12, 'occupany 2 notes');
INSERT INTO occupancies
VALUES(3, 2, '2016-09-18', 'AB235', '125', 18, 115, 'occupany 3 notes');