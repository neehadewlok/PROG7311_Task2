CREATE DATABASE PROG7311TASK2

CREATE TABLE PRODUCTS(
	PRODUCT_ID int NOT NULL,
	PRODUCT_NAME varchar(500),
	PRODUCT_PRICE decimal(10, 2),
	QUANTITY int,
	CATEGORY varchar(500),
	IMAGES varchar(500),
	PRIMARY KEY (PRODUCT_ID)
);

CREATE TABLE USERS(
	USER_ID int NOT NULL,
	USERNAME varchar(500),
	PASSWORD varchar(500), 
	EMPLOYEE BIT,
	PRIMARY KEY (USER_ID)
);

CREATE TABLE ORDERS(
	ORDER_ID int NOT NULL,
	PRODUCT_ID int NOT NULL FOREIGN KEY REFERENCES PRODUCTS(PRODUCT_ID),
	USER_ID int NOT NULL FOREIGN KEY REFERENCES USERS(USER_ID),
	QUANTITY int,
	ORDER_DATE varchar(500),
	PRIMARY KEY (ORDER_ID)
);

INSERT INTO PRODUCTS VALUES
(1, 'Bulkhead', 180.00, 2, 'Building & Maintenance', 'bulkhead.jpg');
INSERT INTO PRODUCTS VALUES
(2, 'Window Panes', 250.00, 3, 'Building & Maintenance', 'panes.jpg');
INSERT INTO PRODUCTS VALUES
(3, 'Drywall - 150m x 200m', 2700.50, 4, 'Drywalling', 'drywall1.jpg');

INSERT INTO USERS VALUES 
(001, 'Neeha', '1234', 'true');
INSERT INTO USERS VALUES 
(002, 'Dash', '1378', 'false');
INSERT INTO USERS VALUES 
(003, 'Kiara', '2378', 'true');

INSERT INTO ORDERS VALUES 
(01, 1, 001, 56, '11/06/2021');
INSERT INTO ORDERS VALUES 
(02, 2, 002, 87, '09/06/2021');
INSERT INTO ORDERS VALUES 
(03, 3, 003, 12, '13/06/2021');

