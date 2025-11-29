# creating database
Create database Movie_Ticket_Booking;
use Movie_Ticket_Booking;


# Creating tables
	-- Table 1: Movies - stores details of each movie
		CREATE TABLE Movies ( 
        Movie_id INT PRIMARY KEY, 
        Title VARCHAR(100) NOT NULL, 
        Movie_Type VARCHAR(50) NOT NULL,
        Duration_min INT CHECK(duration_min > 0), Release_date DATE );
        ALTER TABLE Movies ADD COLUMN  Director VARCHAR(100) NOT NULL AFTER Movie_Type;
        ALTER TABLE Movies ADD COLUMN Language VARCHAR(100) NOT NULL;
        DESC Movies;
        SELECT * FROM Movies;
        
    -- Table 2: Customers - stores details of people who book tickets
		CREATE TABLE Customers ( Customer_id INT PRIMARY KEY,
        Customer_name VARCHAR(100) NOT NULL, 
        Email VARCHAR(100) unique NOT NULL, 
        Contact BIGINT UNIQUE);
        DESC Customers;
        SELECT * FROM Customers;
        
    -- Table 3: Bookings - stores ticket booking information
		CREATE TABLE Bookings ( 
        Booking_id INT PRIMARY KEY, 
        Movie_id INT NOT NULL, 
        Customer_id INT NOT NULL,
		Seats INT NOT NULL CHECK(seats > 0), 
        Booking_date DATE DEFAULT (CURRENT_DATE), 
        total_amount DECIMAL(10,2) CHECK(total_amount >= 0),
        FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
		FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));
        DESC Bookings;
        SELECT * FROM Bookings;
        
	-- Table 4: Payments - stores details of payments
		CREATE TABLE Payments (
        Payment_id INT PRIMARY KEY, 
        Booking_id INT NOT NULL,
        Payment_method VARCHAR(50) NOT NULL, 
		Payment_date DATE DEFAULT (CURRENT_DATE),
        Amount DECIMAL(10,2) CHECK (Amount >= 0),
		FOREIGN KEY (Booking_id) REFERENCES Bookings(Booking_id));
        DESC Payments;
        SELECT * FROM Payments;
        
	-- Table 5: Shows - stores details of Shows
        CREATE TABLE Shows (
		Show_id INT PRIMARY KEY,
		Movie_id INT NOT NULL,
		Screen_no INT NOT NULL,
		Show_time TIME NOT NULL,
		Show_date DATE NOT NULL,
		Total_seats INT DEFAULT 100,
		Available_seats INT,
		FOREIGN KEY (Movie_id) REFERENCES Movies(Movie_id));	
        
# Inserting values in table 1: MOVIES
	INSERT INTO Movies VALUES
