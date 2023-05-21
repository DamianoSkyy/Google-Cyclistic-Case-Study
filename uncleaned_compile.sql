-- Data compilation only

CREATE TABLE divvydata.divvydata_2022 AS
SELECT *
FROM (
      SELECT *
      FROM `cyclisticsql.divvydata.2022_01`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_02`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_03`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_04`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_05`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_06`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_07`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_08`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_09`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_10`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_11`
      UNION ALL
      SELECT *
      FROM `cyclisticsql.divvydata.2022_12`
      )
