# Projekt z SQL
## Úvod
- Projekt se zabývá životní úrovní občanů, a to na základě dostupnosti základních potravin širové veřejnosti. Slouží jako podkladový materiál pro porovnání dostupnosti potravin na základě průměrných příjmů za období od 2006 do 2018, s cílem zodpovězení následujících výzkumných otázek (VO):
1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)? 
4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
- Pro zodpovězení páté VO byla vytvořena dodatečná tabulka o EU státech pro porovnání.
- **Byly použity čtyři hlavní zdroje a k nim přidružené dimenzní tabulky, první dva pro finalizaci [primární tabulky](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_primary_final.csv) a druhé dva pro [sekundární tabulku](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_secondary_final.csv):**
*1. czechia_payroll*
*2. czechia_price*
*3. countries*
*4. economies*

## Přehled obsahu repozitáře
- **Úvodní dokument  a popis mezivýsledků**
1. PRUVODNILISTINA.md
- **SQL skripty**
1. SQL_script_primary_final - SQL skript generující [tuto](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_primary_final.csv) tabulku
2. SQL_script_secondary_final - SQL skript generující [tuto](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_secondary_final.csv) tabulku
3. datovy_podklad_VO - SQL skript, který získá datový podklad k zodpovězení všech VO
- **tabulky**
1. t_michaela_ticha_project_sql_primary_final.csv
2. t_michaela_ticha_project_sql_secondary_final.csv
   
## Hlavní oblasti zájmu
- V průběhu psaní skriptu bylo stěžejní se zaměřit na několik problematik, aby byl nejenom funkční, ale aby se z výstupních dat daly získat potřebné informace. Tyto problematiky budou sepsány níže.
  
### Mzdové údaje
- calculation_code 100 a value_type_code 5958 byla jediná kombinace, se kterou se následně daly srovnat ceny potravin.

### Regionálnost cen potravin
- Jelikož výše mezd byla poskytnuta na celostátní úrovni, musela jsem použít celostátní průměr cen potravin. To je především odůvodněno zněním VO, které se ptají na celostátí stav nebo podle stav podle odvětví. Regiony nebyly pro analýzu potřebné.

### Časové období
- Dva hlavní datasety czechia_payroll a czechia_price se překrývají pouze v období 2006-2018, brala jsem toto období jako strovnatelné období.

 ### Přiřazení date_from a date_to ke quarter a year
 - czechia_price určoval cenovou úroveň potravin na základě šestidenního pozorování, kdy jsem ceny přiřadila ke korespondenčním kvartálům payroll_quarter a payroll_year za pomocí definování **EXTRACT(QUARTER FROM date_from)** a **EXTRACT(YEAR FROM date_from)**. Díky tomu jsem mohla agregovat ceny na kvartály a mohla jsem spojit dataset správně k údajům z czech_payroll. Tento krok byl také důležitý pro výpočet ročních průměrů a ročních nárůstů cen.

### Kvartální agregace cen
- Kvůli mnoha cenovým měření za rok jsem musela nejdříve spočítat průměry kvartálu a z nich roční průměry. Toto rozhodnutí hlavně umožnilo mít jednu průměrnou cenu na kvartál i potravinovou kategorii a bylo to vhodnější skrze porovnávání se mzdami.

### Průměrování
- Důležité pro *yoy* (označení pro meziroční změnu == percentuální růst cen potravin a výše mezd). Vyýpočet *yoy* je totiž možný jen na úrovni let a VO se také odkazují na meziroční nárůst. Proto byla mzdová data průměrována jako průměr všech kvartálů daného roku (Q1-Q4) a cenová data byla průměrována jako všechny kvartální průměry daného roku).

### Výpočet yoy hodnot
- pomocí fce LAG() jsem získala hodnotu z roku t-1. Zde jsem také musela vyřešit missing values u let, kde neexistovaly údaje pro předchozí rok.

### Missing values
- NULL hodnoty v projentu nejsou nahrazovány ani nulou, ani dopočítáváním. Funkce AVG() M/U ignoruje. Jelikož výpočet *yoy* hodnot požaduje dvě hosnoty, a to hodnoty z t-1 a současného roku, tak kde chyběl jeden nebo oba údaje, je yoy=NULL. Proto ve finální tabulce je hodně NULL values pro: price_yoy_percent, food_yoy_percent, wage_yoy_percent.

### Duplicity
- Funkcí EXTRACT jsme vyloučili chybu ve výpočtu kvartálů u cen potravin.

### První a poslední srovnatelné období
- U VO 2 je identifikace těchto období klíčové. Vybrala jsem tedy jako první období první kartál provního roku (2006 Q1) a jako poslední čtvrtý kvartál posledního roku (2018 Q4).

### Filtrace dat
- V tabulce *economies* jsou ve sloupci *country* pomíchané jak regiony, tak státy, proto jsem musela vyfiltrovat seznam EU států na základě [údajů od Council of Europe](https://www.coe.int/en/web/portal/members-states).

### VO 4
- po vyvolání [SQL skriptu, ze kterého lze odpovědět na VO 4](https://github.com/tichaelam/projekt_z_SQL/blob/main/datovy_podklad_VO), vyjede prázdá tabulka, z čehož lze usuzovat, že růst cen potravin o 10 % nenastal.



#column codes
#substep description
- 

