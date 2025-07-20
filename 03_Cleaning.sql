-- Create the columns 'month and' 'day_of week' where 1 represents Sunday, 7 represents Monday
-- Determine the ride length in minutes
-- Remove rows with null values
CREATE TABLE `last_12_months_divvy_tripdata_cleaned` AS (
  SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  ride_length_in_mins,
  CASE
  EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
  END AS month,
  CASE DAYOFWEEK(started_at)
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'
  END AS day_of_week,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual
FROM `last_12_months_divvy_tripdata` AS t1
JOIN
  (SELECT ride_id,
    TIMESTAMPDIFF(MINUTE, started_at, ended_at) AS ride_length_in_mins
  FROM `last_12_months_divvy_tripdata`) AS t2
USING(ride_id)
WHERE ride_length_in_mins > 1 AND ride_length_in_mins < 1440 AND
  start_station_name IS NOT NULL AND
  start_station_id IS NOT NULL AND
  end_station_name IS NOT NULL AND
  end_station_id IS NOT NULL AND
  start_lat IS NOT NULL AND
  start_lng IS NOT NULL AND
  end_lat IS NOT NULL AND
  end_lng IS NOT NULL
);