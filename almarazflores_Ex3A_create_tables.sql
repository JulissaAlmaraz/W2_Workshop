DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Breed VARCHAR(50),
    Notes TEXT,
    ClientID INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

CREATE TABLE Walks (
    WalkID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Time TIME,
    Duration INT,
    Status VARCHAR(50)
);

CREATE TABLE Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    WalkID INT,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    Date DATE,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID)
);

CREATE TABLE WalkDogs (
	WalkDogID INT AUTO_INCREMENT PRIMARY KEY,
    WalkID INT,
    DogID INT,
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
    );