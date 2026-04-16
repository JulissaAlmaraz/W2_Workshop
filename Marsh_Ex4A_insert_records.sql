USE lana_dog_walking;
INSERT INTO Clients (ClientID, FirstName, LastName, PhoneNumber, Address) VALUES
(1, 'Lana', 'Reed', '555-111-2222', '12 Oak St, Chicago, IL'),
(2, 'Mark', 'Davis', '555-222-3333', '45 Pine Ave, Chicago, IL'),
(3, 'Sophie', 'Turner', '555-333-4444', '78 Maple Dr, Naperville, IL'),
(4, 'James', 'Smith', '555-444-5555', '90 Elm St, Aurora, IL'),
(5, 'Nina', 'Lopez', '555-555-6666', '33 Birch Rd, Wheaton, IL'),
(6, 'Chris', 'Evans', '555-666-7777', '22 Cedar Ln, Glen Ellyn, IL'),
(7, 'Maya', 'Patel', '555-777-8888', '14 Walnut St, Lombard, IL'),
(8, 'Jake', 'Miller', '555-888-9999', '67 Spruce St, Batavia, IL'),
(9, 'Emma', 'Clark', '555-999-0000', '88 Aspen Way, Geneva, IL'),
(10, 'Noah', 'Brown', '555-000-1111', '101 Willow Dr, St Charles, IL');


-- =========================
-- 🐕 DOGS
-- =========================
INSERT INTO Dogs (DogID, DogName, DogBreed, ClientID) VALUES
(1, 'Max', 'Golden Retriever', 1),
(2, 'Bella', 'Labrador', 2),
(3, 'Rocky', 'Bulldog', 3),
(4, 'Luna', 'Poodle', 4),
(5, 'Duke', 'German Shepherd', 5),
(6, 'Milo', 'Beagle', 6),
(7, 'Zoe', 'Husky', 7),
(8, 'Leo', 'Boxer', 8),
(9, 'Ruby', 'Dachshund', 9),
(10, 'Charlie', 'Corgi', 10);


-- =========================
-- 🚶 WALKS
-- =========================
INSERT INTO Walks (WalkDate, WalkTime, Duration, Status) VALUES
('2026-04-17', '09:00:00', 30, 'Finished'),
('2026-04-17', '10:00:00', 45, 'Finished'),
('2026-04-17', '11:00:00', 30, 'Finished'),
('2026-04-18', '08:30:00', 60, 'Scheduled'),
('2026-04-18', '09:30:00', 30, 'Scheduled'),
('2026-04-18', '10:30:00', 45, 'Scheduled'),
('2026-04-19', '09:00:00', 30, 'Scheduled'),
('2026-04-19', '10:00:00', 30, 'Scheduled'),
('2026-04-19', '11:00:00', 45, 'Scheduled'),
('2026-04-20', '12:00:00', 30, 'Scheduled');

-- =========================
-- 💳 PAYMENTS
-- =========================
INSERT INTO Payments (PaymentID, Amount, PaymentMethod, Date, ClientID) VALUES
(1, 30, 'cash', '2026-04-17', 1),
(2, 45, 'card', '2026-04-17', 2),
(3, 30, 'cash', '2026-04-17', 3),
(4, 60, 'card', '2026-04-18', 4),
(5, 30, 'cash', '2026-04-18', 5),
(6, 45, 'card', '2026-04-18', 6),
(7, 30, 'cash', '2026-04-19', 7),
(8, 30, 'card', '2026-04-19', 8),
(9, 45, 'cash', '2026-04-19', 9),
(10, 30, 'card', '2026-04-20', 10);


-- =========================
-- 🔗 WALKDOGS (Bridge Table)
-- =========================
INSERT INTO WalkDogs (WalkDogID, WalkID, DogID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

DESCRIBE Payments;
INSERT INTO Payments (PaymentID, Amount, PaymentMethod, PaymentDate, ClientID) VALUES
(1, 30, 'Cash', '2026-04-17', 1),
(2, 45, 'Card', '2026-04-17', 2),
(3, 30, 'Cash', '2026-04-17', 3),
(4, 60, 'Card', '2026-04-18', 4),
(5, 30, 'Cash', '2026-04-18', 5),
(6, 45, 'Card', '2026-04-18', 6),
(7, 30, 'Cash', '2026-04-19', 7),
(8, 30, 'Card', '2026-04-19', 8),
(9, 45, 'Cash', '2026-04-19', 9),
(10, 30, 'Card', '2026-04-20', 10);
DESCRIBE walkdogs;
INSERT INTO WalkDogs (WalkID, DogID) VALUES
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