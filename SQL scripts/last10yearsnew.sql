-- last10yearsnew

CREATE OR REPLACE VIEW "last10yearsnew" AS 
SELECT
  month
, year
, "concat"(CAST(year AS varchar), '/', "lpad"(CAST(month AS varchar), 2, '0')) year_month
, "round"("avg"(CAST(tmax AS double)), 2) tmax
, "round"("avg"(CAST(tavg AS double)), 2) tavg
, "round"("avg"(CAST(tmin AS double)), 2) tmin
FROM
  "country-weather"."county_weather"
WHERE (CAST(year AS integer) BETWEEN 2012 AND 2022)
GROUP BY year, month
ORDER BY year ASC, month ASC