(1, "Pathaan" , "Action" , "Siddharth Anand" , 146 , '2023-01-25' , "Hindi" ),
(2, "KGF: Chapter 2" , "Action" , "Prashanth Neel" , 168 , '2022-04-14' , "Kannada" ),
(3, "3 Idiots" , "Drama" , "Rajkumar Hirani" , 170 , '2009-12-25' , "Hindi" ),
(4, "Bahubali: The Beginning" , "Fantasy" , "S. S. Rajamouli" , 159 , '2015-07-10' , "Telugu" ),
(5, "Bahubali: The Conclusion" , "Fantasy" , "S. S. Rajamouli" , 171 , '2017-04-28' , "Telugu" ),
(6, "Dangal" , "Biography" , "Nitesh Tiwari" , 161 , '2016-12-23' , "Hindi" ),
(7, "Chhichhore" ,  "Drama" , "Nitesh Tiwari" , 143 , '2019-09-06' , "Hindi" ),
(8, "Tanhaji" , "Historical" , "Om Raut" , 135 , '2020-01-10' , "Hindi" ),
(9, "Interstellar" , "Sci-Fi" , "Christopher Nolan" , 169 , '2014-11-07' , "English" ),
(10, "Inception" ,  "Sci-Fi" , "Christopher Nolan" , 148 , '2010-07-16' , "English" ),
(11, "The Dark Knight" , "Action" , "Christopher Nolan" , 152 , '2008-07-18' , "English" ),
(12, "RRR" , "Action" , "S. S. Rajamouli" , 187 , '2022-03-25' , "Telugu" ),
(13, "Pushpa: The Rise" , "Action" , "Bandreddi Sukumar" , 179 , '2021-12-17' , "Telugu" ),
(14, "Jawaan" , "Action" , "Atlee Kumar" , 169 , '2023-09-07' , "Hindi" ),
(15, "Zindagi Na Milegi Dobara" , "Adventure" , "Zoya Akhtar" , 155 , '2011-07-15' , "Hindi" ),
(16, "Barfi!" , "Romance" , "Anurag Basu" , 151 , '2012-09-14' , "Hindi" ),
(17, "Dil Bechara" , "Romance" , "Mukesh Chhabra" , 101 , '2020-07-24' , "Hindi" ),
(18, "Drishyam 2" , "Thriller" , "Abhishek Pathak" , 140 , '2022-11-18' , "Hindi" ),
(19, "Vikram Vedha" , "Thriller" , "Pushkar-Gayathri" , 147 , '2022-09-30' , "Hindi" ),
(20, "Kantara" , "Drama" , "Rishab Shetty" , 147 , '2022-09-30' , "Kannada" ),
(21, "Super 30" , "Biography" , "Vikas Bahl" , 155 , '2019-07-12' , "Hindi" ),
(22, "Avatar: The Way of Water" , "Sci-Fi" , "James Cameron" , 192 , '2022-12-16' , "English" ),
(23, "Titanic" , "Romance" , "James Cameron" , 195 , '1997-12-19' , "English" ),
(24, "Andhadhun" , "Thriller" , "Sriram Raghavan" , 139 , '2018-10-05' , "Hindi" ),
(25, "Dunki" , "Comedy" , "Rajkumar Hirani" , 160 , '2024-12-22' , "Hindi" );

SELECT * FROM Movies;

# Inserting values in table 2: CUSTOMERS
	INSERT INTO Customers VALUES
(101, "Asha Patil" , "asha.patil@gmail.com" ,9876543210),
(102, "Rohit Sharma" , "rohit.sharma@gmail.com" ,9823456789),
(103, "Sneha Kulkarni" , "sneha.kulkarni@yahoo.com" ,9890011223),
(104, "Kumar Joshi" , "kumar.joshi@gmail.com" ,9765432109),
(105, "Priya Deshmukh" , "priya.deshmukh@gmail.com" ,9832145678),
(106, "Rahul Pawar" , "rahul.pawar@yahoo.com" ,9977885544 ),
(107, "Meera Shinde" , "meera.shinde@gmail.com" ,9812345670),
(108, "Sahil Patankar" , "sahil.patankar@gmail.com" ,9922334455),
(109, "Neha Jadhav" , "neha.jadhav@gmail.com" ,9845123001),
(110, "Ajay Kale" , "ajay.kale@gmail.com" ,9988776655),
(111, "Rutuja More" , "rutuja.more@gmail.com" ,9876001122),
(112, "Aniket Gawande" , "aniket.gawande@gmail.com" ,9898456321),
(113, "Pooja Naik" , "pooja.naik@yahoo.com" ,9933445566),
(114, "Vaibhav Patil" , "vaibhav.patil@gmail.com" ,9822103456),
(115, "Komal Chavan" , "komal.chavan@gmail.com",9944556677),
(116, "Sagar Desai" , "sagar.desai@gmail.com" ,9966332211),
(117, "Riya Nair" , "riya.nair@gmail.com" ,9811789023),
(118, "Harshad Khot" , "harshad.khot@gmail.com" ,9823004455),
(119, "Tanvi Kulkarni" , "tanvi.kulkarni@gmail.com" ,9899001122),
(120, "Tejas Mane" , "tejas.mane@gmail.com" ,9900112233);

SELECT * FROM Customers;

# Inserting values in table 3: BOOKINGS
	INSERT INTO Bookings VALUES
