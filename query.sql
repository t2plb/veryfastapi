CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO customers (name, email, password) VALUES
('Alice Smith', 'alice@example.com', 'password123'),
('Bob Johnson', 'bob@example.com', 'securepass456'),
('Charlie Brown', 'charlie@example.com', 'mypassword789');

INSERT INTO products (name, price) VALUES
('Laptop', 999.99),
('Smartphone', 499.99),
('Headphones', 79.99);

INSERT INTO orders (customer_id, product_id, quantity) VALUES
(1, 1, 1), -- Alice buys 1 Laptop
(2, 2, 2), -- Bob buys 2 Smartphones
(3, 3, 3); -- Charlie buys 3 Headphones