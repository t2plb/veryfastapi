CREATE TABLE Customer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    postalCode VARCHAR(20),
    city VARCHAR(100),
    profileFirstName VARCHAR(255),
    profileLastName VARCHAR(255),
    companyName VARCHAR(255)
);

CREATE TABLE Order (
    id INT PRIMARY KEY AUTO_INCREMENT,
    createdAt DATETIME NOT NULL,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customer(id) ON DELETE CASCADE
);

CREATE TABLE Product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    color VARCHAR(50),
    stock INT NOT NULL
);

CREATE TABLE Order_Product (
    orderId INT,
    productId INT,
    PRIMARY KEY (orderId, productId),
    FOREIGN KEY (orderId) REFERENCES Order(id) ON DELETE CASCADE,
    FOREIGN KEY (productId) REFERENCES Product(id) ON DELETE CASCADE
);