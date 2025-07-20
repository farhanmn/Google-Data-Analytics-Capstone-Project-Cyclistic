-- Check the number of null values in each column
SELECT COUNT(*) - COUNT(ride_id) ride_id,
  COUNT(*) - COUNT(rideable_type) rideable_type,
  COUNT(*) - COUNT(started_at) started_at,
  COUNT(*) - COUNT(ended_at) ended_at,
  COUNT(*) - COUNT(start_station_name) start_station_name,
  COUNT(*) - COUNT(start_station_id) start_station_id,
  COUNT(*) - COUNT(end_station_name) end_station_name,
  COUNT(*) - COUNT(end_station_id) end_station_id,
  COUNT(*) - COUNT(start_lat) start_lat,
  COUNT(*) - COUNT(start_lng) start_lng,
  COUNT(*) - COUNT(end_lat) end_lat,
  COUNT(*) - COUNT(end_lng) end_lng,
  COUNT(*) - COUNT(member_casual) member_casual
FROM `last_12_months_divvy_tripdata`;

-- Explore data one by one from left column to right column

-- 1) rider_id: the length of the rider id should be uniform 
SELECT LENGTH(ride_id) as rider_id_length
FROM `last_12_months_divvy_tripdata`
GROUP BY LENGTH(ride_id);
-- the ride_id is consistent with 16 characters.

-- 2) rideable_type: determine the type of bikes 
SELECT rideable_type
FROM `last_12_months_divvy_tripdata`
GROUP BY rideable_type;
-- there are three types of bike: electric_bike, classic_bike and electric_scooter 

-- 3) started_at, ended_at: ride duration
SELECT ride_id, started_at, ended_at
FROM `last_12_months_divvy_tripdata`
WHERE 
TIMESTAMPDIFF(MINUTE, started_at, ended_at) <= 1 OR
TIMESTAMPDIFF(MINUTE, started_at, ended_at) >= 1440;
-- check if the ride time is less than a minute or longer than a day 
-- the end time is behind the start time
-- TIMESTAMP is in YYYY-MM-DD hh:mm:ss UTC format 

-- 4) name & id of start_station and end_station
SELECT DISTINCT start_station_name, COUNT(*) AS start_station_count
FROM `last_12_months_divvy_tripdata`
GROUP BY start_station_name;
-- a total of 1045593 start_station_name with null values are determined

SELECT DISTINCT end_station_name, COUNT(*) AS end_station_count
FROM `last_12_months_divvy_tripdata`
GROUP BY end_station_name;
-- a total of 1060933 end_station_name with null values are found 

SELECT DISTINCT start_station_id, end_station_id
FROM `last_12_months_divvy_tripdata`
WHERE start_station_id IS NOT NULL OR
end_station_id IS NOT NULL;
-- null values observed 
-- the string lengths of station id are inconsistent. however, it will be ignored as the station id is not important in our analysis

-- 5) lat & lng of start and end
SELECT * 
FROM `last_12_months_divvy_tripdata`
WHERE
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL;
-- 5795 null values are observed

-- 6) member_casual: type of membership 
SELECT member_casual, COUNT(*) as membership_count
FROM `last_12_months_divvy_tripdata`
GROUP BY member_casual;
-- only two types: member and causal 
-- total membership count are equal to the total number of rows