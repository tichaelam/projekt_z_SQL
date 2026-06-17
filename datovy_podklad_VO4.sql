-- VO 4 Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
SELECT
    year,
    food_yoy_percent,
    wage_yoy_percent,
    ROUND(food_yoy_percent - wage_yoy_percent, 2) AS difference_percent
FROM data_academy_content.t_michaela_ticha_project_sql_primary_final
WHERE wage_yoy_percent IS NOT NULL
  AND food_yoy_percent - wage_yoy_percent > 10
GROUP BY
    year,
    food_yoy_percent,
    wage_yoy_percent
ORDER BY
    year;
