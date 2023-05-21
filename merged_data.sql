-- Final dataset joining new metrics to compiled dataset table 'divvydata_2022'

SELECT        
  a.ride_id,
  a.rideable_type,
  b.start_day,
  a.started_at,
  a.ended_at,
  b.ride_total_seconds,
  a.start_station_name,
  a.start_station_id,
  a.end_station_name,
  a.end_station_id,
  ST_DISTANCE(b.start_point, b.end_point) AS ride_distance,
  a.member_casual
FROM
  divvydata.divvydata_2022 AS a
JOIN
  divvydata.new_metrics AS b
ON a.ride_id = b.ride_id
