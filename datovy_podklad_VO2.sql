-- VO 2 Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední období?
-- porovnáváme první a poslední srovnatelné období, tedy první kvartál roku 2006 a poslední kvartál roku 2018.
-- Nemá cenu vyvolávat výsledky pro všechny kvartály, jelikož řešíme jen průměrnou mzdu za všechna odvětví.
WITH selected_periods AS (
    SELECT
        year,
        quarter,
        avg_wage_yearly_overall
    FROM data_academy_content.t_michaela_ticha_project_sql_primary_final
    WHERE 
        (year = 2006 AND quarter = 1)
        OR
        (year = 2018 AND quarter = 4)
    GROUP BY
        year,
        quarter,
        avg_wage_yearly_overall
),
selected_foods AS (
    SELECT
        year,
        quarter,
        category_code,
        category_name,
        avg_price_yearly
    FROM data_academy_content.t_michaela_ticha_project_sql_primary_final
    WHERE category_code IN (114201, 111301)
      AND (
            (year = 2006 AND quarter = 1)
            OR
            (year = 2018 AND quarter = 4)
          )
    GROUP BY
        year,
        quarter,
        category_code,
        category_name,
        avg_price_yearly
)
SELECT
    sp.year,
    sp.quarter,
    sf.category_code,
    sf.category_name,
    sp.avg_wage_yearly_overall,
    sf.avg_price_yearly,
    ROUND(sp.avg_wage_yearly_overall / sf.avg_price_yearly, 2) AS affordable_amount
FROM selected_periods sp
JOIN selected_foods sf
    ON sp.year = sf.year
   AND sp.quarter = sf.quarter
ORDER BY
    sp.year,
    sp.quarter,
    sf.category_code;
