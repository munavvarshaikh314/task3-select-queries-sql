-- Use a database (you can create one if needed)
DROP DATABASE IF EXISTS food_delivery;
CREATE DATABASE food_delivery;
USE food_delivery;

-- 🔹 1. Create Tables
CREATE TABLE Restaurant (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) DEFAULT 'Unknown'
);

CREATE TABLE MenuItem (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    restaurant_id INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE `Order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    item_id INT,
    order_date DATE NOT NULL,
    delivery_status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (item_id) REFERENCES MenuItem(item_id)
);

-- 🔹 2. INSERT Statements (with NULLs/defaults)
INSERT INTO Restaurant (name, city) VALUES 
('Spicy Kitchen', 'Mumbai'),
('Burger Hub', NULL), 
('Veggie Delight', 'Delhi');

INSERT INTO MenuItem (name, price, restaurant_id) VALUES
('Paneer Tikka', 200.00, 1),
('Cheese Burger', 150.00, 2),
('Veg Biryani', 180.00, 1),
('Salad Bowl', 120.00, 3);

INSERT INTO Customer (name, email, city) VALUES
('Aman', 'aman@example.com', 'Delhi'),
('Neha', NULL, 'Mumbai'),
('Rahul', 'rahul@example.com', NULL);

INSERT INTO `Order` (customer_id, item_id, order_date) VALUES
(1, 1, '2025-06-21'),
(2, 2, '2025-06-22'),
(3, 4, '2025-06-23');


