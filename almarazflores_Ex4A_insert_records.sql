USE lana_dog_walking;

INSERT INTO Clients (FirstName, LastName, PhoneNumber, Address)
VALUES
('Emily', 'Johnson', '312-555-0184', '1452 W Lake St, Chicago, IL'),
('Michael', 'Brown', '773-555-0192', '889 N Clark St, Chicago, IL'),
('Sarah', 'Davis', '312-555-0147', '2034 S Wabash Ave, Chicago, IL'),
('David', 'Miller', '708-555-0173', '56 E 47th St, Chicago, IL'),
('Jessica', 'Wilson', '773-555-0119', '3200 N Lincoln Ave, Chicago, IL'),
('Daniel', 'Anderson', '312-555-0166', '410 W Division St, Chicago, IL'),
('Ashley', 'Thomas', '630-555-0138', '7800 W Belmont Ave, Chicago, IL'),
('Matthew', 'Taylor', '773-555-0155', '1500 N Milwaukee Ave, Chicago, IL'),
('Olivia', 'Moore', '312-555-0122', '600 S State St, Chicago, IL'),
('James', 'Jackson', '708-555-0188', '9900 S Halsted St, Chicago, IL');

INSERT INTO Dogs (Name, Breed, Notes, ClientID)
VALUES
('Buddy', 'Golden Retriever', 'Friendly and calm', 1),
('Max', 'Labrador', 'High energy', 2),
('Bella', 'Poodle', 'Shy but sweet', 3),
('Charlie', 'Beagle', 'Loves sniffing everything', 4),
('Lucy', 'Mixed', 'Older dog, slow pace', 5),
('Rocky', 'German Shepherd', 'Strong puller', 6),
('Luna', 'Husky', 'Very active puppy', 7),
('Daisy', 'Cocker Spaniel', 'Good temperament', 8),
('Cooper', 'Border Collie', 'Extremely energetic', 9),
('Sadie', 'Bulldog', 'Calm and relaxed', 10);

INSERT INTO Walks (Date, Time, Duration, Status)
VALUES
('2026-04-16', '09:00:00', 30, 'Completed'),
('2026-04-16', '10:00:00', 45, 'Completed'),
('2026-04-16', '11:00:00', 30, 'Completed'),
('2026-04-16', '13:00:00', 60, 'Completed'),
('2026-04-16', '14:00:00', 30, 'Completed'),
('2026-04-16', '15:00:00', 45, 'Completed'),
('2026-04-17', '09:00:00', 30, 'Scheduled'),
('2026-04-17', '10:00:00', 60, 'Scheduled'),
('2026-04-17', '11:00:00', 45, 'Scheduled'),
('2026-04-17', '13:00:00', 30, 'Scheduled');

INSERT INTO WalkDogs (WalkID, DogID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Payments (ClientID, WalkID, Amount, PaymentMethod, Date)
VALUES
(1, 1, 25.00, 'Card', '2026-04-16'),
(2, 2, 30.00, 'Cash', '2026-04-16'),
(3, 3, 25.00, 'Venmo', '2026-04-16'),
(4, 4, 40.00, 'Card', '2026-04-16'),
(5, 5, 25.00, 'Cash', '2026-04-16'),
(6, 6, 30.00, 'Card', '2026-04-16'),
(7, 7, 25.00, 'Venmo', '2026-04-17'),
(8, 8, 40.00, 'Card', '2026-04-17'),
(9, 9, 30.00, 'Cash', '2026-04-17'),
(10, 10, 25.00, 'Card', '2026-04-17');

SELECT * FROM dogs