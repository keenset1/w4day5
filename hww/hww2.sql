INSERT INTO Salesperson(
    first_Name,
    last_name, 
    Customer_ID
)VAlUES(
    'carl',
    'delcy',
    1
);


INSERT INTO Customer(
    first_Name,
    last_name,
    Car_ID
)VAlUES(
    'lauro',
    'Pierre',
    1
);



INSERT INTO Car(
    car_Make,
    car_Model,
    car_Year,
    Serial_Number,
    Salesperson_ID,
    Customer_ID 
)VAlUES(
    'Jeep',
    'Gran cherokee',
    2016,
    1,
    1,
    1

);



INSERT INTO Invoice(
     Invoice_ID,
    Salesperson_ID,
    Customer_ID,
    Car_ID 
)VAlUES(
    1,
    1,
    1,
    1
);



INSERT INTO Service_Ticket(
    Customer_ID,
    Car_ID
)VAlUES(
    1,
    1
);



INSERT INTO Service_History(
    Car_ID,
    Service_Ticket,
    Mechanic_ID,
    Date_of_Service
)VAlUES(
    1,
    1,
    1,
    01/17/22

);



INSERT INTO Mechanic(
    first_Name,
    last_name
)VAlUES(
    'Kami'
    'Dupreville'
);


INSERT INTO service_Mechanic_ID(
      Mechanic_ID,
    Service_Ticket
)VAlUES(
    1,
    1
);


INSERT INTO Car_Inventory(
    Car_ID,
    Stock_Quantity
)VAlUES(
    1,
    1
);


INSERT INTO Repairs(
Service_Ticket_ID,
    Descriptions,
    Cost

)VAlUES(
    1,
    needs a tune up,
    1100
);