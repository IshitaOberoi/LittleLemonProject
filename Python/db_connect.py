import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="LittleLemonDB"
)

if connection.is_connected():
    print("Connected to Little Lemon Database")