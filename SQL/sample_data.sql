USE LittleLemonDB;

INSERT INTO Customers (FullName, ContactNumber, Email) VALUES
                                                           ('John Smith', '9876543210', 'john@gmail.com'),
                                                           ('Emily Davis', '9876543211', 'emily@gmail.com'),
                                                           ('Michael Brown', '9876543212', 'michael@gmail.com'),
                                                           ('Sophia Wilson', '9876543213', 'sophia@gmail.com'),
                                                           ('David Miller', '9876543214', 'david@gmail.com');

INSERT INTO Staff (FullName, Role, Salary) VALUES
                                               ('Mario G.', 'Manager', 60000),
                                               ('Anna K.', 'Chef', 50000),
                                               ('Tom Lee', 'Waiter', 30000),
                                               ('Sara Ali', 'Receptionist', 28000),
                                               ('Chris Ray', 'Assistant Chef', 35000);

INSERT INTO MenuItems (CourseName, StarterName, DessertName) VALUES
                                                                 ('Pizza', 'Garlic Bread', 'Ice Cream'),
                                                                 ('Burger', 'Fries', 'Brownie'),
                                                                 ('Pasta', 'Soup', 'Cheesecake'),
                                                                 ('Steak', 'Salad', 'Pudding'),
                                                                 ('Biryani', 'Spring Rolls', 'Gulab Jamun');

INSERT INTO Menus (MenuName, Cuisine, MenuItemID) VALUES
                                                      ('Italian Delight', 'Italian', 1),
                                                      ('American Feast', 'American', 2),
                                                      ('Classic Italian', 'Italian', 3),
                                                      ('Premium Grill', 'Continental', 4),
                                                      ('Indian Special', 'Indian', 5);

INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) VALUES
                                                                ('2024-06-10', 1, 1),
                                                                ('2024-06-11', 2, 2),
                                                                ('2024-06-12', 3, 3),
                                                                ('2024-06-13', 4, 4),
                                                                ('2024-06-14', 5, 5);

INSERT INTO Orders (OrderDate, Quantity, TotalCost, CustomerID, MenuID, StaffID) VALUES
                                                                                     ('2024-06-10', 2, 40.00, 1, 1, 1),
                                                                                     ('2024-06-10', 1, 20.00, 2, 2, 2),
                                                                                     ('2024-06-11', 3, 75.00, 3, 3, 3),
                                                                                     ('2024-06-11', 2, 60.00, 4, 4, 4),
                                                                                     ('2024-06-12', 4, 120.00, 5, 5, 5),
                                                                                     ('2024-06-13', 1, 25.00, 1, 2, 3),
                                                                                     ('2024-06-13', 5, 150.00, 2, 1, 2),
                                                                                     ('2024-06-14', 2, 55.00, 3, 5, 4),
                                                                                     ('2024-06-15', 3, 90.00, 4, 4, 1),
                                                                                     ('2024-06-16', 2, 45.00, 5, 3, 5);