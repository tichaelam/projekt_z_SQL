-- VO 5 Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na
cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
-- avg_food_price_yearly = celkovy cenovy index pro dany rok, standardizovan napric kategoriemi pro jednodussi porovnani, avg_food_yoy_percent je pak mezirocni zmena tohoto indexu
SELECT
    p.year,
    g.gdp,
    g.population,
    g.gini,
    AVG(p.avg_food_price_yearly) AS avg_food_price_yearly,
    AVG(p.food_yoy_percent) AS avg_food_yoy_percent,
    AVG(p.avg_wage_yearly_overall) AS avg_wage_yearly_overall,
    AVG(p.wage_yoy_percent) AS avg_wage_yoy_percent
FROM data_academy_content.t_michaela_ticha_project_SQL_primary_final p
JOIN data_academy_content.t_michaela_ticha_project_SQL_secondary_final g
      ON g.year = p.year
WHERE g.country = 'Czech Republic'
GROUP BY p.year, g.gdp, g.population, g.gini
ORDER BY p.year;
