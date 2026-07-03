import mysql.connector

connection=mysql.connector.connect(

    host="localhost",
    user="root",
    password="YOUR_PASSWORD",
    database="LittleLemonDB"

)

cursor=connection.cursor()

cursor.execute(

    "CALL AddBooking(%s,%s,%s,%s)",

    (99,99,99,'2022-12-10')

)

print(cursor.fetchall())

cursor.execute(

    "CALL UpdateBooking(%s,%s)",

    (99,'2022-01-10')

)

print(cursor.fetchall())

cursor.execute(

    "CALL CancelBooking(%s)",

    (99,)

)

print(cursor.fetchall())

connection.commit()

cursor.close()

connection.close()