USE lana_dog_walking;

INSERT INTO Customer
    (First_Name, Last_Name, Phone_Number, Email)
VALUES
	('Tom', 'Jerry', '518-525-1101', 'tomjerry@gmail.com'),
    ('Olivia', 'Bennett', '518-555-0102', 'olivia.bennett@example.com'),
    ('Marcus', 'Lee', '518-555-0103', 'marcus.lee@example.com'),
    ('Sophia', 'Patel', '518-555-0104', 'sophia.patel@example.com'),
    ('Daniel', 'Brooks', '518-555-0105', 'daniel.brooks@example.com'),
    ('Ava', 'Martinez', '518-555-0106', 'ava.martinez@example.com'),
    ('Ethan', 'Carter', '518-555-0107', 'ethan.carter@example.com'),
    ('Mia', 'Robinson', '518-555-0108', 'mia.robinson@example.com'),
    ('Noah', 'Thompson', '518-555-0109', 'noah.thompson@example.com'),
    ('Chloe', 'Nguyen', '518-555-0110', 'chloe.nguyen@example.com'),
    ('Liam', 'Foster', '518-555-0111', 'liam.foster@example.com');
    
INSERT INTO Dog
    (Customer_ID, Dog_Name, Breed, Age, Instructions)
VALUES
    (1, 'Spike', 'Pitbull', 15, 'Good luck'),
    (2, 'Luna', 'Golden Retriever', 4, 'Loves treats'),
    (3, 'Milo', 'Beagle', 3, 'Keep on leash'),
    (4, 'Bella', 'Labrador Retriever', 6, 'Avoid loud noises'),
    (5, 'Rocky', 'German Shepherd', 5, 'Needs water breaks'),
    (6, 'Daisy', 'Poodle', 2, 'Shy with strangers'),
    (7, 'Max', 'Bulldog', 7, 'Short walks only'),
    (8, 'Coco', 'Shih Tzu', 4, 'Avoid large dogs'),
    (9, 'Teddy', 'Corgi', 3, 'Chases squirrels'),
    (10, 'Nala', 'Husky', 5, 'Pulls on leash'),
    (11, 'Charlie', 'Boxer', 6, 'Prefers quiet routes');
    
INSERT INTO Walks
    (Dog_ID, Walk_Date, Time_Start, Time_End)
VALUES
    (1, '2026-10-25', '09:00:00', '09:30:00'),
    (1, '2026-10-26', '09:00:00', '09:30:00'),
    (2, '2026-10-25', '10:00:00', '10:30:00'),
    (3, '2026-10-25', '11:00:00', '12:00:00'),
    (4, '2026-10-25', '12:30:00', '13:00:00'),
    (5, '2026-10-25', '14:00:00', '14:30:00'),
    (6, '2026-10-25', '15:00:00', '16:00:00'),
    (7, '2026-10-26', '10:00:00', '10:30:00'),
    (8, '2026-10-26', '11:00:00', '12:00:00'),
    (9, '2026-10-26', '13:00:00', '13:30:00'),
    (10, '2026-10-26', '14:00:00', '15:00:00');
    
INSERT INTO Payment
    (Walk_ID, Payment_Method, Payment_Date, Total_Bill, Payment_Status)
VALUES
    (1, 'Cash', '2026-10-25', 25.00, 'Paid'),
    (2, 'Card', '2026-10-26', 25.00, 'Paid'),
    (3, 'Cash', '2026-10-25', 25.00, 'Paid'),
    (4, 'Card', '2026-10-25', 40.00, 'Paid'),
    (5, 'Online', '2026-10-25', 25.00, 'Paid'),
    (6, 'Cash', '2026-10-25', 25.00, 'Paid'),
    (7, 'Card', '2026-10-25', 40.00, 'Paid'),
    (8, 'Online', '2026-10-26', 25.00, 'Paid'),
    (9, 'Card', '2026-10-26', 40.00, 'Paid'),
    (10, 'Cash', '2026-10-26', 25.00, 'Paid'),
    (11, 'Online', '2026-10-26', 40.00, 'Paid');