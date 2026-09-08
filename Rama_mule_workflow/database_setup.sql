-- Create Database for Luxury Fashion Mall
CREATE DATABASE IF NOT EXISTS luxury_fashion_db;
USE luxury_fashion_db;

-- 1. Customer Info Table
CREATE TABLE customerinfo (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    vip_status VARCHAR(20) DEFAULT 'SILVER'
);

-- Insert dummy luxury customer for testing
INSERT INTO customerinfo (customer_id, customer_name, email, vip_status) 
VALUES ('CUST001', 'Sophia Loren', 'sophia@fashionboutique.com', 'PLATINUM');

-- 2. Products Table (Luxury Catalog)
CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- Insert luxury fashion items
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('PROD123', 'Italian Silk Tuxedo', 'Clothing', 45000.00, 10);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('PROD789', 'Swiss Chronograph Watch', 'Accessories', 120000.00, 5);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('PROD101', 'Designer Leather Handbag', 'Bags', 65000.00, 8);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('PROD456', 'Luxury Leather Belt', 'Accessories', 800.00, 2);

-- 3. Order Storing Table
CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    discount DECIMAL(10, 2) NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customerinfo(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 4. Invoice Table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50) NOT NULL,
    is_validated BOOLEAN DEFAULT FALSE,
    invoice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
