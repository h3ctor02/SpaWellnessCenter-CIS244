USE SpaWellnessCenter;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    DOB DATE,
    Membership VARCHAR(20)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Specialty VARCHAR(100),
    ContactInfo VARCHAR(100)
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Duration INT,
    Price DECIMAL(10,2)
);

CREATE TABLE Rooms (
    RoomNumber INT PRIMARY KEY,
    RoomType VARCHAR(50),
    Availability VARCHAR(20)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2),
    Quantity INT
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    ServiceID INT,
    RoomNumber INT,
    DateTime DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    AppointmentID INT,
    Method VARCHAR(50),
    Amount DECIMAL(10,2),
    PaymentDue DATE,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
INSERT INTO Customers VALUES
(1, 'Maria Lopez', '9141234567', 'maria@gmail.com', '1990-05-01', 'Gold'),
(2, 'John Smith', '9172345678', 'john@yahoo.com', '1985-08-20', 'Silver'),
(3, 'Emily Davis', '6463456789', 'emily@outlook.com', '1993-02-11', 'None'),
(4, 'Daniel Kim', '7184567890', 'daniel@gmail.com', '1989-12-03', 'Gold'),
(5, 'Sophia Martinez', '3475678901', 'sophia@aol.com', '1995-07-18', 'Bronze');

INSERT INTO Employees VALUES
(1, 'Alice Perez', 'Aesthetician', 'Facials', 'alice@spa.com'),
(2, 'Carlos Reyes', 'Massage Therapist', 'Deep Tissue', 'carlos@spa.com'),
(3, 'Nina Brown', 'Aesthetician', 'Microneedling', 'nina@spa.com'),
(4, 'Tommy Wu', 'Receptionist', 'N/A', 'tommy@spa.com'),
(5, 'Grace Lee', 'Massage Therapist', 'Swedish Massage', 'grace@spa.com');

INSERT INTO Services VALUES
(1, 'Swedish Massage', 'Relaxing full-body massage', 60, 120.00),
(2, 'Deep Tissue Massage', 'Firm pressure massage', 60, 130.00),
(3, 'European Facial', 'Hydrating facial', 50, 100.00),
(4, 'Microneedling', 'Skin rejuvenation', 45, 200.00),
(5, 'Eyebrow Waxing', 'Eyebrow shaping', 15, 25.00);

INSERT INTO Rooms VALUES
(101, 'Massage Room', 'Available'),
(102, 'Facial Room', 'Occupied'),
(103, 'Waxing Room', 'Available'),
(104, 'Massage Room', 'Available'),
(105, 'Facial Room', 'Occupied');

INSERT INTO Products VALUES
(1, 'Facial Cleanser', 'Gentle cleanser', 25.00, 10),
(2, 'Massage Oil', 'Relaxing oil', 30.00, 20),
(3, 'Microneedle Serum', 'Skin firming serum', 80.00, 5),
(4, 'Eyebrow Wax', 'High-quality wax', 15.00, 30),
(5, 'Toner', 'Skin toner', 20.00, 25);

INSERT INTO Appointments VALUES
(1, 1, 2, 1, 101, '2025-05-15 14:00:00'),
(2, 2, 1, 3, 102, '2025-05-16 10:00:00'),
(3, 3, 3, 4, 103, '2025-05-16 11:30:00'),
(4, 4, 5, 2, 104, '2025-05-17 13:00:00'),
(5, 5, 4, 5, 105, '2025-05-18 15:00:00');

INSERT INTO Payments VALUES
(1, 1, 'Credit Card', 120.00, '2025-05-15'),
(2, 2, 'Cash', 100.00, '2025-05-16'),
(3, 3, 'Credit Card', 200.00, '2025-05-16'),
(4, 4, 'Gift Card', 130.00, '2025-05-17'),
(5, 5, 'Cash', 25.00, '2025-05-18');
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Services;
SELECT * FROM Rooms;
SELECT * FROM Products;
SELECT * FROM Appointments;
SELECT * FROM Payments;
USE SpaWellnessCenter;
SHOW TABLES;
SELECT COUNT(*) FROM Customers;
INSERT INTO Customers VALUES
(1, 'Maria Lopez', '9141234567', 'maria@gmail.com', '1990-05-01', 'Gold'),
(2, 'John Smith', '9172345678', 'john@yahoo.com', '1985-08-20', 'Silver'),
(3, 'Emily Davis', '6463456789', 'emily@outlook.com', '1993-02-11', 'None'),
(4, 'Daniel Kim', '7184567890', 'daniel@gmail.com', '1989-12-03', 'Gold'),
(5, 'Sophia Martinez', '3475678901', 'sophia@aol.com', '1995-07-18', 'Bronze');

INSERT INTO Employees VALUES
(1, 'Alice Perez', 'Aesthetician', 'Facials', 'alice@spa.com'),
(2, 'Carlos Reyes', 'Massage Therapist', 'Deep Tissue', 'carlos@spa.com'),
(3, 'Nina Brown', 'Aesthetician', 'Microneedling', 'nina@spa.com'),
(4, 'Tommy Wu', 'Receptionist', 'N/A', 'tommy@spa.com'),
(5, 'Grace Lee', 'Massage Therapist', 'Swedish Massage', 'grace@spa.com');

INSERT INTO Services VALUES
(1, 'Swedish Massage', 'Relaxing full-body massage', 60, 120.00),
(2, 'Deep Tissue Massage', 'Firm pressure massage', 60, 130.00),
(3, 'European Facial', 'Hydrating facial', 50, 100.00),
(4, 'Microneedling', 'Skin rejuvenation', 45, 200.00),
(5, 'Eyebrow Waxing', 'Eyebrow shaping', 15, 25.00);

INSERT INTO Rooms VALUES
(101, 'Massage Room', 'Available'),
(102, 'Facial Room', 'Occupied'),
(103, 'Waxing Room', 'Available'),
(104, 'Massage Room', 'Available'),
(105, 'Facial Room', 'Occupied');

INSERT INTO Products VALUES
(1, 'Facial Cleanser', 'Gentle cleanser', 25.00, 10),
(2, 'Massage Oil', 'Relaxing oil', 30.00, 20),
(3, 'Microneedle Serum', 'Skin firming serum', 80.00, 5),
(4, 'Eyebrow Wax', 'High-quality wax', 15.00, 30),
(5, 'Toner', 'Skin toner', 20.00, 25);

INSERT INTO Appointments VALUES
(1, 1, 2, 1, 101, '2025-05-15 14:00:00'),
(2, 2, 1, 3, 102, '2025-05-16 10:00:00'),
(3, 3, 3, 4, 103, '2025-05-16 11:30:00'),
(4, 4, 5, 2, 104, '2025-05-17 13:00:00'),
(5, 5, 4, 5, 105, '2025-05-18 15:00:00');

INSERT INTO Payments VALUES
(1, 1, 'Credit Card', 120.00, '2025-05-15'),
(2, 2, 'Cash', 100.00, '2025-05-16'),
(3, 3, 'Credit Card', 200.00, '2025-05-16'),
(4, 4, 'Gift Card', 130.00, '2025-05-17'),
(5, 5, 'Cash', 25.00, '2025-05-18');

SELECT * FROM Customers;