(1001, 1, 101, 2, "2025-10-01", 400.00),
(1002, 1, 103, 1, "2025-10-02", 200.00),
(1003, 2, 104, 3, "2025-10-03", 750.00),
(1004, 3, 105, 2, "2025-10-03", 300.00),
(1005, 4, 106, 4, "2025-10-04", 800.00),
(1006, 5, 107, 5, "2025-10-04", 1000.00),
(1007, 6, 108, 2, "2025-10-05", 500.00),
(1008, 7, 109, 3, "2025-10-05", 600.00),
(1009, 8, 110, 2, "2025-10-06", 400.00),
(1010, 9, 111, 1, "2025-10-06", 250.00),
(1011, 10, 112, 2, "2025-10-07", 500.00),
(1012, 11, 113, 4, "2025-10-07", 800.00),
(1013, 12, 114, 3, "2025-10-08", 900.00),
(1014, 13, 115, 2, "2025-10-08", 500.00),
(1015, 14, 116, 5, "2025-10-09", 1250.00),
(1016, 15, 117, 1, "2025-10-09", 200.00),
(1017, 16, 118, 3, "2025-10-10", 600.00),
(1018, 17, 119, 2, "2025-10-10", 400.00),
(1019, 18, 120, 4, "2025-10-11", 1000.00),
(1020, 19, 101, 2, "2025-10-11", 500.00),
(1021, 20, 102, 3, "2025-10-12", 750.00),
(1022, 21, 103, 2, "2025-10-12", 400.00),
(1023, 22, 104, 1, "2025-10-13", 300.00),
(1024, 23, 105, 3, "2025-10-13", 750.00),
(1025, 24, 106, 2, "2025-10-14", 400.00),
(1026, 25, 107, 5, "2025-10-14", 1250.00),
(1027, 1, 108, 1, "2025-10-15", 200.00),
(1028, 2, 109, 2, "2025-10-15", 500.00),
(1029, 3, 110, 3, "2025-10-16", 600.00),
(1030, 4, 111, 4, "2025-10-16", 800.00),
(1031, 25, 106, 2, "2025-10-14", 1250.00), 
(1032, 5, 111, 4, "2025-10-16", 1000.00);

SELECT * FROM Bookings;

# Inserting values in table 4: PAYMENTS
	INSERT INTO Payments VALUES
(201, 1001, "UPI", "2025-10-01", 400.00),
(202, 1002, "Cash", "2025-10-02", 200.00),
(203, 1003, "Credit Card", "2025-10-03", 750.00),
(204, 1004, "Debit Card", "2025-10-03", 300.00),
(205, 1005, "UPI", "2025-10-04", 800.00),
(206, 1006, "Net Banking", "2025-10-04", 1000.00),
(207, 1007, "UPI", "2025-10-05", 500.00),
(208, 1008, "Cash", "2025-10-05", 600.00),
(209, 1009, "Credit Card", "2025-10-06", 400.00),
(210, 1010, "Debit Card", "2025-10-06", 250.00),
(211, 1011, "UPI", "2025-10-07", 500.00),
(212, 1012, "Cash", "2025-10-07", 800.00),
(213, 1013, "Credit Card", "2025-10-08", 900.00),
(214, 1014, "UPI", "2025-10-08", 500.00),
(215, 1015, "Wallet", "2025-10-09", 1250.00),
(216, 1016, "Cash", "2025-10-09", 200.00),
(217, 1017, "Credit Card", "2025-10-10", 600.00),
(218, 1018, "UPI", "2025-10-10", 400.00),
(219, 1019, "Debit Card", "2025-10-11", 1000.00),
(220, 1020, "UPI", "2025-10-11", 500.00), 
(221, 1021, "Net Banking", "2025-10-12", 750.00),
(222, 1022, "Cash", "2025-10-12", 400.00),
(223, 1023, "Credit Card", "2025-10-13", 300.00),
(224, 1024, "UPI", "2025-10-13", 750.00),
(225, 1025, "Debit Card", "2025-10-14", 400.00),
(226, 1026, "Wallet", "2025-10-14", 1250.00),
(227, 1027, "UPI", "2025-10-15", 200.00),
(228, 1028, "Cash", "2025-10-15", 500.00),
(229, 1029, "Credit Card", "2025-10-16", 600.00),
(230, 1030, "Debit Card", "2025-10-16", 800.00);


SELECT * FROM Movies;


-- Updating title and genre for Movie_id = 3
UPDATE Movies
SET Title = '3 Idiots', Movie_Type = 'Drama'
WHERE Movie_id = 3;


-- Shows all payment records.
SELECT * FROM Payments;


