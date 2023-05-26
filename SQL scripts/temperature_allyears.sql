-- temperature_allyears

CREATE OR REPLACE VIEW "temperature_allyears" AS 
SELECT
  "concat"(CAST(year AS varchar), '/', "lpad"(CAST(month AS varchar), 2, '0')) year_month
, "round"("avg"(CAST(tmax AS double)), 2) tmax
, "round"("avg"(CAST(tavg AS double)), 2) tavg
, "round"("avg"(CAST(tmin AS double)), 2) tmin
FROM
  "country-weather"."county_weather"
GROUP BY year, month
ORDER BY year ASC, month ASC