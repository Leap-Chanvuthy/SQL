
-- SQL Query SELECT JOINS 

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100),
  City VARCHAR(100)
);

INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES (1, 'John Smith', 'New York'),
       (2, 'Jane Doe', 'Los Angeles'),
       (3, 'Mike Johnson', 'Chicago');

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  ProductName VARCHAR(100),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductName)
VALUES (1, 1, '2023-01-05', 'Widget A'),
       (2, 2, '2023-02-10', 'Widget B'),
       (3, 1, '2023-03-15', 'Widget C'),
       (4, 3, '2023-04-20', 'Widget A');

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;



SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;



SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

