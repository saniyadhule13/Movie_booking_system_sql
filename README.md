📌 Project Overview

This project is a Movie Ticket Booking System built using SQL.
It manages movies, customers, bookings, and payments using four well-structured relational tables.
The system can generate useful insights such as top movies, highest-paying customers, booking trends, earnings, and more.

📂 Database Structure
1️⃣ Movies Table

Stores details about each movie.
Columns:

Movie_id

Title

Director

Duration_min

Movie_Type

Language

2️⃣ Customers Table

Stores customer information.
Columns:

Customer_id

Customer_name

Email

3️⃣ Bookings Table

Stores booking details.
Columns:

Booking_id

Customer_id (FK → Customers)

Movie_id (FK → Movies)

Booking_date

total_amount

4️⃣ Payments Table

Stores payment records.
Columns:

Payment_id

Booking_id (FK → Bookings)

Payment_method

Amount

Payment_date

🔍 Key Features

✔ View movies, customers, bookings, and payments
✔ Analyze total earnings and booking trends
✔ Find top movies and highest-paying customers
✔ Identify most used payment methods
✔ Rank movies based on duration
✔ Display recent bookings
✔ Easy-to-understand SQL queries

🧠 SQL Queries Included

This project includes queries for:

Selecting complete table data

Joining all four tables

Finding averages, totals, maximum & minimum

Ranking movies

Grouping by payment method, movie type, and language

Listing customers with multiple bookings

Displaying top 5 movies & customers

Finding the most recent bookings

📈 What You Learn

Database design

Table relationships (Primary & Foreign Keys)

Joins (INNER JOIN)

Aggregations (SUM, AVG, MAX, MIN)

Window functions (RANK, ROW_NUMBER)

Grouping and filtering

Writing clean and optimized SQL queries

🚀 Technology Used

MySQL / SQL

Relational database concepts

🎯 Purpose of the Project

This project is helpful for students practicing SQL.
It covers basic to advanced queries, making it a strong mini-project for academic submissions or learning database concepts.
