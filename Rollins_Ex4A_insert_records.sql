USE lana_dog_walking_fixed;

INSERT INTO Customer (customer_id, first_and_last_name, phone, email, home_address) VALUES
(101, 'John Smith', '312-555-1001', 'john@email.com', 'Chicago, IL'),
(102, 'Maria Lopez', '312-555-1002', 'maria@email.com', 'Chicago, IL'),
(103, 'David Kim', '312-555-1003', 'david@email.com', 'Chicago, IL'),
(104, 'Sarah Johnson', '312-555-1004', 'sarah@email.com', 'Chicago, IL'),
(105, 'Chris Brown', '312-555-1005', 'chris@email.com', 'Chicago, IL'),
(106, 'Emily Davis', '312-555-1006', 'emily@email.com', 'Chicago, IL'),
(107, 'Michael Lee', '312-555-1007', 'michael@email.com', 'Chicago, IL'),
(108, 'Jessica White', '312-555-1008', 'jessica@email.com', 'Chicago, IL'),
(109, 'Daniel Garcia', '312-555-1009', 'daniel@email.com', 'Chicago, IL'),
(110, 'Ashley Martinez', '312-555-1010', 'ashley@email.com', 'Chicago, IL');

SELECT * FROM Customer;

CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    pet_name VARCHAR(100) NOT NULL,
    pet_breed VARCHAR(100),
    age INT,
    special_notes TEXT,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO Dogs (dog_id, pet_name, pet_breed, age, special_notes, customer_id) VALUES
(1, 'Max', 'Golden Retriever', 5, 'Friendly and energetic', 101),
(2, 'Bella', 'Labrador', 3, 'Loves treats', 102),
(3, 'Charlie', 'Poodle', 4, 'Afraid of loud noises', 103),
(4, 'Luna', 'Husky', 2, 'Pulls leash', 104),
(5, 'Rocky', 'Bulldog', 6, 'Slow walker', 105),
(6, 'Daisy', 'Beagle', 3, 'Sniffs everything', 106),
(7, 'Milo', 'Chihuahua', 2, 'Barks a lot', 107),
(8, 'Lucy', 'Boxer', 4, 'Very playful', 108),
(9, 'Cooper', 'German Shepherd', 5, 'Protective', 109),
(10, 'Bailey', 'Dachshund', 3, 'Digs often', 110);

CREATE TABLE Walker (
    walker_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20)
);

INSERT INTO Walker (walker_id, name, phone) VALUES
(201, 'Lana Green', '312-555-2001'),
(202, 'Jake Wilson', '312-555-2002'),
(203, 'Nina Patel', '312-555-2003');

CREATE TABLE Walk (
    walk_id INT PRIMARY KEY,
    date DATE,
    walk_start_time TIME,
    walk_end_time TIME,
    status VARCHAR(20),
    dog_id INT,
    walker_id INT,
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walker(walker_id)
);
INSERT INTO Walk (walk_id, date, walk_start_time, walk_end_time, status, dog_id, walker_id) VALUES
(301, '2026-04-10', '09:00:00', '09:30:00', 'completed', 1, 201),
(302, '2026-04-10', '10:00:00', '10:30:00', 'completed', 2, 202),
(303, '2026-04-10', '11:00:00', '11:30:00', 'completed', 3, 203),
(304, '2026-04-11', '09:00:00', '09:30:00', 'completed', 4, 201),
(305, '2026-04-11', '10:00:00', '10:30:00', 'completed', 5, 202),
(306, '2026-04-11', '11:00:00', '11:30:00', 'scheduled', 6, 203),
(307, '2026-04-12', '09:00:00', '09:30:00', 'completed', 7, 201),
(308, '2026-04-12', '10:00:00', '10:30:00', 'completed', 8, 202),
(309, '2026-04-12', '11:00:00', '11:30:00', 'completed', 9, 203),
(310, '2026-04-13', '09:00:00', '09:30:00', 'scheduled', 10, 201);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    amount DECIMAL(6,2),
    date DATE,
    method VARCHAR(50),
    walk_id INT,
    FOREIGN KEY (walk_id) REFERENCES Walk(walk_id)
);
INSERT INTO Payment (payment_id, amount, date, method, walk_id) VALUES
(401, 20.00, '2026-04-10', 'card', 301),
(402, 20.00, '2026-04-10', 'cash', 302),
(403, 25.00, '2026-04-10', 'card', 303),
(404, 20.00, '2026-04-11', 'card', 304),
(405, 20.00, '2026-04-11', 'cash', 305),
(406, 20.00, '2026-04-11', 'card', 306),
(407, 22.00, '2026-04-12', 'card', 307),
(408, 22.00, '2026-04-12', 'cash', 308),
(409, 25.00, '2026-04-12', 'card', 309),
(410, 20.00, '2026-04-13', 'card', 310);

