-- Missing start/end station data found in 1,298,357 rows

SELECT * 
FROM `cyclisticsql.divvydata.divvydata_2022`
WHERE 
  start_station_name IS NULL
  OR
  end_station_name IS NULL
