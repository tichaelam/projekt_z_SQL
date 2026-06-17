CREATE TABLE data_academy_content.t_michaela_ticha_project_SQL_secondary_final AS
SELECT
    e.country,
    e.year,
    e.gdp,
    e.population,
    e.gini
FROM economies e
JOIN countries c
    ON e.country = c.country
WHERE e.year BETWEEN 2006 AND 2018
  AND c.continent = 'Europe'
ORDER BY
    e.country,
    e.year;
