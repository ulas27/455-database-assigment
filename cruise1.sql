CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    PassengerName VARCHAR(30)
);

CREATE TABLE Cruise (
    CruiseNo INT PRIMARY KEY,
    CruiseName VARCHAR(35)
);

CREATE TABLE ExcursionLeader (
    ExcursionLeaderID INT PRIMARY KEY,
    ExcursionLeader VARCHAR(20)
);

CREATE TABLE Excursion (
    ExcursionNo INT PRIMARY KEY,
    ExcursionName VARCHAR(35),
    Port VARCHAR(35),
    Price INT,
    ExcursionLeaderID INT,
    FOREIGN KEY (ExcursionLeaderID) REFERENCES ExcursionLeader(ExcursionLeaderID)
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




-- Insert into Passenger table
INSERT INTO Passenger (PassengerID, PassengerName) VALUES
(1, 'Weber'),
(2, 'Elshaw'),
(3, 'Brown');

-- Insert into Cruise table
INSERT INTO Cruise (CruiseNo, CruiseName) VALUES
(1012, 'Baltic Highlights'),
(13, 'Baltic Highlights'),
(22, 'Baltic Highlights'),
(32, 'Baltic Highlights'),
(21, 'Fjords'),
(23, 'Fjords'),
(31, 'Baltic Highlights'),
(33, 'Baltic Highlights');

-- Insert into Excursion Leader table
INSERT INTO ExcursionLeader (ExcursionLeaderID, ExcursionLeader) VALUES
(1, 'Wermter'),
(2, 'Smith'),
(3, 'Jones'),
(4, 'Malone'),
(5, 'Ham');

-- Insert into Excursion table
INSERT INTO Excursion (ExcursionNo, ExcursionName, Port, Price, ExcursionLeaderID) VALUES
(1, 'Little Mermaid', 'Copenhagen', 200, 1),
(2, 'Little Mermaid', 'Copenhagen', 150, 1),
(3, 'Museums', 'Oslo', 300, 2),
(4, 'Palaces', 'St Petersburg', 100, 3),
(5, 'Biking', 'Bergen', 50, 4),
(6, 'Hiking', 'Bergen', 75, 4),
(7, 'Puffins', 'Oslo', 100, 5),
(8, 'Museums', 'Holden', 150, 2),
(9, 'Palaces', 'St Petersburg', 300, 3);

-- Insert into Orders table
INSERT INTO Orders (OrderID, PassengerID, Cabin, CruiseNo) VALUES
(1, 1, 2345, 1012),
(2, 1, 2345, 13),
(3, 1, 2345, 22),
(4, 1, 2345, 32),
(5, 2, 3777, 21),
(6, 2, 3777, 23),
(7, 2, 3777, 23),
(8, 3, 8124, 31),
(9, 3, 8124, 33);

-- Insert into Order Cost table
INSERT INTO OrderCost (OrderID, ExcursionNo, Quantity, TotalCost) VALUES
(1, 1, 5, 1000),
(2, 2, 2, 300),
(3, 3, 1, 300),
(4, 4, 3, 300),
(5, 5, 4, 200),
(6, 6, 10, 750),
(7, 7, 5, 500),
(8, 8, 3, 450),
(9, 9, 2, 600);
