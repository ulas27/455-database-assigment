CREATE TABLE Cost(
Cost_ID INT PRIMARY KEY,
Quantity INT,
Price_per_person INT,
Total_Price INT
);

CREATE TABLE Passenger(
Passenger_ID INT PRIMARY KEY,
Passenger_Name VARCHAR(30),
Order_ID INT,
FOREIGN KEY (Order_ID) REFERENCES Cost(Cost_ID)
);


CREATE TABLE Ship(
Cruise_No INT PRIMARY KEY,
Cabin_No INT,
Cruise_Name VARCHAR(35),
Port VARCHAR(35),
Ship_ID INT,
FOREIGN KEY (Ship_ID) REFERENCES Passenger(Passenger_ID)
);

CREATE TABLE Excursion(
Excursion_No INT PRIMARY KEY,
Excursion_Leader varchar(20),
Excursion_Leader_ID INT,
Excursion_name varchar(30),
Trip_ID INT,
FOREIGN KEY (Trip_ID) REFERENCES Ship(Cruise_No)
);

INSERT INTO Excursion (Excursion_No, Excursion_Leader, Excursion_Leader_ID, Excursion_Name, Trip_ID) VALUES
('E0001', 'Wermter', 'C001', 'Little Mermaid', 'T1012'),
('E0001', 'Wermter', 'C001', 'Little Mermaid', 'T0013'),
('E0002', 'Smith', 'O002', 'Museums', 'T0022'),
('E1008', 'Jones', 'P002', 'Palaces', 'T0032'),
('E0070', 'Malone', 'B001', 'Biking', 'T0021'),
('E0070', 'Malone', 'B111', 'Hiking', 'T0022'),
('E0101', 'Ham', 'H002', 'Puffins', 'T0031'),
('E0002', 'Smith', 'O002', 'Museums', 'T0023'),
('E1008', 'Jones', 'P002', 'Palaces', 'T0033');

INSERT INTO Ship (ShipID, Cabin_No, Cruise_No, Cruise_Name, Port) VALUES
('S001', 2345, 1012, 'Baltic Highlights', 'Copenhagen'),
('S001', 2345, 1012, 'Baltic Highlights', 'Copenhagen'),
('S001', 2345, 1012, 'Baltic Highlights', 'Oslo'),
('S001', 2345, 1012, 'Baltic Highlights', 'St Petersburg'),
('S005', 3777, 2121, 'Fjords', 'Bergen'),
('S005', 3777, 2121, 'Fjords', 'Bergen'),
('S005', 3777, 2121, 'Fjords', 'Holden'),
('S003', 8124, 1012, 'Baltic Highlights', 'Oslo'),
('S003', 8124, 1012, 'Baltic Highlights', 'St Petersburg');