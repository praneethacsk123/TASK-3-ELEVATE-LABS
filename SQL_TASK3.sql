/*HELLO..IAM PRANEETHACSK*/


/*CREATING SCHEMA*/
CREATE SCHEMA TASK3;
USE task3;


/*CREATING TABLE*/
CREATE TABLE orders_summary (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    customer_name VARCHAR(255),
    price DECIMAL(10, 2),
    quantity INT,
    delivery_status VARCHAR(100)
);


/*INSERTING VALUES INTO TABLE*/

INSERT INTO orders_summary (product_name, customer_name, price, quantity, delivery_status)
VALUES 
('iPhone 14', 'Alice Johnson', 899.99, 1, 'Delivered'),
('Samsung Galaxy S22', 'Bob Smith', 799.00, 2, 'Shipped'),
('Dell XPS 13', 'Charlie Lee', 1199.50, 1, 'Pending'),
('Sony Headphones', 'Dana White', 149.99, 3, 'Delivered'),
('Apple Watch SE', 'Eva Green', 279.00, 1, 'Cancelled');
INSERT INTO orders_summary (product_name, customer_name, price, quantity, delivery_status)
VALUES 
('MacBook Air M2', 'Frank Wilson', 1249.99, 1, 'Delivered'),
('Logitech Mouse', 'Grace Kim', 29.99, 2, 'Shipped'),
('HP Pavilion', 'Henry Adams', 849.50, 1, 'Delivered'),
('Google Pixel 7', 'Ivy Chen', 699.00, 1, 'Pending'),
('JBL Bluetooth Speaker', 'Jack Brown', 99.95, 2, 'Delivered'),
('Nintendo Switch', 'Karen Lopez', 299.99, 1, 'Cancelled'),
('iPad Pro', 'Leo Patel', 1099.00, 1, 'Delivered'),
('Amazon Echo Dot', 'Mona Das', 49.99, 3, 'Delivered'),
('Samsung Monitor', 'Nina Hill', 179.99, 2, 'Shipped'),
('Canon DSLR', 'Oscar Reed', 649.00, 1, 'Pending');
INSERT INTO orders_summary (product_name, customer_name, price, quantity, delivery_status)
VALUES 
('Asus ROG Laptop', 'Priya Shah', 1599.00, 1, 'Delivered'),
('OnePlus 11', 'Ravi Mehta', 649.99, 2, 'Shipped'),
('Kindle Paperwhite', 'Sana Iqbal', 129.99, 1, 'Pending'),
('Sony PlayStation 5', 'Tom Hardy', 499.99, 1, 'Delivered'),
('Apple Magic Keyboard', 'Uma Verma', 99.00, 1, 'Delivered'),
('GoPro Hero 11', 'Vikram Singh', 399.95, 1, 'Cancelled'),
('HP Laser Printer', 'Wendy Zhou', 229.00, 1, 'Shipped'),
('Microsoft Surface Pro 9', 'Xavier Bell', 1199.99, 1, 'Delivered'),
('Anker Power Bank', 'Yara Khan', 59.99, 2, 'Delivered'),
('LG Smart TV 55"', 'Zaid Malik', 749.00, 1, 'Pending');
INSERT INTO orders_summary (product_name, customer_name, price, quantity, delivery_status)
VALUES
('Xiaomi Redmi Note 12', 'Aditya Rao', 249.99, 1, 'Delivered'),
('Lenovo ThinkPad X1', 'Bhavna Nair', 1399.00, 1, 'Shipped'),
('Beats Studio Buds', 'Cyrus Mistry', 149.00, 2, 'Delivered'),
('Acer Aspire 5', 'Devika Menon', 599.99, 1, 'Pending'),
('Samsung Galaxy Tab S8', 'Eshan Kapoor', 649.00, 1, 'Delivered'),
('Amazon Fire Stick', 'Farah Ali', 39.99, 2, 'Delivered'),
('Dell Ultrasharp Monitor', 'Gaurav Thakur', 429.00, 1, 'Shipped'),
('TP-Link Router', 'Himani Joshi', 59.50, 1, 'Cancelled'),
('Bose QuietComfort 45', 'Iqbal Sheikh', 329.99, 1, 'Delivered'),
('Sony WH-1000XM5', 'Jaya Reddy', 379.99, 1, 'Delivered'),

