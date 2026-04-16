DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- =========================
-- Clients Table
-- =========================
CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);
-- =========================
-- Dogs Table
-- =========================
CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    DogName VARCHAR(50),
    DogBreed VARCHAR(50),
    ClientID INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================
-- Walks Table
-- =========================
CREATE TABLE Walks (
    WalkID INT AUTO_INCREMENT PRIMARY KEY,
    WalkDate DATE,
    WalkTime TIME,
    Duration INT,
    Status VARCHAR(50)
);

-- =========================
-- WalkDogs (Junction Table)
-- =========================
CREATE TABLE WalkDogs (
    WalkDogID INT AUTO_INCREMENT PRIMARY KEY,
    WalkID INT,
    DogID INT,
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================
-- Payments Table
-- =========================
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    PaymentDate DATE,
    ClientID INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);