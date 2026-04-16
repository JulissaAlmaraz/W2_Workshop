DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

-- Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Dogs table
CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Walks table
CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    walker_name VARCHAR(50),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);

-- Payments table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    walk_id INT NOT NULL,
    amount DECIMAL(6,2),
    payment_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id)
);
