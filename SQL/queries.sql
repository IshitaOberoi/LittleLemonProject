USE LittleLemonDB;

SELECT * FROM Customers;
SELECT * FROM Staff;
SELECT * FROM MenuItems;
SELECT * FROM Menus;
SELECT * FROM Orders;
SELECT * FROM Bookings;

CALL GetMaxQuantity();

CALL AddBooking(
    6,
    2,
    '2024-06-20',
    4
);

CALL UpdateBooking(
    6,
    '2024-06-22'
);

CALL ManageBooking(
    '2024-06-23',
    2,
    3
);

CALL CancelBooking(
    6
);