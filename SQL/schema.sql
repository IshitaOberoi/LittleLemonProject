DROP DATABASE IF EXISTS LittleLemonDB;

CREATE DATABASE LittleLemonDB;

USE LittleLemonDB;

CREATE TABLE Customers (
                           CustomerID INT AUTO_INCREMENT PRIMARY KEY,
                           FullName VARCHAR(100) NOT NULL,
                           ContactNumber VARCHAR(20),
                           Email VARCHAR(100)
);

CREATE TABLE Staff (
                       StaffID INT AUTO_INCREMENT PRIMARY KEY,
                       FullName VARCHAR(100) NOT NULL,
                       Role VARCHAR(50),
                       Salary DECIMAL(10,2)
);

CREATE TABLE MenuItems (
                           MenuItemID INT AUTO_INCREMENT PRIMARY KEY,
                           CourseName VARCHAR(100),
                           StarterName VARCHAR(100),
                           DessertName VARCHAR(100)
);

CREATE TABLE Menus (
                       MenuID INT AUTO_INCREMENT PRIMARY KEY,
                       MenuName VARCHAR(100),
                       Cuisine VARCHAR(50),
                       MenuItemID INT,
                       FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);

CREATE TABLE Bookings (
                          BookingID INT AUTO_INCREMENT PRIMARY KEY,
                          BookingDate DATE NOT NULL,
                          TableNumber INT NOT NULL,
                          CustomerID INT,
                          FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Orders (
                        OrderID INT AUTO_INCREMENT PRIMARY KEY,
                        OrderDate DATE,
                        Quantity INT,
                        TotalCost DECIMAL(10,2),
                        CustomerID INT,
                        MenuID INT,
                        StaffID INT,
                        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
                        FOREIGN KEY (MenuID) REFERENCES Menus(MenuID),
                        FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);