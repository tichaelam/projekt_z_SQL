-- VO 1 Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
-- zjistujeme mezirocni rust po odvetvich - za pomoci procentualni zmeny vuci min. roku.
-- fce CASE určila pokles mzdy jako 1, vše ostatní jako 0
-- pomocí SUM() jsem spočítala, kolikrát mzdy v daném odvětví klesly.
WITH wage_changes AS (
    SELECT
        industry_branch_code,
        industry_branch_name,
        year,
        avg_wage_yearly_branch,
        LAG(avg_wage_yearly_branch) OVER (
            PARTITION BY industry_branch_code
            ORDER BY year
        ) AS previous_year_wage
    FROM data_academy_content.t_michaela_ticha_project_sql_primary_final
    GROUP BY
        industry_branch_code,
        industry_branch_name,
        year,
        avg_wage_yearly_branch
)
SELECT
    industry_branch_code,
    industry_branch_name,
    SUM(
        CASE
            WHEN avg_wage_yearly_branch < previous_year_wage THEN 1
            ELSE 0
        END
    ) AS number_of_wage_decreases
FROM wage_changes
WHERE previous_year_wage IS NOT NULL
GROUP BY
    industry_branch_code,
    industry_branch_name
ORDER BY
    number_of_wage_decreases DESC,
    industry_branch_code;