('Logitech Keyboard', 'Karan Malhotra', 69.99, 1, 'Shipped'),
('Alienware Gaming Laptop', 'Lata Krishnan', 2199.00, 1, 'Pending'),
('Canon Pixma Printer', 'Manoj Kumar', 159.00, 1, 'Delivered'),
('HP Ink Cartridge', 'Nidhi Desai', 39.99, 2, 'Delivered'),
('Asus Zenbook Duo', 'Omkar Salvi', 1799.00, 1, 'Shipped'),
('Samsung SSD 1TB', 'Poonam Jha', 129.99, 1, 'Delivered'),
('iMac 24"', 'Qasim Ali', 1299.00, 1, 'Pending'),
('Realme C55', 'Ritika Das', 199.99, 1, 'Delivered'),
('Oppo Reno 8', 'Siddharth Roy', 499.00, 1, 'Shipped'),
('Mi Band 7', 'Tanvi Mehra', 49.99, 2, 'Delivered'),

('Lenovo Legion 5', 'Uday Chopra', 1199.00, 1, 'Delivered'),
('Apple AirPods Pro', 'Vani Shankar', 249.00, 1, 'Cancelled'),
('Wacom Drawing Tablet', 'Wasim Baig', 399.00, 1, 'Shipped'),
('Nikon Z30 Camera', 'Xena Bhatia', 699.99, 1, 'Delivered'),
('Ring Video Doorbell', 'Yusuf Siddiqui', 149.99, 1, 'Delivered'),
('Tile Bluetooth Tracker', 'Zara Khan', 24.99, 2, 'Pending'),
('Amazfit Smartwatch', 'Abdul Rahman', 89.99, 1, 'Delivered'),
('Canon Lens 50mm', 'Bhavya Singh', 349.99, 1, 'Delivered'),
('Logitech C920 Webcam', 'Chitra Kaur', 89.99, 1, 'Shipped'),
('MSI Gaming Laptop', 'Danish Tyagi', 1699.00, 1, 'Delivered');


/*SELECT UTILIZATION*/
SELECT * FROM orders_summary;


/*WHERE-UTILIZATION*/
SELECT * 
FROM orders_summary
WHERE delivery_status = 'Delivered';


/*ORDERBY-UTILIZATION*/
SELECT * 
FROM orders_summary
ORDER BY price DESC;

/*GROUP BY-Number of Orders per Delivery Status*/
SELECT delivery_status, COUNT(*) AS number_of_orders
FROM orders_summary
GROUP BY delivery_status;
/* USING AGGREGATE SUM*/
SELECT SUM(quantity) AS total_quantity_sold
FROM orders_summary;



/* USING AVG*/
SELECT AVG(price) AS avg_price_delivered
FROM orders_summary
WHERE delivery_status = 'Delivered';


/*CREATING SECOND TABLE FOR JOIN*/
CREATE TABLE delivery_partners (
    delivery_status VARCHAR(100),
    partner_name VARCHAR(100)
);


/*INSERT SECOND TABLE DETAILS*/
INSERT INTO delivery_partners (delivery_status, partner_name)
VALUES
('Delivered', 'BlueDart'),
('Shipped', 'Delhivery'),
('Pending', 'Ecom Express');


/*SHOWING SECOND TABLE DETAILS*/
SELECT * FROM delivery_partners;


/*INNER JOIN: only matching records from both tables*/
SELECT o.order_id, o.customer_name, o.delivery_status, d.partner_name
FROM orders_summary o
INNER JOIN delivery_partners d
ON o.delivery_status = d.delivery_status;


/*leftjoin*/
SELECT o.order_id, o.customer_name, o.delivery_status, d.partner_name
FROM orders_summary o
LEFT JOIN delivery_partners d
ON o.delivery_status = d.delivery_status;


/*rightjoin*/
SELECT o.order_id, o.customer_name, o.delivery_status, d.partner_name
FROM orders_summary o
RIGHT JOIN delivery_partners d
ON o.delivery_status = d.delivery_status;


/*sub query-Products With Price Higher Than the Average*/

SELECT * 
FROM orders_summary
WHERE price > (
    SELECT AVG(price) FROM orders_summary
);


/*sub query-2 Customers With More Than 1 Order*/
SELECT customer_name
FROM orders_summary
GROUP BY customer_name
HAVING COUNT(*) > 1;


/*VIEW*/
/*ACREATE VIEW customer_revenue AS
SELECT 
    customer_name,
    SUM(price * quantity) AS total_revenue
FROM orders_summary
GROUP BY customer_name;*/
/*SELECT * FROM customer_revenue;*/
/*INDEXING*/
/*CREATE INDEX idx_customer_name ON orders_summary(customer_name);
CREATE INDEX idx_delivery_status ON orders_summary(delivery_status);
CREATE INDEX idx_price ON orders_summary(price);
*/
SELECT * FROM orders_summary
WHERE delivery_status = 'Delivered';
