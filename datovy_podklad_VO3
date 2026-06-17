-- VO 3 Která kategorie potravin zdražuje nejpomaleji?
-- neboli, hledame nejnizsi dlouhodoby prumer yoy rustu
-- ziskame potravinu s nejnizsim procentnim mezirocnim rustem, kde se yoy pocita z celorocnich prumeru
SELECT
    category_code,
    category_name,
    ROUND(AVG(price_yoy_percent), 2) AS avg_yearly_growth_percent
FROM data_academy_content.t_michaela_ticha_project_sql_primary_final
WHERE price_yoy_percent IS NOT NULL
GROUP BY category_code, category_name
ORDER BY avg_yearly_growth_percent ASC
LIMIT 1;
