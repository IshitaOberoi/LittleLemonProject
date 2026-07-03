DROP DATABASE IF EXISTS LittleLemonDB;

CREATE DATABASE LittleLemonDB;

USE LittleLemonDB;

CREATE TABLE Customers(
                          CustomerID INT PRIMARY KEY,
                          FullName VARCHAR(100),
                          ContactNumber VARCHAR(20),
                          Email VARCHAR(100)
);

CREATE TABLE MenuItems(
                          MenuItemsID INT PRIMARY KEY,
                          CourseName VARCHAR(100),
                          StarterName VARCHAR(100),
                          DessertName VARCHAR(100)
);

CREATE TABLE Menus(
                      MenuID INT PRIMARY KEY,
                      MenuItemsID INT,
                      MenuName VARCHAR(100),
                      Cuisine VARCHAR(100),
                      FOREIGN KEY(MenuItemsID)
                          REFERENCES MenuItems(MenuItemsID)
);

CREATE TABLE Orders(
                       OrderID INT PRIMARY KEY,
                       MenuID INT,
                       CustomerID INT,
                       Quantity INT,
                       TotalCost DECIMAL(10,2),

                       FOREIGN KEY(MenuID)
                           REFERENCES Menus(MenuID),

                       FOREIGN KEY(CustomerID)
                           REFERENCES Customers(CustomerID)
);

CREATE TABLE Bookings(
                         BookingID INT PRIMARY KEY,
                         CustomerID INT,
                         BookingDate DATE,
                         TableNumber INT,

                         FOREIGN KEY(CustomerID)
                             REFERENCES Customers(CustomerID)
);