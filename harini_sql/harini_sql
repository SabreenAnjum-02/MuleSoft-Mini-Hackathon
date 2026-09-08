CREATE DATABASE luxury_clothing;

USE luxury_clothing;

CREATE TABLE categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    min_price DECIMAL(10,2) NOT NULL,
    max_price DECIMAL(10,2) NOT NULL
);

INSERT INTO categories 
(category_id, category_name, gender, min_price, max_price)
VALUES
('CAT001', 'Tops',        'Women', 500.00, 15000.00),
('CAT002', 'T-Shirts',   'Women', 400.00, 12000.00),
('CAT003', 'Dresses',    'Women', 800.00, 30000.00),
('CAT004', 'Jeans',      'Women', 600.00, 18000.00),
('CAT005', 'Kurti',      'Women', 500.00, 15000.00),
('CAT006', 'Jackets',    'Women', 1000.00, 40000.00),

('CAT007', 'Shirts',     'Men',   500.00, 20000.00),
('CAT008', 'Pants',      'Men',   600.00, 20000.00),
('CAT009', 'Jackets',    'Men',   1000.00, 40000.00),
('CAT010', 'Sweatshirts','Men',   700.00, 18000.00),
('CAT011', 'Hoodies',    'Men',   700.00, 20000.00);

SELECT * FROM categories;

