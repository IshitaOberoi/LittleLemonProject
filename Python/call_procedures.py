import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="LittleLemonDB"
)

cursor = connection.cursor()

print("GetMaxQuantity")
cursor.callproc("GetMaxQuantity")

for result in cursor.stored_results():
    print(result.fetchall())

print("\nAddBooking")
cursor.callproc(
    "AddBooking",
    [6, 2, "2024-06-20", 4]
)

for result in cursor.stored_results():
    print(result.fetchall())

print("\nUpdateBooking")
cursor.callproc(
    "UpdateBooking",
    [6, "2024-06-22"]
)

for result in cursor.stored_results():
    print(result.fetchall())

print("\nManageBooking")
cursor.callproc(
    "ManageBooking",
    ["2024-06-23", 2, 3]
)

for result in cursor.stored_results():
    print(result.fetchall())

print("\nCancelBooking")
cursor.callproc(
    "CancelBooking",
    [6]
)

for result in cursor.stored_results():
    print(result.fetchall())

cursor.close()
connection.close()