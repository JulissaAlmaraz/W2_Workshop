use lana_dog_walking;

INSERT INTO Client (FirstName, LastName, PhoneNumber, Address)
VALUES
('Olivia', 'Martinez', '555-100-0001', '12 Pine St'),
('Ethan', 'Clark', '555-100-0002', '34 Maple Ave'),
('Ava', 'Lewis', '555-100-0003', '56 Cedar Rd'),
('Noah', 'Walker', '555-100-0004', '78 Birch Ln'),
('Sophia', 'Hall', '555-100-0005', '90 Elm St'),
('Liam', 'Allen', '555-100-0006', '11 Oak Dr'),
('Isabella', 'Young', '555-100-0007', '22 Spruce Ct'),
('Mason', 'King', '555-100-0008', '33 Willow Way'),
('Mia', 'Scott', '555-100-0009', '44 Cherry Blvd'),
('Lucas', 'Green', '555-100-0010', '55 Aspen Pl');

INSERT INTO Dogs (Name, Breed, Age, Notes, ClientID)
VALUES
('Charlie', 'Beagle', 4, 'Energetic', 4),
('Bella', 'Labrador', 2, 'Friendly', 5),
('Cooper', 'Husky', 5, 'Loves cold weather', 6),
('Daisy', 'Pug', 3, 'Very social', 7),
('Rocky', 'Boxer', 6, 'Strong walker', 8),
('Milo', 'Shih Tzu', 2, 'Small and calm', 9),
('Zoe', 'Golden Retriever', 3, 'Great with kids', 10),
('Toby', 'Dachshund', 4, 'Stubborn but cute', 11),
('Sadie', 'German Shepherd', 5, 'Highly trained', 12),
('Jack', 'Bulldog', 4, 'Lazy walker', 13);

INSERT INTO Walks (WalkDate, WalkTime, Duration, Status)
VALUES
('2026-04-18', '09:00:00', 30, 'Scheduled'),
('2026-04-18', '10:00:00', 45, 'Completed'),
('2026-04-18', '11:00:00', 60, 'Scheduled'),
('2026-04-19', '09:30:00', 30, 'Scheduled'),
('2026-04-19', '12:00:00', 45, 'Completed'),
('2026-04-20', '08:00:00', 60, 'Scheduled'),
('2026-04-20', '10:30:00', 30, 'Completed'),
('2026-04-21', '09:00:00', 45, 'Scheduled'),
('2026-04-21', '11:00:00', 60, 'Scheduled'),
('2026-04-22', '10:00:00', 30, 'Completed');

INSERT INTO Walk_Dog (WalkID, DogID)
VALUES
(4, 5),
(4, 6),
(5, 7),
(5, 8),
(6, 9),
(6, 10),
(7, 11),
(8, 12),
(9, 13),
(10, 1);

INSERT INTO Payment (ClientID, WalkID, Amount, PaymentDate, Method)
VALUES
(4, 4, 35.00, '2026-04-18', 'Card'),
(5, 5, 40.00, NULL, 'Cash'),
(6, 6, 50.00, '2026-04-20', 'Card'),
(7, 7, 30.00, '2026-04-20', 'Cash'),
(8, 8, 45.00, NULL, 'Card'),
(9, 9, 60.00, '2026-04-21', 'Card'),
(10, 10, 25.00, '2026-04-22', 'Cash'),
(11, 1, 30.00, NULL, 'Cash'),
(12, 2, 40.00, '2026-04-18', 'Card'),
(13, 3, 55.00, '2026-04-19', 'Card');

select *
from walks;
select *
from dogs;