CREATE TABLE women_tops (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_women_tops_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE women_tops_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_women_tops_variants_product
        FOREIGN KEY (product_id)
        REFERENCES women_tops(product_id),

    CONSTRAINT unique_women_tops_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO women_tops
(product_id, category_id, product_name, price, material, brand)
VALUES
('WT001', 'CAT001', 'Royal Silk Top', 8500.00, 'Pure Silk', 'Gucci'),
('WT002', 'CAT001', 'Luxury Cashmere Top', 12000.00, 'Cashmere', 'Prada'),
('WT003', 'CAT001', 'Designer Satin Top', 9500.00, 'Satin', 'Dior');

SELECT * FROM women_tops;

INSERT INTO women_tops_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES
-- WT001
('WT001-V01', 'WT001', 'S', 'Black', 10),
('WT001-V02', 'WT001', 'S', 'White', 8),
('WT001-V03', 'WT001', 'S', 'Red', 6),
('WT001-V04', 'WT001', 'M', 'Black', 12),
('WT001-V05', 'WT001', 'M', 'White', 9),
('WT001-V06', 'WT001', 'M', 'Red', 7),
('WT001-V07', 'WT001', 'L', 'Black', 8),
('WT001-V08', 'WT001', 'L', 'White', 6),
('WT001-V09', 'WT001', 'L', 'Red', 5),

-- WT002
('WT002-V01', 'WT002', 'S', 'Black', 5),
('WT002-V02', 'WT002', 'S', 'White', 7),
('WT002-V03', 'WT002', 'S', 'Red', 4),
('WT002-V04', 'WT002', 'M', 'Black', 8),
('WT002-V05', 'WT002', 'M', 'White', 6),
('WT002-V06', 'WT002', 'M', 'Red', 5),
('WT002-V07', 'WT002', 'L', 'Black', 6),
('WT002-V08', 'WT002', 'L', 'White', 4),
('WT002-V09', 'WT002', 'L', 'Red', 3),

-- WT003
('WT003-V01', 'WT003', 'S', 'Black', 9),
('WT003-V02', 'WT003', 'S', 'White', 6),
('WT003-V03', 'WT003', 'S', 'Red', 5),
('WT003-V04', 'WT003', 'M', 'Black', 10),
('WT003-V05', 'WT003', 'M', 'White', 8),
('WT003-V06', 'WT003', 'M', 'Red', 6),
('WT003-V07', 'WT003', 'L', 'Black', 7),
('WT003-V08', 'WT003', 'L', 'White', 5),
('WT003-V09', 'WT003', 'L', 'Red', 4);

SELECT * FROM women_tops_variants;

CREATE TABLE women_tshirts (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_women_tshirts_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE women_tshirts_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_women_tshirts_variants_product
        FOREIGN KEY (product_id)
        REFERENCES women_tshirts(product_id),

    CONSTRAINT unique_women_tshirts_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO women_tshirts
(product_id, category_id, product_name, price, material, brand)
VALUES
('WTS001', 'CAT002', 'Luxury Cotton T-Shirt', 6500.00, 'Premium Cotton', 'Gucci'),
('WTS002', 'CAT002', 'Signature Logo T-Shirt', 8500.00, 'Organic Cotton', 'Prada'),
('WTS003', 'CAT002', 'Silk Blend T-Shirt', 10000.00, 'Silk Blend', 'Dior');

SELECT * FROM women_tshirts;

INSERT INTO women_tshirts_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- WTS001
('WTS001-V01', 'WTS001', 'S', 'Black', 10),
('WTS001-V02', 'WTS001', 'S', 'White', 8),
('WTS001-V03', 'WTS001', 'S', 'Red', 6),
('WTS001-V04', 'WTS001', 'M', 'Black', 12),
('WTS001-V05', 'WTS001', 'M', 'White', 9),
('WTS001-V06', 'WTS001', 'M', 'Red', 7),
('WTS001-V07', 'WTS001', 'L', 'Black', 8),
('WTS001-V08', 'WTS001', 'L', 'White', 6),
('WTS001-V09', 'WTS001', 'L', 'Red', 5),

-- WTS002
('WTS002-V01', 'WTS002', 'S', 'Black', 7),
('WTS002-V02', 'WTS002', 'S', 'White', 9),
('WTS002-V03', 'WTS002', 'S', 'Red', 5),
('WTS002-V04', 'WTS002', 'M', 'Black', 10),
('WTS002-V05', 'WTS002', 'M', 'White', 8),
('WTS002-V06', 'WTS002', 'M', 'Red', 6),
('WTS002-V07', 'WTS002', 'L', 'Black', 7),
('WTS002-V08', 'WTS002', 'L', 'White', 5),
('WTS002-V09', 'WTS002', 'L', 'Red', 4),

-- WTS003
('WTS003-V01', 'WTS003', 'S', 'Black', 6),
('WTS003-V02', 'WTS003', 'S', 'White', 8),
('WTS003-V03', 'WTS003', 'S', 'Red', 4),
('WTS003-V04', 'WTS003', 'M', 'Black', 9),
('WTS003-V05', 'WTS003', 'M', 'White', 7),
('WTS003-V06', 'WTS003', 'M', 'Red', 5),
('WTS003-V07', 'WTS003', 'L', 'Black', 6),
('WTS003-V08', 'WTS003', 'L', 'White', 5),
('WTS003-V09', 'WTS003', 'L', 'Red', 3);

SELECT * FROM women_tshirts_variants;

CREATE TABLE women_dresses (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_women_dresses_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE women_dresses_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_women_dresses_variants_product
        FOREIGN KEY (product_id)
        REFERENCES women_dresses(product_id),

    CONSTRAINT unique_women_dresses_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO women_dresses
(product_id, category_id, product_name, price, material, brand)
VALUES
('WD001', 'CAT003', 'Royal Evening Gown', 18000.00, 'Silk', 'Dior'),
('WD002', 'CAT003', 'Luxury Velvet Dress', 22000.00, 'Velvet', 'Prada'),
('WD003', 'CAT003', 'Designer Satin Dress', 15000.00, 'Satin', 'Gucci');

SELECT * FROM women_dresses;

INSERT INTO women_dresses_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- WD001
('WD001-V01', 'WD001', 'S', 'Black', 6),
('WD001-V02', 'WD001', 'S', 'White', 5),
('WD001-V03', 'WD001', 'S', 'Red', 4),
('WD001-V04', 'WD001', 'M', 'Black', 8),
('WD001-V05', 'WD001', 'M', 'White', 7),
('WD001-V06', 'WD001', 'M', 'Red', 5),
('WD001-V07', 'WD001', 'L', 'Black', 6),
('WD001-V08', 'WD001', 'L', 'White', 5),
('WD001-V09', 'WD001', 'L', 'Red', 3),

-- WD002
('WD002-V01', 'WD002', 'S', 'Black', 5),
('WD002-V02', 'WD002', 'S', 'White', 4),
('WD002-V03', 'WD002', 'S', 'Red', 6),
('WD002-V04', 'WD002', 'M', 'Black', 7),
('WD002-V05', 'WD002', 'M', 'White', 8),
('WD002-V06', 'WD002', 'M', 'Red', 5),
('WD002-V07', 'WD002', 'L', 'Black', 6),
('WD002-V08', 'WD002', 'L', 'White', 5),
('WD002-V09', 'WD002', 'L', 'Red', 4),

-- WD003
('WD003-V01', 'WD003', 'S', 'Black', 9),
('WD003-V02', 'WD003', 'S', 'White', 7),
('WD003-V03', 'WD003', 'S', 'Red', 5),
('WD003-V04', 'WD003', 'M', 'Black', 10),
('WD003-V05', 'WD003', 'M', 'White', 8),
('WD003-V06', 'WD003', 'M', 'Red', 6),
('WD003-V07', 'WD003', 'L', 'Black', 7),
('WD003-V08', 'WD003', 'L', 'White', 5),
('WD003-V09', 'WD003', 'L', 'Red', 4);

SELECT * FROM women_dresses_variants;

CREATE TABLE women_jeans (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_women_jeans_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE women_jeans_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_women_jeans_variants_product
        FOREIGN KEY (product_id)
        REFERENCES women_jeans(product_id),

    CONSTRAINT unique_women_jeans_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO women_jeans
(product_id, category_id, product_name, price, material, brand)
VALUES
('WJ001', 'CAT004', 'Premium Slim Fit Jeans', 7500.00, 'Denim', 'Gucci'),
('WJ002', 'CAT004', 'Luxury Straight Leg Jeans', 9000.00, 'Stretch Denim', 'Prada'),
('WJ003', 'CAT004', 'Designer High Waist Jeans', 10500.00, 'Premium Denim', 'Dior');

SELECT * FROM women_jeans;

INSERT INTO women_jeans_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- WJ001
('WJ001-V01', 'WJ001', 'S', 'Black', 8),
('WJ001-V02', 'WJ001', 'S', 'White', 6),
('WJ001-V03', 'WJ001', 'S', 'Blue', 10),
('WJ001-V04', 'WJ001', 'M', 'Black', 12),
('WJ001-V05', 'WJ001', 'M', 'White', 8),
('WJ001-V06', 'WJ001', 'M', 'Blue', 14),
('WJ001-V07', 'WJ001', 'L', 'Black', 9),
('WJ001-V08', 'WJ001', 'L', 'White', 7),
('WJ001-V09', 'WJ001', 'L', 'Blue', 11),

-- WJ002
('WJ002-V01', 'WJ002', 'S', 'Black', 7),
('WJ002-V02', 'WJ002', 'S', 'White', 5),
('WJ002-V03', 'WJ002', 'S', 'Blue', 9),
('WJ002-V04', 'WJ002', 'M', 'Black', 10),
('WJ002-V05', 'WJ002', 'M', 'White', 8),
('WJ002-V06', 'WJ002', 'M', 'Blue', 12),
('WJ002-V07', 'WJ002', 'L', 'Black', 8),
('WJ002-V08', 'WJ002', 'L', 'White', 6),
('WJ002-V09', 'WJ002', 'L', 'Blue', 10),

-- WJ003
('WJ003-V01', 'WJ003', 'S', 'Black', 6),
('WJ003-V02', 'WJ003', 'S', 'White', 5),
('WJ003-V03', 'WJ003', 'S', 'Blue', 8),
('WJ003-V04', 'WJ003', 'M', 'Black', 9),
('WJ003-V05', 'WJ003', 'M', 'White', 7),
('WJ003-V06', 'WJ003', 'M', 'Blue', 11),
('WJ003-V07', 'WJ003', 'L', 'Black', 7),
('WJ003-V08', 'WJ003', 'L', 'White', 5),
('WJ003-V09', 'WJ003', 'L', 'Blue', 9);

SELECT * FROM women_jeans_variants;

CREATE TABLE women_kurti (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_women_kurti_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE women_kurti_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_women_kurti_variants_product
        FOREIGN KEY (product_id)
        REFERENCES women_kurti(product_id),

    CONSTRAINT unique_women_kurti_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO women_kurti
(product_id, category_id, product_name, price, material, brand)
VALUES
('WK001', 'CAT005', 'Royal Embroidered Kurti', 7500.00, 'Cotton Silk', 'Gucci'),
('WK002', 'CAT005', 'Luxury Anarkali Kurti', 9500.00, 'Chanderi Silk', 'Prada'),
('WK003', 'CAT005', 'Designer Printed Kurti', 6500.00, 'Pure Cotton', 'Dior');

SELECT * FROM women_kurti;

INSERT INTO women_kurti_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- WK001
('WK001-V01', 'WK001', 'S', 'Black', 8),
('WK001-V02', 'WK001', 'S', 'White', 6),
('WK001-V03', 'WK001', 'S', 'Red', 5),
('WK001-V04', 'WK001', 'M', 'Black', 10),
('WK001-V05', 'WK001', 'M', 'White', 8),
('WK001-V06', 'WK001', 'M', 'Red', 6),
('WK001-V07', 'WK001', 'L', 'Black', 7),
('WK001-V08', 'WK001', 'L', 'White', 5),
('WK001-V09', 'WK001', 'L', 'Red', 4),

-- WK002
('WK002-V01', 'WK002', 'S', 'Black', 6),
('WK002-V02', 'WK002', 'S', 'White', 7),
('WK002-V03', 'WK002', 'S', 'Red', 5),
('WK002-V04', 'WK002', 'M', 'Black', 9),
('WK002-V05', 'WK002', 'M', 'White', 8),
('WK002-V06', 'WK002', 'M', 'Red', 6),
('WK002-V07', 'WK002', 'L', 'Black', 7),
('WK002-V08', 'WK002', 'L', 'White', 5),
('WK002-V09', 'WK002', 'L', 'Red', 4),

-- WK003
('WK003-V01', 'WK003', 'S', 'Black', 10),
('WK003-V02', 'WK003', 'S', 'White', 8),
('WK003-V03', 'WK003', 'S', 'Red', 6),
('WK003-V04', 'WK003', 'M', 'Black', 12),
('WK003-V05', 'WK003', 'M', 'White', 9),
('WK003-V06', 'WK003', 'M', 'Red', 7),
('WK003-V07', 'WK003', 'L', 'Black', 9),
('WK003-V08', 'WK003', 'L', 'White', 7),
('WK003-V09', 'WK003', 'L', 'Red', 5);

SELECT * FROM women_kurti_variants;

CREATE TABLE women_jackets (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_women_jackets_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE women_jackets_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_women_jackets_variants_product
        FOREIGN KEY (product_id)
        REFERENCES women_jackets(product_id),

    CONSTRAINT unique_women_jackets_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO women_jackets
(product_id, category_id, product_name, price, material, brand)
VALUES
('WJKT001', 'CAT006', 'Luxury Leather Jacket', 28000.00, 'Genuine Leather', 'Gucci'),
('WJKT002', 'CAT006', 'Designer Wool Jacket', 22000.00, 'Premium Wool', 'Prada'),
('WJKT003', 'CAT006', 'Elegant Velvet Jacket', 18000.00, 'Velvet', 'Dior');

SELECT * FROM women_jackets;

INSERT INTO women_jackets_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- WJKT001
('WJKT001-V01', 'WJKT001', 'S', 'Black', 5),
('WJKT001-V02', 'WJKT001', 'S', 'White', 4),
('WJKT001-V03', 'WJKT001', 'S', 'Red', 3),
('WJKT001-V04', 'WJKT001', 'M', 'Black', 7),
('WJKT001-V05', 'WJKT001', 'M', 'White', 6),
('WJKT001-V06', 'WJKT001', 'M', 'Red', 4),
('WJKT001-V07', 'WJKT001', 'L', 'Black', 6),
('WJKT001-V08', 'WJKT001', 'L', 'White', 5),
('WJKT001-V09', 'WJKT001', 'L', 'Red', 3),

-- WJKT002
('WJKT002-V01', 'WJKT002', 'S', 'Black', 6),
('WJKT002-V02', 'WJKT002', 'S', 'White', 5),
('WJKT002-V03', 'WJKT002', 'S', 'Red', 4),
('WJKT002-V04', 'WJKT002', 'M', 'Black', 8),
('WJKT002-V05', 'WJKT002', 'M', 'White', 7),
('WJKT002-V06', 'WJKT002', 'M', 'Red', 5),
('WJKT002-V07', 'WJKT002', 'L', 'Black', 7),
('WJKT002-V08', 'WJKT002', 'L', 'White', 6),
('WJKT002-V09', 'WJKT002', 'L', 'Red', 4),

-- WJKT003
('WJKT003-V01', 'WJKT003', 'S', 'Black', 8),
('WJKT003-V02', 'WJKT003', 'S', 'White', 6),
('WJKT003-V03', 'WJKT003', 'S', 'Red', 5),
('WJKT003-V04', 'WJKT003', 'M', 'Black', 10),
('WJKT003-V05', 'WJKT003', 'M', 'White', 8),
('WJKT003-V06', 'WJKT003', 'M', 'Red', 6),
('WJKT003-V07', 'WJKT003', 'L', 'Black', 8),
('WJKT003-V08', 'WJKT003', 'L', 'White', 6),
('WJKT003-V09', 'WJKT003', 'L', 'Red', 5);

SELECT * FROM women_jackets_variants;

CREATE TABLE men_shirts (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_men_shirts_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE men_shirts_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_men_shirts_variants_product
        FOREIGN KEY (product_id)
        REFERENCES men_shirts(product_id),

    CONSTRAINT unique_men_shirts_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO men_shirts
(product_id, category_id, product_name, price, material, brand)
VALUES
('MS001', 'CAT007', 'Royal Oxford Shirt', 8500.00, 'Egyptian Cotton', 'Gucci'),
('MS002', 'CAT007', 'Luxury Silk Shirt', 15000.00, 'Pure Silk', 'Prada'),
('MS003', 'CAT007', 'Designer Linen Shirt', 11000.00, 'Premium Linen', 'Dior');

SELECT * FROM men_shirts;

INSERT INTO men_shirts_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- MS001
('MS001-V01', 'MS001', 'S', 'Black', 10),
('MS001-V02', 'MS001', 'S', 'White', 8),
('MS001-V03', 'MS001', 'S', 'Blue', 6),
('MS001-V04', 'MS001', 'M', 'Black', 12),
('MS001-V05', 'MS001', 'M', 'White', 10),
('MS001-V06', 'MS001', 'M', 'Blue', 8),
('MS001-V07', 'MS001', 'L', 'Black', 9),
('MS001-V08', 'MS001', 'L', 'White', 7),
('MS001-V09', 'MS001', 'L', 'Blue', 5),

-- MS002
('MS002-V01', 'MS002', 'S', 'Black', 6),
('MS002-V02', 'MS002', 'S', 'White', 5),
('MS002-V03', 'MS002', 'S', 'Blue', 4),
('MS002-V04', 'MS002', 'M', 'Black', 8),
('MS002-V05', 'MS002', 'M', 'White', 7),
('MS002-V06', 'MS002', 'M', 'Blue', 6),
('MS002-V07', 'MS002', 'L', 'Black', 7),
('MS002-V08', 'MS002', 'L', 'White', 6),
('MS002-V09', 'MS002', 'L', 'Blue', 5),

-- MS003
('MS003-V01', 'MS003', 'S', 'Black', 8),
('MS003-V02', 'MS003', 'S', 'White', 7),
('MS003-V03', 'MS003', 'S', 'Blue', 6),
('MS003-V04', 'MS003', 'M', 'Black', 10),
('MS003-V05', 'MS003', 'M', 'White', 9),
('MS003-V06', 'MS003', 'M', 'Blue', 7),
('MS003-V07', 'MS003', 'L', 'Black', 8),
('MS003-V08', 'MS003', 'L', 'White', 6),
('MS003-V09', 'MS003', 'L', 'Blue', 5);

SELECT * FROM men_shirts_variants;

CREATE TABLE men_pants (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_men_pants_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE men_pants_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_men_pants_variants_product
        FOREIGN KEY (product_id)
        REFERENCES men_pants(product_id),

    CONSTRAINT unique_men_pants_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO men_pants
(product_id, category_id, product_name, price, material, brand)
VALUES
('MP001', 'CAT008', 'Premium Tailored Trousers', 9000.00, 'Wool Blend', 'Gucci'),
('MP002', 'CAT008', 'Luxury Slim Fit Pants', 10500.00, 'Premium Cotton', 'Prada'),
('MP003', 'CAT008', 'Designer Formal Pants', 12000.00, 'Italian Wool', 'Dior');

SELECT * FROM men_pants;

INSERT INTO men_pants_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- MP001
('MP001-V01', 'MP001', 'S', 'Black', 8),
('MP001-V02', 'MP001', 'S', 'White', 6),
('MP001-V03', 'MP001', 'S', 'Blue', 7),
('MP001-V04', 'MP001', 'M', 'Black', 10),
('MP001-V05', 'MP001', 'M', 'White', 8),
('MP001-V06', 'MP001', 'M', 'Blue', 9),
('MP001-V07', 'MP001', 'L', 'Black', 7),
('MP001-V08', 'MP001', 'L', 'White', 5),
('MP001-V09', 'MP001', 'L', 'Blue', 8),

-- MP002
('MP002-V01', 'MP002', 'S', 'Black', 6),
('MP002-V02', 'MP002', 'S', 'White', 5),
('MP002-V03', 'MP002', 'S', 'Blue', 7),
('MP002-V04', 'MP002', 'M', 'Black', 9),
('MP002-V05', 'MP002', 'M', 'White', 7),
('MP002-V06', 'MP002', 'M', 'Blue', 10),
('MP002-V07', 'MP002', 'L', 'Black', 8),
('MP002-V08', 'MP002', 'L', 'White', 6),
('MP002-V09', 'MP002', 'L', 'Blue', 8),

-- MP003
('MP003-V01', 'MP003', 'S', 'Black', 5),
('MP003-V02', 'MP003', 'S', 'White', 6),
('MP003-V03', 'MP003', 'S', 'Blue', 5),
('MP003-V04', 'MP003', 'M', 'Black', 8),
('MP003-V05', 'MP003', 'M', 'White', 7),
('MP003-V06', 'MP003', 'M', 'Blue', 9),
('MP003-V07', 'MP003', 'L', 'Black', 7),
('MP003-V08', 'MP003', 'L', 'White', 5),
('MP003-V09', 'MP003', 'L', 'Blue', 7);

SELECT * FROM men_pants_variants;

CREATE TABLE men_jackets (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_men_jackets_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE men_jackets_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_men_jackets_variants_product
        FOREIGN KEY (product_id)
        REFERENCES men_jackets(product_id),

    CONSTRAINT unique_men_jackets_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO men_jackets
(product_id, category_id, product_name, price, material, brand)
VALUES
('MJKT001', 'CAT009', 'Luxury Leather Jacket', 30000.00, 'Genuine Leather', 'Gucci'),
('MJKT002', 'CAT009', 'Designer Wool Jacket', 24000.00, 'Premium Wool', 'Prada'),
('MJKT003', 'CAT009', 'Signature Bomber Jacket', 18000.00, 'Premium Nylon', 'Dior');

SELECT * FROM men_jackets;

INSERT INTO men_jackets_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- MJKT001
('MJKT001-V01', 'MJKT001', 'S', 'Black', 5),
('MJKT001-V02', 'MJKT001', 'S', 'White', 4),
('MJKT001-V03', 'MJKT001', 'S', 'Blue', 3),

('MJKT001-V04', 'MJKT001', 'M', 'Black', 7),
('MJKT001-V05', 'MJKT001', 'M', 'White', 6),
('MJKT001-V06', 'MJKT001', 'M', 'Blue', 5),

('MJKT001-V07', 'MJKT001', 'L', 'Black', 6),
('MJKT001-V08', 'MJKT001', 'L', 'White', 5),
('MJKT001-V09', 'MJKT001', 'L', 'Blue', 4),

-- MJKT002
('MJKT002-V01', 'MJKT002', 'S', 'Black', 6),
('MJKT002-V02', 'MJKT002', 'S', 'White', 5),
('MJKT002-V03', 'MJKT002', 'S', 'Blue', 4),

('MJKT002-V04', 'MJKT002', 'M', 'Black', 8),
('MJKT002-V05', 'MJKT002', 'M', 'White', 7),
('MJKT002-V06', 'MJKT002', 'M', 'Blue', 6),

('MJKT002-V07', 'MJKT002', 'L', 'Black', 7),
('MJKT002-V08', 'MJKT002', 'L', 'White', 6),
('MJKT002-V09', 'MJKT002', 'L', 'Blue', 5),

-- MJKT003
('MJKT003-V01', 'MJKT003', 'S', 'Black', 8),
('MJKT003-V02', 'MJKT003', 'S', 'White', 6),
('MJKT003-V03', 'MJKT003', 'S', 'Blue', 5),

('MJKT003-V04', 'MJKT003', 'M', 'Black', 10),
('MJKT003-V05', 'MJKT003', 'M', 'White', 8),
('MJKT003-V06', 'MJKT003', 'M', 'Blue', 7),

('MJKT003-V07', 'MJKT003', 'L', 'Black', 8),
('MJKT003-V08', 'MJKT003', 'L', 'White', 6),
('MJKT003-V09', 'MJKT003', 'L', 'Blue', 5);

SELECT * FROM men_jackets_variants;

CREATE TABLE men_sweatshirts (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_men_sweatshirts_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE men_sweatshirts_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_men_sweatshirts_variants_product
        FOREIGN KEY (product_id)
        REFERENCES men_sweatshirts(product_id),

    CONSTRAINT unique_men_sweatshirts_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO men_sweatshirts
(product_id, category_id, product_name, price, material, brand)
VALUES
('MSW001', 'CAT010', 'Luxury Cashmere Sweatshirt', 12000.00, 'Cashmere Blend', 'Gucci'),
('MSW002', 'CAT010', 'Designer Cotton Sweatshirt', 9500.00, 'Premium Cotton', 'Prada'),
('MSW003', 'CAT010', 'Signature Wool Sweatshirt', 14000.00, 'Merino Wool', 'Dior');

SELECT * FROM men_sweatshirts;

INSERT INTO men_sweatshirts_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- MSW001
('MSW001-V01', 'MSW001', 'S', 'Black', 8),
('MSW001-V02', 'MSW001', 'S', 'White', 6),
('MSW001-V03', 'MSW001', 'S', 'Blue', 5),

('MSW001-V04', 'MSW001', 'M', 'Black', 10),
('MSW001-V05', 'MSW001', 'M', 'White', 8),
('MSW001-V06', 'MSW001', 'M', 'Blue', 7),

('MSW001-V07', 'MSW001', 'L', 'Black', 8),
('MSW001-V08', 'MSW001', 'L', 'White', 6),
('MSW001-V09', 'MSW001', 'L', 'Blue', 5),

-- MSW002
('MSW002-V01', 'MSW002', 'S', 'Black', 7),
('MSW002-V02', 'MSW002', 'S', 'White', 6),
('MSW002-V03', 'MSW002', 'S', 'Blue', 5),

('MSW002-V04', 'MSW002', 'M', 'Black', 9),
('MSW002-V05', 'MSW002', 'M', 'White', 8),
('MSW002-V06', 'MSW002', 'M', 'Blue', 7),

('MSW002-V07', 'MSW002', 'L', 'Black', 7),
('MSW002-V08', 'MSW002', 'L', 'White', 6),
('MSW002-V09', 'MSW002', 'L', 'Blue', 5),

-- MSW003
('MSW003-V01', 'MSW003', 'S', 'Black', 6),
('MSW003-V02', 'MSW003', 'S', 'White', 5),
('MSW003-V03', 'MSW003', 'S', 'Blue', 4),

('MSW003-V04', 'MSW003', 'M', 'Black', 8),
('MSW003-V05', 'MSW003', 'M', 'White', 7),
('MSW003-V06', 'MSW003', 'M', 'Blue', 6),

('MSW003-V07', 'MSW003', 'L', 'Black', 7),
('MSW003-V08', 'MSW003', 'L', 'White', 5),
('MSW003-V09', 'MSW003', 'L', 'Blue', 4);

SELECT * FROM men_sweatshirts_variants;

CREATE TABLE men_hoodies (
    product_id VARCHAR(10) PRIMARY KEY,
    category_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    material VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,

    CONSTRAINT fk_men_hoodies_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE men_hoodies_variants (
    variant_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(10) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock_quantity INT NOT NULL,

    CONSTRAINT fk_men_hoodies_variants_product
        FOREIGN KEY (product_id)
        REFERENCES men_hoodies(product_id),

    CONSTRAINT unique_men_hoodies_variant
        UNIQUE (product_id, size, color)
);

INSERT INTO men_hoodies
(product_id, category_id, product_name, price, material, brand)
VALUES
('MH001', 'CAT011', 'Luxury Cashmere Hoodie', 15000.00, 'Cashmere Blend', 'Gucci'),
('MH002', 'CAT011', 'Designer Cotton Hoodie', 11000.00, 'Premium Cotton', 'Prada'),
('MH003', 'CAT011', 'Signature Wool Hoodie', 18000.00, 'Merino Wool', 'Dior');

SELECT * FROM men_hoodies;

INSERT INTO men_hoodies_variants
(variant_id, product_id, size, color, stock_quantity)
VALUES

-- MH001
('MH001-V01', 'MH001', 'S', 'Black', 8),
('MH001-V02', 'MH001', 'S', 'White', 6),
('MH001-V03', 'MH001', 'S', 'Blue', 5),

('MH001-V04', 'MH001', 'M', 'Black', 10),
('MH001-V05', 'MH001', 'M', 'White', 8),
('MH001-V06', 'MH001', 'M', 'Blue', 7),

('MH001-V07', 'MH001', 'L', 'Black', 8),
('MH001-V08', 'MH001', 'L', 'White', 6),
('MH001-V09', 'MH001', 'L', 'Blue', 5),

-- MH002
('MH002-V01', 'MH002', 'S', 'Black', 7),
('MH002-V02', 'MH002', 'S', 'White', 6),
('MH002-V03', 'MH002', 'S', 'Blue', 5),

('MH002-V04', 'MH002', 'M', 'Black', 9),
('MH002-V05', 'MH002', 'M', 'White', 8),
('MH002-V06', 'MH002', 'M', 'Blue', 7),

('MH002-V07', 'MH002', 'L', 'Black', 7),
('MH002-V08', 'MH002', 'L', 'White', 6),
('MH002-V09', 'MH002', 'L', 'Blue', 5),

-- MH003
('MH003-V01', 'MH003', 'S', 'Black', 6),
('MH003-V02', 'MH003', 'S', 'White', 5),
('MH003-V03', 'MH003', 'S', 'Blue', 4),

('MH003-V04', 'MH003', 'M', 'Black', 8),
('MH003-V05', 'MH003', 'M', 'White', 7),
('MH003-V06', 'MH003', 'M', 'Blue', 6),

('MH003-V07', 'MH003', 'L', 'Black', 7),
('MH003-V08', 'MH003', 'L', 'White', 5),
('MH003-V09', 'MH003', 'L', 'Blue', 4);

SELECT * FROM men_hoodies_variants;