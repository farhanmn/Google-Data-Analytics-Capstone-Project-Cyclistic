-- Combine last 12 months of trip data

CREATE TABLE `last_12_months_divvy_tripdata` AS (
    SELECT * FROM `202406_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202407_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202408_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202409_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202410_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202411_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202412_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202501_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202502_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202503_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202504_divvy_tripdata`
    UNION ALL
    SELECT * FROM `202505_divvy_tripdata`
)