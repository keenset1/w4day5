CREATE TABLE Salesperson (
    Salesperson_ID INT PRIMARY KEY,
    first_Name VARCHAR(255),
    last_name VARCHAR(255),
    Customer_ID INT
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    first_Name VARCHAR(255),
    last_name VARCHAR(255),
    Car_ID INT
);

CREATE TABLE Car (
    Car_ID INT PRIMARY KEY,
    car_Make VARCHAR(255),
    car_Model VARCHAR(255),
    car_Year VARCHAR(255),
    Serial_Number VARCHAR(255),
    Salesperson_ID INT,
    Customer_ID INT,
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Invoice (
    Invoice_ID INT PRIMARY KEY,
    Salesperson_ID INT,
    Customer_ID INT,
    Car_ID INT,
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID)
);

CREATE TABLE Service_Ticket (
    Service_Ticket_ID INT PRIMARY KEY,
    Customer_ID INT,
    Car_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID)
);

CREATE TABLE Service_History (
    Service_History_ID INT PRIMARY KEY,
    Car_ID INT,
    Service_Ticket INT,
    Mechanic_ID INT,
    Date_of_Service DATE,
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID),
    FOREIGN KEY (Service_Ticket_ID) REFERENCES Service_Ticket(Service_Ticket_ID),
    FOREIGN KEY (Mechanic_ID) REFERENCES Mechanic(Mechanic_ID)
);

CREATE TABLE Mechanic (
    Mechanic_ID INT PRIMARY KEY,
   first_Name VARCHAR(255),
    last_name VARCHAR(255),
);



CREATE TABLE service_Mechanic (
    service_Mechanic_ID INT PRIMARY KEY,
   Mechanic_ID VARCHAR(255),
    Service_Ticket VARCHAR(255),
);

CREATE TABLE Car_Inventory (
    Car_Inventory_ID INT PRIMARY KEY,
    Car_ID INT,
    Stock_Quantity INT,
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID)
);

CREATE TABLE Repairs (
    Repairs_ID INT PRIMARY KEY,
    Service_Ticket_ID INT,
    Descriptions VARCHAR(255),
    Cost DECIMAL(10,2),
    FOREIGN KEY (Service_Ticket_ID) REFERENCES Service_Ticket(Service_Ticket_ID)
);