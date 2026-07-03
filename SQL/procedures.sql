USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS "Max Quantity"
FROM Orders;
END//

CREATE PROCEDURE AddBooking(
    IN booking_id INT,
    IN customer_id INT,
    IN table_number INT,
    IN booking_date DATE
)
BEGIN

INSERT INTO Bookings
VALUES(
          booking_id,
          customer_id,
          booking_date,
          table_number
      );

SELECT 'New booking added' AS Message;

END//

CREATE PROCEDURE UpdateBooking(
    IN table_number INT,
    IN booking_date DATE
)
BEGIN

UPDATE Bookings

SET BookingDate=booking_date

WHERE TableNumber=table_number;

SELECT 'Booking updated' AS Message;

END//

CREATE PROCEDURE CancelBooking(
    IN table_number INT
)
BEGIN

DELETE FROM Bookings

WHERE TableNumber=table_number;

SELECT 'Booking cancelled' AS Message;

END//

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

WHERE BookingDate=booking_date

  AND TableNumber=table_number;

IF booking_count>0 THEN

ROLLBACK;

SELECT CONCAT('Table ',table_number,' is already booked.') AS Message;

ELSE

INSERT INTO Bookings(CustomerID,BookingDate,TableNumber)

VALUES(customer_id,booking_date,table_number);

COMMIT;

SELECT 'Booking confirmed.' AS Message;

END IF;

END//

DELIMITER ;