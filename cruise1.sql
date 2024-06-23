CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    PassengerName VARCHAR(30)
);

CREATE TABLE Cruise (
    CruiseNo INT PRIMARY KEY,
    CruiseName VARCHAR(35)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    PassengerID INT,
    Cabin INT,
    CruiseNo INT,
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (CruiseNo) REFERENCES Cruise(CruiseNo)
);

CREATE TABLE OrderCost (
    OrderID INT,
    ExcursionNo INT,
    Quantity INT,
    TotalCost INT,
    PRIMARY KEY (OrderID, ExcursionNo),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ExcursionNo) REFERENCES Excursion(ExcursionNo)
);

CREATE TABLE Excursion (
    ExcursionNo INT PRIMARY KEY,
    ExcursionName VARCHAR(35),
    Port VARCHAR(35),
    Price INT,
    ExcursionLeaderID INT,
    FOREIGN KEY (ExcursionLeaderID) REFERENCES ExcursionLeader(ExcursionLeaderID)
);

CREATE TABLE ExcursionLeader (
    ExcursionLeaderID INT PRIMARY KEY,
    ExcursionLeader VARCHAR(20)
);



-- Insert into Cost table
INSERT INTO Cost (Cost_ID, Quantity, Price_per_person, Total_Price) VALUES
('CO23_1', 5, 200, 1000),
('CO23_2', 2, 150, 300),
('CO23_3', 1, 300, 300),
('CO23_4', 3, 100, 300),
('CO32_1', 4, 50, 200),
('CO32_2', 10, 75, 750),
('CO32_3', 5, 100, 500),
('CO01_1', 3, 150, 450),
('CO01_2', 2, 300, 600);

-- Insert into Passenger table
INSERT INTO Passenger (Passenger_ID, Passenger_Name, Order_ID) VALUES
('P001_1', 'Weber', 'CO23_1'),
('P001_2', 'Weber', 'CO23_2'),
('P001_3', 'Weber', 'CO23_3'),
('P001_4', 'Weber', 'CO23_4'),
('P005_1', 'Elshaw', 'CO32_1'),
('P005_2', 'Elshaw', 'CO32_2'),
('P005_3', 'Elshaw', 'CO32_3'),
('P003_1', 'Brown', 'CO01_1'),
('P003_2', 'Brown', 'CO01_2');

-- Insert into Ship table
INSERT INTO Ship (Cruise_No, Cabin_No, Cruise_Name, Port, Ship_ID) VALUES
('T1012', 2345, 'Baltic Highlights', 'Copenhagen', 'P001_1'),
('T0013', 2345, 'Baltic Highlights', 'Copenhagen', 'P001_2'),
('T0022_1', 2345, 'Baltic Highlights', 'Oslo', 'P001_3'),
('T0032', 2345, 'Baltic Highlights', 'St Petersburg', 'P001_4'),
('T0021', 3777, 'Fjords', 'Bergen', 'P005_1'),
('T0022_2', 3777, 'Fjords', 'Bergen', 'P005_2'),
('T0023', 3777, 'Fjords', 'Holden', 'P005_3'),
('T0031', 8124, 'Baltic Highlights', 'Oslo', 'P003_1'),
('T0033', 8124, 'Baltic Highlights', 'St Petersburg', 'P003_2');

-- Insert into Excursion table
INSERT INTO Excursion (Excursion_Leader_ID, Excursion_Leader, Excursion_No, Excursion_name, Trip_ID) VALUES
('E0001_1', 'Wermter', 'C001_1', 'Little Mermaid', 'T1012'),
('E0001_2', 'Wermter', 'C001_2', 'Little Mermaid', 'T0013'),
('E0002_1', 'Smith', 'O002_1', 'Museums', 'T0022_1'),
('E1008_1', 'Jones', 'P002_1', 'Palaces', 'T0032'),
('E0070_1', 'Malone', 'B001', 'Biking', 'T0021'),
('E0070_2', 'Malone', 'B111', 'Hiking', 'T0022_2'),
('E0101_1', 'Ham', 'H002', 'Puffins', 'T0031'),
('E0002_2', 'Smith', 'O002_2', 'Museums', 'T0023'),
('E1008_2', 'Jones', 'P002_2', 'Palaces', 'T0033');