-- Combines all 4 tables to show full booking details.
SELECT * FROM Bookings b
JOIN Movies m ON b.Movie_id = m.Movie_id
JOIN Customers c ON b.Customer_id = c.Customer_id
JOIN Payments p ON p.Booking_id = b.Booking_id;


-- Shows movie titles with their directors.
SELECT Title, Director FROM Movies;


-- Shows average, total, biggest, and smallest amount from Bookings
SELECT 'Average Amount' AS Description, ROUND(AVG(total_amount), 2) AS Value FROM Bookings
UNION ALL
SELECT 'Total Amount', ROUND(SUM(total_amount), 2) FROM Bookings
UNION ALL
SELECT 'Largest Amount', ROUND(MAX(total_amount), 2) FROM Bookings
UNION ALL
SELECT 'Smallest Amount', ROUND(MIN(total_amount), 2) FROM Bookings;
	

-- Shows bookings where amount is 500 or 1000.
SELECT * FROM Bookings where total_amount in (500, 1000);


-- Shows movies whose title starts with 'D'.
SELECT * FROM Movies where Title like 'D%';


-- Gives rank to movies based on duration (longest first)
SELECT Title, Duration_min,
RANK() OVER (ORDER BY Duration_min DESC) AS Rank_Duration
FROM Movies;


-- Shows total payments & count by payment method
SELECT Payment_method, COUNT(*) AS payments_count, SUM(Amount) AS total_received
FROM Payments
GROUP BY Payment_method
ORDER BY total_received DESC;


-- Shows customers who made more than one booking on the same day.
SELECT b.Customer_id, b.Booking_date, COUNT(*) AS count_same_day
FROM Bookings b
GROUP BY b.Customer_id, b.Booking_date
HAVING COUNT(*) > 1;


-- Lists each customer's bookings with movie and serial number
SELECT Customer_name, Title, Booking_date,
ROW_NUMBER() OVER (PARTITION BY Customers.Customer_id ORDER BY Booking_date) AS Booking_No
FROM Customers JOIN Bookings  
ON Customers.Customer_id = Bookings.Customer_id
JOIN Movies ON Bookings.Movie_id = Movies.Movie_id;


-- Shows detailed booking info (id, movie, customer, payment)
SELECT b.Booking_id, m.Title, c.customer_name, p.Payment_method, p.Amount
FROM Bookings b
JOIN Movies m ON b.Movie_id = m.Movie_id
JOIN Customers c ON b.Customer_id = c.Customer_id
JOIN Payments p ON p.Booking_id = b.Booking_id
ORDER BY Booking_id;


-- Show top 5 movies by highest booking amount
SELECT Movies.Movie_id, Title, MAX(total_amount) AS Amounts 
FROM Movies JOIN Bookings 
ON Movies.Movie_id= Bookings.Movie_id 
GROUP BY Movies.Movie_id, Title 
ORDER BY Amounts DESC
LIMIT 5;


-- Movie with the highest total earnings.
SELECT Movies.Movie_id, Title, SUM(total_amount) AS Total_Earnings
FROM Movies JOIN Bookings 
ON Movies.Movie_id = Bookings.Movie_id
GROUP BY Movies.Movie_id, Title
ORDER BY Total_Earnings DESC
LIMIT 1;

-- Top 5 customers who spent the most.
SELECT Customer_name, SUM(total_amount) AS Total_spent
FROM Customers JOIN Bookings 
ON Customers.Customer_id = Bookings.Customer_id
GROUP BY Customers.Customer_id, Customers.Customer_name
ORDER BY total_spent DESC
LIMIT 5;


-- Total earning generated by each movie type 
SELECT Movie_Type, SUM(Bookings.total_amount) AS Earning
FROM Movies JOIN Bookings  
ON Movies.Movie_id = Bookings.Movie_id
GROUP BY Movie_Type ORDER BY Earning DESC ;


-- Total number of bookings per movie language
SELECT Language, COUNT(Bookings.Booking_id) AS Total_Bookings
FROM Movies JOIN Bookings  
ON Movies.Movie_id = Bookings.Movie_id
GROUP BY Language;



-- Shows the most recent bookings
SELECT * FROM Bookings
WHERE Booking_date = (SELECT MAX(Booking_date) FROM Bookings);


select max(salary) from employee order by salary desc limit 2 offset 1;











        