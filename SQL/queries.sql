USE LittleLemonDB;

CALL GetMaxQuantity();

CALL AddBooking(
99,
99,
99,
'2022-12-10'
);

CALL UpdateBooking(
99,
'2022-01-10'
);

CALL CancelBooking(
99
);

CALL ManageBooking(
'2022-12-20',
5,
1
);

CALL ManageBooking(
'2022-10-10',
5,
2
);