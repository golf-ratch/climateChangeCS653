-- tminhighest10

CREATE OR REPLACE VIEW "tminhighest10" AS 
SELECT
  "round"("avg"(CAST(tmin AS double)), 2) tmin
, state
FROM
  "country-weather"."county_weather"
WHERE (CAST(year AS integer) BETWEEN 2012 AND 2022)
GROUP BY state
ORDER BY tmin DESC
LIMIT 10