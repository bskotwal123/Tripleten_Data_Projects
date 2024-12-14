-- SQL Script: Step 1 Analysis
-- Author: [Bipen Singh]
-- Description: Exploratory data analysis of taxi rides.

-- Task 1: Number of Taxi Rides per Company (Nov 15-16, 2017)
SELECT 
c.company_name,
COUNT(t.trip_id) AS trips_amount
FROM 
    trips t 
    JOIN cabs c ON c.cab_id = t.cab_id
WHERE 
t.start_ts BETWEEN '2017-11-15 00:00:00' AND '2017-11-16 23:59:59'
GROUP BY 
    c.company_name
ORDER BY 
    trips_amount DESC;

-- Task 2: Rides by Companies with "Yellow" or "Blue" (Nov 1-7, 2017)
SELECT 
c.company_name,
COUNT(t.trip_id) AS trips_amount
FROM 
trips t 
JOIN cabs c ON c.cab_id = t.cab_id
WHERE 
    t.start_ts BETWEEN '2017-11-1 00:00:00' AND '2017-11-07 23:59:59'
AND (c.company_name LIKE '%Yellow%' OR c.company_name LIKE '%Blue%')
    
GROUP BY 
c.company_name;

-- Task 3: Most Popular Taxi Companies (Flash Cab and Taxi Affiliation Services)
SELECT 
    CASE 
        WHEN c.company_name IN ('Flash Cab', 'Taxi Affiliation Services') THEN c.company_name
        ELSE 'Other'
    END AS company,
    COUNT(t.trip_id) AS trips_amount
FROM 
    trips t
JOIN 
    cabs c ON t.cab_id = c.cab_id
WHERE 
    t.start_ts BETWEEN '2017-11-01 00:00:00' AND '2017-11-07 23:59:59'
GROUP BY 
    company
ORDER BY 
    trips_amount DESC;

