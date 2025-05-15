/*Creating a new table for orders and customers*/
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

/*Populating the Orders table*/
INSERT INTO Orders (OrderID, CustomerName)
VALUES
    (101, 'John Muriuki'),
    (102, 'Jane Wanjiku'),
    (103, 'Emily Tracy');

/*Creating a new table for order details*/
CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

/*Populating the OrderDetails_2NF table*/
INSERT INTO OrderDetails_2NF (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);