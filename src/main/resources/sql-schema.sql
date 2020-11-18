drop schema ims;

CREATE SCHEMA IF NOT EXISTS ims;

USE ims;

CREATE TABLE IF NOT EXISTS customers (
    id INT(10) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(40) DEFAULT NULL,
    surname VARCHAR(40) DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS orders (
	id INT(10) NOT NULL AUTO_INCREMENT,
	customer_id INT(10) NOT NULL,
	PRIMARY KEY (id)
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE IF NOT EXISTS items (
	id INT(10) NOT NULL AUTO_INCREMENT,
	name VARCHAR(40) NOT NULL,
	value DOUBLE(6,2) NOT NULL
	PRIMARY KEY (id)
);	

CREATE TABLE IF NOT EXISTS orders_items (
	order_id INT(10) NOT NULL,
	item_id INT(10) NOT NULL,
	quantity INT(10) NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (item_id) REFERENCES items(item_id)
);

