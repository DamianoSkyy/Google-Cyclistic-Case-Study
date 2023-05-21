-- Adding new metrics for analysis:

SELECT
    ride_id,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_total_seconds, -- To calculate ride duration in seconds
    ST_GEOGPOINT(start_lng, start_lat) AS start_point,
    ST_GEOGPOINT(end_lng, end_lat) AS end_point,  -- To get a single value from lat-long data to get distance
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 1 THEN 'Sunday'
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 2 THEN 'Monday'
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 3 THEN 'Tuesday'
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 4 THEN 'Wednesday'
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 5 THEN 'Thursday'
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 6 THEN 'Friday'
    WHEN EXTRACT(DAYOFWEEK FROM started_at) = 7 THEN 'Saturday'
    END AS start_day  -- To get ride start day names
  FROM `cyclisticsql.divvydata.divvydata_2022` AS new_metrics
