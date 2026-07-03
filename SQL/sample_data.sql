USE LittleLemonDB;

INSERT INTO Customers VALUES
                          (1,'John Smith','9876543210','john@gmail.com'),
                          (2,'Emily Davis','9876543211','emily@gmail.com'),
                          (3,'Chris Lee','9876543212','chris@gmail.com'),
                          (4,'Sophia Brown','9876543213','sophia@gmail.com'),
                          (5,'David Wilson','9876543214','david@gmail.com');

INSERT INTO MenuItems VALUES
                          (1,'Pizza','Garlic Bread','Ice Cream'),
                          (2,'Burger','Fries','Brownie'),
                          (3,'Pasta','Soup','Cheesecake');

INSERT INTO Menus VALUES
                      (1,1,'Italian','Italian'),
                      (2,2,'American','American'),
                      (3,3,'Classic','Italian');

INSERT INTO Orders VALUES
                       (1,1,1,2,40),
                       (2,2,2,5,120),
                       (3,3,3,3,75),
                       (4,1,4,4,90),
                       (5,2,5,1,25);

INSERT INTO Bookings VALUES
                         (1,1,'2022-10-10',5),
                         (2,2,'2022-11-12',3),
                         (3,3,'2022-12-15',2);