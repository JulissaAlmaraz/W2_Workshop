drop schema if exists lana_dog_walking;
create schema lana_dog_walking;
use lana_dog_walking;

CREATE TABLE Client (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(150)
);

INSERT INTO Client (FirstName, LastName, PhoneNumber, Address)
VALUES 
('Sarah', 'Johnson', '555-123-4567', '123 Main St'),
('Michael', 'Brown', '555-222-1111', '45 Lake Ave'),
('Emily', 'Davis', '555-333-4444', '78 Oak Rd');

CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Breed VARCHAR(50),
    Age INT,
    Notes VARCHAR(255),
    ClientID INT,
    CONSTRAINT fk_client
        FOREIGN KEY (ClientID)
        REFERENCES Client(ClientID)
);

INSERT INTO Dogs (Name, Breed, Age, Notes, ClientID)
VALUES 
('Buddy', 'Golden Retriever', 3, 'Very friendly', 1),
('Max', 'German Shepherd', 5, 'Protective', 1),
('Luna', 'Poodle', 2, 'Shy around strangers', 2),
('Rocky', 'Bulldog', 4, 'Loves short walks', 3);


CREATE TABLE Walks (
    WalkID INT AUTO_INCREMENT PRIMARY KEY,
    WalkDate DATE NOT NULL,
    WalkTime TIME NOT NULL,
    Duration INT,
    Status VARCHAR(20)
);
INSERT INTO Walks (WalkDate, WalkTime, Duration, Status)
VALUES 
('2026-04-16', '10:00:00', 30, 'Scheduled'),
('2026-04-16', '14:00:00', 45, 'Completed'),
('2026-04-17', '09:00:00', 60, 'Scheduled');

CREATE TABLE Walk_Dog (
    WalkDogID INT AUTO_INCREMENT PRIMARY KEY,
    WalkID INT,
    DogID INT,
    CONSTRAINT fk_walk
        FOREIGN KEY (WalkID) REFERENCES Walks(WalkID),
    CONSTRAINT fk_dog
        FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);
  
  INSERT INTO Walk_Dog (WalkID, DogID)
VALUES 
(1, 1),
(1, 2),
(2, 3),
(3, 4);
  
ALTER TABLE Walk_Dog
ADD CONSTRAINT unique_walk_dog UNIQUE (WalkID, DogID);

CREATE TABLE Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    WalkID INT,
    Amount DECIMAL(8,2) NOT NULL,
    PaymentDate DATE,
    Method VARCHAR(20),
    CONSTRAINT fk_payment_client
        FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    CONSTRAINT fk_payment_walk
        FOREIGN KEY (WalkID) REFERENCES Walks(WalkID)
);

INSERT INTO Payment (ClientID, WalkID, Amount, PaymentDate, Method)
VALUES 
(1, 1, 40.00, '2026-04-16', 'Card'),
(2, 2, 20.00, NULL, 'Cash'),
(3, 3, 25.00, '2026-04-17', 'Card');

SELECT 
    PaymentID,
    PaymentDate,
    CASE 
        WHEN PaymentDate IS NULL THEN 'Pending'
        ELSE 'Paid'
    END AS PaymentStatus
FROM Payment;

SELECT 
    c.FirstName,
    c.LastName,
    d.Name AS DogName,
    w.WalkDate,
    w.WalkTime,
    w.Status,
    p.Amount,
    CASE 
        WHEN p.PaymentDate IS NULL THEN 'Pending'
        ELSE 'Paid'
    END AS PaymentStatus
FROM Client c
JOIN Dogs d ON c.ClientID = d.ClientID
JOIN Walk_Dog wd ON d.DogID = wd.DogID
JOIN Walks w ON wd.WalkID = w.WalkID
LEFT JOIN Payment p ON w.WalkID = p.WalkID;

select *
from walk_dog;

select *
from client;
