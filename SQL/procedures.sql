USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS MaxQuantity
FROM Orders;
END //

CREATE PROCEDURE AddBooking(
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES (booking_id, booking_date, table_number, customer_id);

SELECT 'New booking added' AS Message;
END //

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT,
    IN booking_date DATE
)
BEGIN
UPDATE Bookings
SET BookingDate = booking_date
WHERE BookingID = booking_id;

SELECT 'Booking updated' AS Message;
END //

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
DELETE FROM Bookings
WHERE BookingID = booking_id;

SELECT 'Booking cancelled' AS Message;
END //

CREATE PROCEDURE ManageBooking(
    IN booking_date DATE,
    IN table_number INT,
    IN customer_id INT
)
BEGIN
    DECLARE booking_count INT;

START TRANSACTION;

SELECT COUNT(*)
INTO booking_count
FROM Bookings
WHERE BookingDate = booking_date
  AND TableNumber = table_number;

IF booking_count > 0 THEN
        ROLLBACK;
SELECT CONCAT('Table ', table_number, ' is already booked.') AS Message;
ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (booking_date, table_number, customer_id);

COMMIT;
SELECT 'Booking confirmed.' AS Message;
END IF;
END //

DELIMITER ;