-- To understand the dataset and find anomalies

SELECT
  AVG(ride_total_seconds) AS average, -- 1,167 (19.45 minutes)
  MIN(ride_total_seconds) AS minimum, -- -62,1201 (-10,353 minutes)
  MAX(ride_total_seconds) AS maximum, -- 2,483,235 (41,387 minutes)
FROM
  divvydata.divvydata_2022_new
