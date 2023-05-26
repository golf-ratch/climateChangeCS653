-- tavglowest10

CREATE OR REPLACE VIEW "tavglowest10" AS 
SELECT
  "round"("avg"(CAST(tavg AS double)), 2) tavg
, state
FROM
  "country-weather"."county_weather"
WHERE (CAST(year AS integer) BETWEEN 2012 AND 2022)
GROUP BY state
ORDER BY tavg ASC
LIMIT 10