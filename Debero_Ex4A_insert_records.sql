USE lana_dog_walking;


-- CUSTOMERS

INSERT INTO Customers (first_name, last_name, phone, email) VALUES
('Eyerusalem', 'Debero', '555-100-0001', 'eyerusalem@email.com'),
('Kiki', 'Wu', '555-100-0002', 'kiki@email.com'),
('Tracy', 'Arista', '555-100-0003', 'tracy@email.com'),
('Julissa', 'AlmarazFlores', '555-100-0004', 'julissa@email.com'),
('Ariel', 'Rollins', '555-100-0005', 'ariel@email.com'),
('Emma', 'Johnson', '555-100-0006', 'emma@email.com'),
('Liam', 'Smith', '555-100-0007', 'liam@email.com'),
('Olivia', 'Brown', '555-100-0008', 'olivia@email.com'),
('Noah', 'Davis', '555-100-0009', 'noah@email.com'),
('Ava', 'Wilson', '555-100-0010', 'ava@email.com');


-- DOGS

INSERT INTO Dogs (dog_name, breed, age, customer_id) VALUES
('Buddy', 'Golden Retriever', 3, 1),
('Max', 'Labrador', 4, 2),
('Bella', 'Poodle', 2, 3),
('Charlie', 'Bulldog', 5, 4),
('Lucy', 'Beagle', 3, 5),
('Rocky', 'German Shepherd', 6, 6),
('Daisy', 'Shih Tzu', 2, 7),
('Cooper', 'Husky', 4, 8),
('Luna', 'Chihuahua', 1, 9),
('Sadie', 'Boxer', 5, 10);


-- WALKS

INSERT INTO Walks (dog_id, walk_date, walk_time, duration_minutes, walker_name) VALUES
(1, '2026-04-18', '09:00:00', 30, 'Kiki Wu'),
(2, '2026-04-18', '10:00:00', 45, 'Tracy Arista'),
(3, '2026-04-18', '11:00:00', 60, 'Julissa AlmarazFlores'),
(4, '2026-04-19', '09:30:00', 30, 'Ariel Rollins'),
(5, '2026-04-19', '10:30:00', 45, 'Kiki Wu'),
(6, '2026-04-20', '11:30:00', 60, 'Tracy Arista'),
(7, '2026-04-20', '09:00:00', 30, 'Julissa AlmarazFlores'),
(8, '2026-04-21', '10:00:00', 45, 'Ariel Rollins'),
(9, '2026-04-21', '11:00:00', 30, 'Kiki Wu'),
(10, '2026-04-22', '12:00:00', 60, 'Tracy Arista');


-- PAYMENTS

INSERT INTO Payments (customer_id, walk_id, payment_date) VALUES
(1, 1, '2026-04-18'),
(2, 2, '2026-04-18'),
(3, 3, '2026-04-18'),
(4, 4, '2026-04-19'),
(5, 5, '2026-04-19'),
(6, 6, '2026-04-20'),
(7, 7, '2026-04-20'),
(8, 8, '2026-04-21'),
(9, 9, '2026-04-21'),
(10, 10, '2026-04-22');


-- VERIFY

SELECT * FROM Customers;
SELECT * FROM Dogs;
SELECT * FROM Walks;
SELECT * FROM Payments;