--  Ques.1 Retrieve All Successful Bookings.
SELECT 
    *
FROM
    bengaluru_sales
WHERE `Booking Status` = 'Success';

-- Ques.2 Find the Average Rid Distance For Each Vehicle Type
SELECT 
        `Vehicle Type`, AVG(`Ride Distance`) AS 'Average_Distance'
    FROM
        Bengaluru_Sales
    GROUP BY `Vehicle Type`
    ORDER BY Average_Distance DESC;
    
-- Ques.3 Get Total Number Of Canceled Rides By Customer  
SELECT 
    COUNT(*) AS 'Canceled_Rides'
FROM
    Bengaluru_sales
WHERE
    `Booking Status` = 'Canceled';
    
-- Ques.4 List the top 5 customers who booked the highest number of rides
SELECT 
    `Customer ID`,
    COUNT(`Booking ID`) AS 'Highest Number Of Rides'
FROM
    Bengaluru_Sales
GROUP BY `Customer ID`
ORDER BY COUNT(`Booking ID`) DESC
LIMIT 5;

-- Ques.5 Find the Average Customer Rating Per Vehicle Type:
SELECT 
    `Vehicle Type`, AVG(`Customer Rating`) AS 'Average_Rating'
FROM
    Bengaluru_sales
GROUP BY `Vehicle Type`
ORDER BY `Average_Rating` DESC;

-- Ques.6 Calculate the total booking value  of rides successful completed;
SELECT 
    SUM(`Booking Value`) AS Total_Successful_Booking
FROM
    Bengaluru_Sales
WHERE
    `Booking Status` = 'Success'; 
    
-- Ques.7 List All Incomplete Rides along with the reason
SELECT 
    `Booking ID`, `Incomplete Rides Reason`
FROM
    Bengaluru_Sales
WHERE
    `incomplete rides` = 'True';
 

-- Ques.8 Find the Maximum And Minimum Driver Rating For Prime Sedan Bookings
 SELECT 
    `vehicle Type`,
    MAX(`Driver Rating`) AS Max_Rating,
    MIN(`Driver Rating`) AS Min_Rating
FROM
    Bengaluru_Sales
WHERE
    `Vehicle Type` = 'Prime Sedan';
