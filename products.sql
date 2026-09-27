DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    price INTEGER,
    stock INTEGER
);

INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P001', 'Earphones', 'Electronics', 499, 50);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P002', 'Bluetooth Speaker', 'Audio', 699, 40);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P003', 'Smart Watch', 'Wearable', 1299, 25);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P004', 'Keyboard', 'Computer', 899, 60);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P005', 'Headphones', 'Audio', 1999, 30);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P006', 'Power Bank', 'Mobile Accessories', 2599, 20);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P007', 'Wireless Mouse', 'Computer', 599, 80);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P008', 'Fitness Band', 'Wearable', 1499, 35);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P009', 'Laptop Stand', 'Computer', 799, 45);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P010', 'Gaming Controller', 'Gaming', 2199, 22);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P011', 'Smartphone Case', 'Mobile Accessories', 299, 120);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P012', 'LED Lamp', 'Home Appliance', 899, 55);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P013', 'Portable Charger', 'Mobile Accessories', 1199, 40);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P014', 'Webcam', 'Electronics', 1699, 18);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P015', 'Air Purifier', 'Home Appliance', 4999, 12);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P016', 'Gaming Headset', 'Gaming', 2999, 15);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P017', 'Router', 'Electronics', 1899, 28);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P018', 'Tablet Stand', 'Computer', 499, 65);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P019', 'Smart Bulb', 'Home Appliance', 599, 90);
INSERT INTO products (product_id, product_name, category, price, stock) VALUES ('P020', 'External SSD', 'Computer', 3499, 20);
