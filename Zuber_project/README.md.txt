# Zuber Ride Analysis Project

## Project Description
This project analyzes ride data to uncover patterns in passenger preferences and the impact of external factors, such as weather, on ride durations. The focus is on trips between the Loop and O'Hare International Airport to provide actionable insights for optimizing ride-sharing operations.

## Data Description
The analysis is based on a comprehensive database containing four key tables:

### `neighborhoods`
| Field             | Description                          |
|-------------------|--------------------------------------|
| `name`            | Name of the neighborhood            |
| `neighborhood_id` | Unique identifier for the neighborhood |

### `cabs`
| Field             | Description                          |
|-------------------|--------------------------------------|
| `cab_id`          | Vehicle code                        |
| `vehicle_id`      | Technical ID of the vehicle         |
| `company_name`    | Name of the taxi company            |

### `trips`
| Field                  | Description                          |
|------------------------|--------------------------------------|
| `trip_id`              | Unique identifier for each trip     |
| `cab_id`               | Vehicle code for the ride           |
| `start_ts`             | Start timestamp of the ride         |
| `end_ts`               | End timestamp of the ride           |
| `duration_seconds`     | Duration of the ride in seconds     |
| `distance_miles`       | Distance covered during the ride    |
| `pickup_location_id`   | Pickup neighborhood identifier      |
| `dropoff_location_id`  | Dropoff neighborhood identifier     |

### `weather_records`
| Field         | Description                                  |
|---------------|----------------------------------------------|
| `record_id`   | Identifier for the weather record            |
| `ts`          | Timestamp of the weather record             |
| `temperature` | Temperature at the time of the record       |
| `description` | Description of weather conditions (e.g., "rain" or "clouds") |

---

## Instructions for Analysis

### Step 1: Exploratory Data Analysis
1. **Identify Popular Taxi Companies**:
   - Count rides (`trips_amount`) for each taxi company for Nov 15-16, 2017.
   - Identify companies with "Yellow" or "Blue" in their name for Nov 1-7, 2017.
   - Compare ride counts for Flash Cab, Taxi Affiliation Services, and other companies for November 2017.

2. **SQL Script**:
   - The queries for this step are saved in `step_1_analysis.sql`.

### Step 2: Ride Duration Analysis
1. **Retrieve Neighborhood Identifiers**:
   - Get the IDs for "Loop" and "O'Hare" neighborhoods from the `neighborhoods` table.

2. **Categorize Weather Conditions**:
   - Use the `weather_records` table to classify weather as "Good" or "Bad" based on conditions like rain or storms.

3. **Analyze Ride Durations**:
   - Filter trips starting in the Loop and ending in O'Hare on Saturdays.
   - Compare ride durations across weather conditions (rainy vs. non-rainy) and days of the week (Saturdays vs. other days).

4. **SQL Script**:
   - The queries for this step are saved in `step_2_analysis.sql`.

---

## Results and Insights
- **Taxi Popularity**: Identified the most active companies based on ride volume during the specified periods.
- **Weather Impact**: Analyzed how rainy weather and weekends affect ride durations from the Loop to O'Hare.

---

## Tools Used
- **SQL**: For querying and analyzing data.
- **Database Management System**: PostgreSQL.

---

## How to Run
1. Set up the database with the provided schema.
2. Run the SQL scripts in the `/SQL_Scripts/` directory.
3. Review the outputs and generate insights.

---

## SQL Scripts
The SQL queries used for the analysis are available in the `/SQL_Scripts/` directory:
- **Step 1**: [step_1_analysis.sql](./SQL_Scripts/step_1_analysis.sql) — Exploratory data analysis.
- **Step 2**: [step_2_analysis.sql](./SQL_Scripts/step_2_analysis.sql) — Ride duration analysis.

