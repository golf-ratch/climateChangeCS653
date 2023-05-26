-- ice_thickness10years

CREATE OR REPLACE VIEW "ice_thickness10years" AS 
SELECT
  ("floor"(((year - 1) / 10)) * 10) decade_start_year
, "avg"("n.america (no greenland)") average_n_no_greenland
, "avg"("n. hemisphere") average_n_hemisphere
, "avg"(eurasia) average_eurasia
, "avg"("n. america") average_n_america
FROM
  "country-weather"."snow_labb"
GROUP BY ("floor"(((year - 1) / 10)) * 10)
ORDER BY decade_start_year ASC