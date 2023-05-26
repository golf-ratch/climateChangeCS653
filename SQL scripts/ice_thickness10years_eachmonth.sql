-- ice_thickness10years_eachmonth

CREATE OR REPLACE VIEW "ice_thickness10years_eachmonth" AS 
SELECT
  ("floor"(((year - 1) / 10)) * 10) decade_start_year
, "avg"((CASE WHEN (month = 1) THEN "n.america (no greenland)" END)) average_n_no_greenland_month1
, "avg"((CASE WHEN (month = 2) THEN "n.america (no greenland)" END)) average_n_no_greenland_month2
, "avg"((CASE WHEN (month = 3) THEN "n.america (no greenland)" END)) average_n_no_greenland_month3
, "avg"((CASE WHEN (month = 4) THEN "n.america (no greenland)" END)) average_n_no_greenland_month4
, "avg"((CASE WHEN (month = 5) THEN "n.america (no greenland)" END)) average_n_no_greenland_month5
, "avg"((CASE WHEN (month = 6) THEN "n.america (no greenland)" END)) average_n_no_greenland_month6
, "avg"((CASE WHEN (month = 7) THEN "n.america (no greenland)" END)) average_n_no_greenland_month7
, "avg"((CASE WHEN (month = 8) THEN "n.america (no greenland)" END)) average_n_no_greenland_month8
, "avg"((CASE WHEN (month = 9) THEN "n.america (no greenland)" END)) average_n_no_greenland_month9
, "avg"((CASE WHEN (month = 10) THEN "n.america (no greenland)" END)) average_n_no_greenland_month10
, "avg"((CASE WHEN (month = 11) THEN "n.america (no greenland)" END)) average_n_no_greenland_month11
, "avg"((CASE WHEN (month = 12) THEN "n.america (no greenland)" END)) average_n_no_greenland_month12
FROM
  "country-weather"."snow_labb"
GROUP BY ("floor"(((year - 1) / 10)) * 10)
ORDER BY decade_start_year ASC