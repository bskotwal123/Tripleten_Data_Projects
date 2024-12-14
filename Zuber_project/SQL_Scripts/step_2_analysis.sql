-- SQL Script: Step 2 Analysis
-- Author: [Bipen Singh]
-- Description: Analyze ride durations from the Loop to O'Hare by weather and day of the week.

--Task 1: Retrieve the identifiers for O'Hare and Loop neighborhoods
SELECT 
neighborhood_id,
name 
FROM 
neighborhoods 
    WHERE
name LIKE '%Hare' OR name LIKE 'Loop';

-- Task 2: Retrieve Weather Conditions
SELECT
          ts,
     CASE
     WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
         END AS weather_conditions
         FROM 
                weather_records;

-- Task 3: Analyze Rides on Saturdays from Loop to O’Hare
SELECT 
    t.start_ts,
    CASE 
        WHEN LOWER(w.description) LIKE '%rain%' OR LOWER(w.description) LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    t.duration_seconds
FROM 
    trips t
JOIN 
    weather_records w ON DATE_TRUNC('hour', t.start_ts) = DATE_TRUNC('hour', w.ts)
WHERE 
    t.pickup_location_id = 50
    AND t.dropoff_location_id = 63
    AND EXTRACT(DOW FROM t.start_ts) = 6
AND w.ts IS NOT NULL
ORDER BY 
    t.trip_id;