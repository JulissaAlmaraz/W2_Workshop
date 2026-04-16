DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

--  Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
;

--  Dogs table
CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    dog_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
;

--  Walks table
CREATE TABLE Walks (
    walk_id INT PRIMARY KEY,
    dog_id INT,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    walker_name VARCHAR(50),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
;
