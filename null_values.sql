-- Missing start/end station data found in 1,298,357 rows

SELECT * 
FROM `cyclisticsql.divvydata.divvydata_2022`
WHERE 
  start_station_name IS NULL
  OR
  end_station_name IS NULL

-- Other columns checked for null values, none were found

SELECT * 
FROM `cyclisticsql.divvydata.divvydata_2022`
WHERE 
  started_at IS NULL
  OR 
  ended_at IS NULL
  OR
  member_casual IS NULL
  OR
  ride_id IS NULL
  OR
  rideable_type IS NULL
