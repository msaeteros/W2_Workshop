USE lana_dog_walking;

INSERT INTO Customer
    (First_Name, Last_Name, Phone_Number, Email)
VALUES
    ('Maria', 'Smith', '718-555-0101', 'maria.smith@example.com'),
    ('James', 'Brown', '718-555-0102', 'james.brown@example.com'),
    ('Olivia', 'Garcia', '718-555-0103', 'olivia.garcia@example.com'),
    ('Noah', 'Wilson', '718-555-0104', 'noah.wilson@example.com'),
    ('Emma', 'Davis', '718-555-0105', 'emma.davis@example.com'),
    ('Liam', 'Martinez', '718-555-0106', 'liam.martinez@example.com'),
    ('Ava', 'Rodriguez', '718-555-0107', 'ava.rodriguez@example.com'),
    ('Ethan', 'Lee', '718-555-0108', 'ethan.lee@example.com'),
    ('Sophia', 'Clark', '718-555-0109', 'sophia.clark@example.com'),
    ('Mason', 'Lewis', '718-555-0110', 'mason.lewis@example.com'),
    ('Isabella', 'Walker', '718-555-0111', 'isabella.walker@example.com');

SELECT * FROM Customer;

INSERT INTO Dog
    (Customer_ID, Dog_Name, Breed, Age, special_instructions)
VALUES
    (1, 'Max', 'Golden Retriever', 4, 'Likes long walks'),
    (2, 'Bella', 'Beagle', 3, 'Use a short leash'),
    (3, 'Charlie', 'Poodle', 5, 'Walk at a relaxed pace'),
    (4, 'Luna', 'Labrador', 2, 'Enjoys park walks'),
    (5, 'Daisy', 'Cocker Spaniel', 6, 'Bring water'),
    (6, 'Rocky', 'Bulldog', 4, 'Avoid long walks'),
    (7, 'Milo', 'Shih Tzu', 3, 'Keep away from large dogs'),
    (8, 'Coco', 'Chihuahua', 2, 'Use a harness'),
    (9, 'Teddy', 'Pomeranian', 5, 'Walk gently'),
    (10, 'Ruby', 'Border Collie', 3, 'Needs active walks'),
    (11, 'Leo', 'Dachshund', 4, 'Avoid steep hills');

SELECT * FROM Dog;

INSERT INTO ScheduledWalks
    (Dog_ID, Walk_Date, Start_Time, End_Time)
VALUES
    (1, '2026-10-24', '09:00:00', '10:00:00'),
    (2, '2026-10-24', '10:00:00', '10:30:00'),
    (3, '2026-10-24', '11:00:00', '12:00:00'),
    (4, '2026-10-25', '09:00:00', '10:00:00'),
    (5, '2026-10-25', '10:30:00', '11:00:00'),
    (6, '2026-10-25', '12:00:00', '12:30:00'),
    (7, '2026-10-26', '09:00:00', '09:30:00'),
    (8, '2026-10-26', '10:00:00', '10:30:00'),
    (9, '2026-10-26', '11:00:00', '12:00:00'),
    (10, '2026-10-27', '09:00:00', '10:00:00'),
    (11, '2026-10-27', '10:30:00', '11:00:00');

SELECT * FROM ScheduledWalks;

INSERT INTO Payment
    (Customer_ID, Walk_ID, Payment_Method, Payment_Date,
     Total_Bill, Payment_Status)
VALUES
    (1, 1, 'Credit Card', '2026-10-23 08:00:00', 30.00, 'Paid'),
    (2, 2, 'Cash', '2026-10-23 08:15:00', 20.00, 'Paid'),
    (3, 3, 'Debit Card', '2026-10-23 08:30:00', 30.00, 'Paid'),
    (4, 4, 'Credit Card', '2026-10-24 08:00:00', 30.00, 'Paid'),
    (5, 5, 'Cash', '2026-10-24 08:30:00', 20.00, 'Paid'),
    (6, 6, 'Debit Card', '2026-10-24 09:00:00', 20.00, 'Paid'),
    (7, 7, 'Credit Card', '2026-10-25 08:00:00', 20.00, 'Paid'),
    (8, 8, 'Cash', '2026-10-25 08:30:00', 20.00, 'Paid'),
    (9, 9, 'Debit Card', '2026-10-25 09:00:00', 30.00, 'Paid'),
    (10, 10, 'Credit Card', '2026-10-26 08:00:00', 30.00, 'Paid'),
    (11, 11, 'Cash', '2026-10-26 08:30:00', 20.00, 'Paid');

SELECT * FROM Payment;