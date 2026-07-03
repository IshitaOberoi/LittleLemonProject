import mysql.connector

connection=mysql.connector.connect(

    host="localhost",
    user="root",
    password="YOUR_PASSWORD",
    database="LittleLemonDB"

)

print("Connected")

cursor=connection.cursor()