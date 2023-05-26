-- ice_thickness

CREATE OR REPLACE VIEW "ice_thickness" AS 
SELECT
  month
, year
, "concat"(CAST(year AS varchar), '/', "lpad"(CAST(month AS varchar), 2, '0')) year_month
, "n.america (no greenland)" n_no_greenland
, "n. hemisphere" n_hemisphere
, eurasia
, "n. america" n_america
FROM
  "country-weather"."snow_labb"
ORDER BY year ASC, month ASC