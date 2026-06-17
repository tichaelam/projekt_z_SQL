# Projekt z SQL

## Přehled obsahu repozitáře
- **Úvodní dokument  a popis mezivýsledků**
1. README.md
- **SQL skripty**
1. SQL_script_primary_final - SQL skript generující [tuto](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_primary_final.csv) tabulku
2. SQL_script_secondary_final - SQL skript generující [tuto](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_secondary_final.csv) tabulku
3. datovy_podklad_VO - zformulované VO a SQL skripty, které získaly datový podklad k zodpovězení VO.
- **tabulky**
1. t_michaela_ticha_project_sql_primary_final.csv
2. t_michaela_ticha_project_sql_secondary_final.csv
   
## Úvod
- Projekt se zabývá životní úrovní občanů, a to na základě dostupnosti základních potravin široké veřejnosti. Slouží jako podkladový materiál pro porovnání dostupnosti potravin na základě průměrných příjmů za období od 2006 do 2018. Cílem projektu bylo zodpovědět stanovené výzkumné otázky (VO)

## Výzkumné otázky
1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
- **ZODPOVĚZENÍ VO 1:** Mzdy ve sledovaném období 2006–2018 nerostly ve všech odvětvích nepřetržitě, některé odvětví zaznamenaly meziroční poklesy. Nejčastěji k poklesu mezd docházelo v odvětví Těžba a dobývání, kde byly zaznamenány celkem čtyři meziroční poklesy průměrných mezd. Ve více odvětvích se objevily dva poklesy mezd, konkrétně v odvětvích Výroba a rozvod elektřiny, plynu, tepla a klimatizovaného vzduchu, Velkoobchod a maloobchod; opravy a údržba motorových vozidel, Ubytování, stravování a pohostinství, Profesní, vědecké a technické činnosti, Veřejná správa a obrana; povinné sociální zabezpečení a Kulturní, zábavní a rekreační činnosti. Jeden meziroční pokles zaznamenalo Zemědělství, lesnictví a rybářství, Zásobování vodou; činnosti související s odpady a sanacemi, Stavebnictví, Informační a komunikační činnosti, Peněžnictví a pojišťovnictví, Činnosti v oblasti nemovitostí a Vzdělávání. Celkový trend vývoje mezd zůstával ale rostoucí. Žádný meziroční pokles mezd se objevil v Zpracovatelský průmysl, Doprava a skladování, Administrativní a podpůrné činnosti a Zdravotní a sociální péči a Ostatní činnosti. Zde mzdy během sledovaného období buď rostly, nebo stagnovaly. Mzdy ve všech odvětvích nerostly nepřetržitě. Vývoj mezd se mezi jednotlivými odvětvími liší a v řadě z nich docházelo k meziročním poklesům.

2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
- **ZODPOVĚZENÍ VO 2:** V prvním sledovaném období dosahovala průměrná mzda 20 342,38 Kč, zatímco v posledním sledovaném období vzrostla na 31 980,26 Kč, což představuje nárůst přibližně o 57 %. V případě chleba činila jeho průměrná cena v Q1 roku 2006 16,17 Kč za 1kg a za tehdejší průměrnou mzdu se dalo koupit přibližně 1 258 kg chleba. Ve 4Q roku 2018 vzrostla cena chleba na 24,24 Kč za 1kg a díky vyšším mzdám bylo možné koupit přibližně 1 319 kilogramů chleba za tehdejší průměrnou mzdu. Přestože cena chleba během sledovaného období vzrostla, průměrná mzda napříč odvětvími také. Podobně to také bylo u mléka. V roce 2006 dosahovala jeho průměrná cena 14,44 Kč za 1l a za tehdejší průměrnou mzdu bylo možné koupit přibližně 1 409 l. V roce 2018 se cena mléka zvýšila na 19,82 Kč za 1l, avšak díky růstu mezd se zvýšilo i množství, které si bylo možné koupit, a to 1 614 l. Dá se tedy usuzovat, že růst mezd v průběhu sledovaného období převýšil růst cen mléka a chleba. Po porovnání prvního a posledního srovnatelného období vychází, že z průměrné mzdy napříč odvětvími a z průměrných cen mléka a chleba si veřejnost mohla za průměrnou mzdu koupit větší množství těchto potravin než na začátku sledovaného období, i přes to, že ceny chleba i mléka rostly.

3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
- **ZODPOVĚZENÍ VO 3:** Kategorie potravin, která v průběhu sledovaného období zdražovala nejpomaleji, byl krystalový cukr. Pro každou kategorii potravin byl vypočítán průměrný meziroční procentuální růst cen a následně byly jednotlivé kategorie seřazeny podle dosažené hodnoty. U krystalového cukru byla zjištěna průměrná meziroční změna ceny ve výši -1,92 %. Záporná hodnota znamená, že cena cukru ve sledovaném období v průměru neklesala pouze pomaleji než u ostatních potravin, ale naopak docházelo k jejímu postupnému zlevňování. Krystalový cukr tak představuje jedinou kategorii, u níž dlouhodobý trend neukazuje růst cen, ale mírný pokles. Vývoj ceny cukru naznačuje, že se jedná o outlinera mezi ostatními potravinami.

4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
- **ZODPOVĚZENÍ VO 4:** Pro zodpovězení této otázky jsem porovnala meziroční změny cen potravin (food_yoy_percent) a meziroční změny mezd (wage_yoy_percent). Žádné roky nesplnily danou podmínku, ve výsledné tabulce se neobjevil žádný záznam. Z toho se dá usuzovat, že v průběhu sledovaného období nenastal rok, kdy by ceny potravin rostly natolik rychle, aby převýšily růst mezd o více než stanovenou mezní hodnotu. V některých letech mohly ceny potravin růst rychleji než mzdy, ale tento rozdíl nebyl natolik výrazný, aby překročil hranici 10 %. Neexistuje tedy rok, kdy byl nárůst cen potravin výrazně vyšší než růst mezd, a dá se říci, že růst mezd byl ve většině případů schopen pokrýt růst cen potravin.

5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
- **ZODPOVĚZENÍ VO 5:** Z dat lze usuzovat, že mezi výškou HDP růstem mezd a cen potravin je určitá souvislost. Například HDP vzrostlo z 227,4 mld. USD v roce 2015 na 233,2 mld. USD v roce 2016 a následně na 245,2 mld. USD v roce 2017. Ve stejném období se tempo růstu mezd zvýšilo z 2,42 % (2015) na 3,66 % (2016) a dále na 6,40 % (2017). V roce 2018 HDP dále vzrostlo na 253,0 mld. USD a růst mezd dosáhl 7,55 %, což představovalo nejvyšší hodnotu od roku 2008. Po poklesu HDP z 214,1 mld. USD v roce 2008 na 204,1 mld. USD v roce 2009 se růst mezd snížil z 8,06 % na 3,25 %. Přesto mzdy nadále rostly, avšak jejich tempo růstu se výrazně zpomalilo. Výjimkou byl rok 2013, kdy HDP stagnovalo na úrovni 211,0 mld. USD (oproti 211,1 mld. USD v roce 2012), zatímco mzdy meziročně poklesly o 1,56 %, což byl jediný zaznamenaný meziroční pokles mezd ve sledovaném období. V případě cen potravin nebyla vazba na HDP tak jednoznačná. Nejvyšší růst cen potravin byl zaznamenán v roce 2017, kdy ceny vzrostly o 9,63 %, a kdy HDP současně vzrostlo z 233,2 mld. USD na 245,2 mld. USD. Naopak v roce 2018 HDP dále rostlo na 253,0 mld. USD, avšak růst cen potravin zpomalil na 2,17 %. Podobně v letech 2015 a 2016, kdy HDP rostlo z 215,8 mld. USD na 227,4 mld. USD a následně na 233,2 mld. USD, ceny potravin naopak klesaly o 0,55 %. Lze tedy říci, že růst HDP se častěji projevuje ve vývoji mezd než ve vývoji cen potravin. V obdobích výraznějšího ekonomického růstu obvykle docházelo i ke zrychlení růstu mezd, a to buď ve stejném roce, nebo s mírným časovým odstupem. U cen potravin však nebyla prokázána jednoznačná závislost na vývoji HDP, protože i při rostoucím HDP docházelo v některých letech ke zpomalování růstu cen nebo dokonce k jejich poklesu.

## Závěrečné zhodnocení
- Cílem projektu bylo analyzovat vývoj mezd, cen potravin a makroekonomických ukazatelů v České republice v období let 2006–2018 a posoudit jejich vzájemné souvislosti. Výsledky ukázaly, že česká ekonomika ve sledovaném období dlouhodobě rostla, což se projevilo především růstem mezd a zvyšováním životní úrovně obyvatel. Přestože se vývoj jednotlivých ukazatelů v některých letech lišil, celkový trend lze hodnotit jako pozitivní. 
- Analýza mezd potvrdila, že ve většině odvětví docházelo k jejich dlouhodobému růstu. Mzdy však nerostly ve všech odvětvích nepřetržitě a v některých případech byly zaznamenány meziroční poklesy. Nejvíce poklesů bylo zjištěno v odvětví těžby a dobývání, kde se mzdy meziročně snížily čtyřikrát. Naopak například ve zpracovatelském průmyslu, zdravotní a sociální péči nebo dopravě a skladování nebyl během sledovaného období zaznamenán žádný meziroční pokles mezd. Lze tedy konstatovat, že některá odvětví byla vůči ekonomickým výkyvům odolnější a vykazovala stabilnější mzdový vývoj.
- Důležité je okomentovat růst kupní síly obyvatel. V Q1 roku 2006 dosahovala průměrná mzda 20 342 Kč, zatímco ve Q4 roku 2018 již 31 980 Kč. Za průměrnou mzdu bylo možné v roce 2006 koupit přibližně 1 258 kg chleba a 1 409 l mléka, zatímco v roce 2018 to bylo přibližně 1 319 kg chleba a 1 614 l mléka. Přestože ceny obou sledovaných potravin vzrostly, růst mezd byl rychlejší, což vedlo ke zvýšení kupní síly obyvatel.
- S tím souvisí také dostupnost základních potravin, která se během sledovaného období zlepšila. Cena chleba vzrostla z 16,17 Kč/kg na 24,24 Kč/kg a cena mléka z 14,44 Kč/l na 19,82 Kč/l. Přesto si obyvatelé mohli za průměrnou mzdu koupit větší množství obou potravin než na začátku sledovaného období. Dá se tedy tvrdit, že růst příjmů veřejnosti převýšil růst cen základních potravin.
- Užitečným ukazatelem je také vývoj reálných mezd, tedy vztahu mezi růstem mezd a růstem cen. Nebyl nalezen rok, ve kterém by růst cen potravin převýšil růst mezd o více než 10 %. Ve sledovaném období tedy nedošlo k výraznému zhoršení ekonomické situace obyvatel, který by byl způsoben nepřiměřeně rychlým růstem cen potravin. Z dlouhodobého pohledu lze konstatovat, že růst mezd byl dostatečný k tomu, aby kompenzoval růst cen sledovaných potravin.
- Vývoj cen jednotlivých potravinových kategorií nebyl stejný. Nejpomaleji se vyvíjela cena krystalového cukru, která v průměru meziročně klesala o 1,92 %. To potvrzuje, že vývoj cen potravin není jednotný a jednotlivé potraviny mohou reagovat jinak různé další ekonomické a tržní faktory.
- V poslední části projektu byl analyzován vztah mezi HDP, mzdami a cenami potravin. Data naznačila, že růst HDP se promítal především do vývoje mezd. Například HDP vzrostlo z 227,4 mld. USD v roce 2015 na 245,2 mld. USD v roce 2017 a současně se růst mezd zrychlil z 2,42 % na 6,40 %. V roce 2018 dosáhl růst mezd 7,55 %, zatímco HDP vzrostlo na 253,0 mld. USD. Naopak u cen potravin nebyla prokázána jednoznačná souvislost s vývojem HDP, protože i v obdobích ekonomického růstu docházelo v některých letech ke zpomalení růstu cen nebo k jejich poklesu.
- Po zhodnocení všech částí projektu lze tvrdit, že ve sledovaném období docházelo k růstu mezd, zvyšování kupní síly obyvatel, zlepšování dostupnosti základních potravin a celkovému růstu životní úrovně. Ekonomický růst měřený HDP měl zřetelný vliv na vývoj mezd, avšak jeho vliv na ceny potravin nebyl jednoznačně prokázán. Ekonomická situace obyvatel České republiky se mezi lety 2006 a 2018 zlepšovala, protože růst příjmů převyšoval růst cen základních potravin a nedocházelo k výraznému zhoršování jejich dostupnosti.

## Doplňující informace
- **Byly použity čtyři hlavní zdroje a k nim přidružené dimenzní tabulky, první dva pro finalizaci [primární tabulky](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_primary_final.csv) a druhé dva pro [sekundární tabulku](https://github.com/tichaelam/projekt_z_SQL/blob/main/t_michaela_ticha_project_sql_secondary_final.csv):**
*1. czechia_payroll*
*2. czechia_price*
*3. countries*
*4. economies*

## Poznámky
- **Popis kódů sloupců tabulek**
- t_michaela_ticha_project_sql_primary_final.csv

| Název                     | Popis                                                         |
|---------------------------|---------------------------------------------------------------|
| year                      | Kalendářní rok, ke kterému se záznam vztahuje                |
| quarter                   | Čtvrtletí (Q1–Q4), ve kterém je hodnota zjišťována           |
| category_code             | Kód potravinové kategorie                                    |
| category_name             | Název potravinové kategorie                                  |
| unit_standardized         | Standardizovaná jednotka měření (kg, litr, ks)              |
| avg_price                 | Průměrná cena dané kategorie za období                      |
| industry_branch_code      | Kód průmyslového odvětví                                    |
| industry_branch_name      | Název průmyslového odvětví                                  |
| avg_wage_yearly_branch    | Průměrná roční mzda v daném odvětví                          |
| avg_price_yearly          | Průměrná roční cena dané kategorie                           |
| price_yoy_percent         | Meziroční procentuální změna ceny                            |
| avg_food_price_yearly     | Průměrná roční cena potravin celkem                          |
| food_yoy_percent          | Meziroční procentuální změna cen potravin*                    |
| avg_wage_yearly_overall   | Průměrná roční mzda všech odvětví                            |
| wage_yoy_percent          | Meziroční procentuální změna mezd                            |
| is_bread                  | Změna dostupnosti chleba v čase, 1 = TRUE, 0 = FALSE         |
| is_milk                   | Změna dostupnosti mléka v čase, 1 = TRUE, 0 = FALSE          |

*Year over Year (= porovnání hodnoty v aktuálním roce se stejným ukazatelem z předchozího roku)

- t_michaela_ticha_project_sql_secondary_final.csv

| Název       | Popis                                     |
|-------------|-------------------------------------------|
| country     | Název státu                               |
| year        | Rok, ke kterému se hodnoty vztahují       |
| gdp         | HDP státu                                 |
| population  | Počet obyvatel státu                      |
| gini        | Gini koeficient (míra ekonomické nerovnosti) |

## Popis jednotlivých kroků v primárním SQL skriptu
- Obsahem této kapitoly úvodního dokumentu je komentář k jednotlivým krokům a mezivýsledkům SQL skriptu, které jsou přímo v kódu odděleny označením KROK.
  
**1. KROK** - Příprava dat pro analýzu
-  Z tabulky czechia_price jsem vybrala pouze řádky, které mají:
 - platný časový údaj date_from (není NULL)
 - platný region_code (není NULL)
- Pomocí EXTRACT(YEAR) a EXTRACT(QUARTER) jsem z date_from dopočítala sloupce year a quarter.
- Mezivýsledek: price_with_quarter:
  - 1 řádek = 1 měření ceny v konkrétním regionu + odvozený rok a kvartál
  - odstraněny řádky bez data nebo regionu
    
**2. KROK** - Kvartální agregace
- Z price_with_quarter jsme spočítali průměrné kvartální ceny (AVG(value)) pro každou kombinaci:
 - year
 - quarter
 - category_code
- Mezivýsledek: price_quarterly_raw:
 - 1 řádek = 1 rok/ 1 kvartál/ 1 potravinová kategorie
 - sloupec avg_price_raw = surový kvartální průměr ceny

**3. KROK** - Vytvoření payroll_clean
- Z tabulky czechia_payroll jsem vybrala jen ty informace, které reprezentují průměrnou hrubou mzdu na zaměstnance (value_type_code = 5958), jsou počítány jako průměr (calculation_code = 100), mají vyplněné průmyslové odvětví (industry_branch_code IS NOT NULL) a mají vyplněnou hodnotu (value IS NOT NULL).
- Zároveň jsem vytvořila sloupce:
  - payroll_year → year
  - payroll_quarter → quarter
- Mezivýsledek: payroll_clean:
  - 1 řádek = 1 rok/ 1 kvartál/ 1 odvětví/ 1 mzdový ukazatel
- Také byly odstraněny nevhodné typy výpočtů a NULL hodnoty. Z payroll_clean jsem dále počítala 4. a 5. KROK.

**4. KROK** - Výpočet roční průměrné mzdy pro každé průmyslové odvětví
- Pro porovnání s ročními cenami potravin potřebuji také mzdy na roční úrovni, proto jsem z payroll_clean spočítala průměrnou roční mzdu pro každé průmyslové odvětví jako průměr přes 4 kvartály daného roku.
- Mezivýsledek: payroll_yearly_avg_branch_raw:
  - 1 řádek = 1 rok/ 1 odvětví
  - avg_wage_yearly_branch_raw = roční průměr mezd v daném oboru

**5. KROK** - Průměrná mzda v ČR v daném roce
- Zde jsem počítala průměrnou roční mzdu pro každé průmyslové odvětví.
- Mezivýsledek: payroll_yearly_avg_overall_raw:
  - 1 řádek = 1 rok
  - avg_wage_yearly_overall_raw = průměrná mzda v celé ČR

**6. KROK** - Roční průměrná cena pro každou kategorii potravin
- Důležitý krok, kvartální ceny jsem agregovala na roční úroveň (výpočet yoy růstu).
- Mezivýsledek: price_yearly_by_cat_raw:
  - 1 řádek = 1 rok/ 1 kategorie potravin
  - avg_price_yearly_raw = roční průměrná cena potraviny

**7. KROK** - Meziroční růst cen potravin yoy
- Na roční průměrné ceny (price_yearly_by_cat_raw) jsem aplikovala fci LAG, abych získala cenu v předchozím roce pro danou kategorii. Z ní jsem spočítala meziroční změnu měřenou v procentech (price_yoy_raw).
- Mezivýsledek: price_yearly_by_cat_lag + price_yearly_by_cat_yoy_raw:
  - avg_price_yearly_raw = roční cena
  - prev_price_yearly_raw = cena v předchozím roce
  - price_yoy_raw = meziroční změna v procentech.
- POZNÁMKA: První rok v každé kategorii má price_yoy_raw = NULL, protože neexistuje předchozí hodnota.
  
**8. KROK** - Potravinový index
- Vzniká agregovaný potravinový index a jeho meziroční změny, které jsem zároveň porovnala s yoy růstem průměrné mzdy v ČR.
- Z price_yearly_by_cat_raw jsem vytvořila food_year, kde je pro každý rok spočítán průměr skrze všechny kategorie (avg_food_price_yearly_raw). Toto jsem spojila s roční průměrnou mzdou (payroll_yearly_avg_overall_raw).
- Pomocí fce LAG() jsem následně získala hodnoty průměrné ceny potravin a průměrné mzdy z předchozího roku (prev_food a prev_wage), které byly využity pro výpočet food_yoy_raw (yoy růst avg_food_price_yearly_raw) a wage_yoy_raw (yoy růst průměrné mzdy).
- Mezivýsledek: food_and_wage_yearly_raw:
  - 1 řádek = 1 rok
  - avg_food_price_yearly_raw = průměrná roční cena souboru konkrétních potravin
  - avg_wage_yearly_overall_raw = průměrná roční mzda
  - food_yoy_raw = yoy potravin
  - wage_yoy_raw = yoy mezd
     
**9. KROK** - Vytvoření finální tabulky
- Zde dochází ke spojení všech mezivýsledků do tabulky t_michaela_ticha_project_sql_primary_final, přičemž raw hodnoty jsou zaokrouhleny pomocí funkce ROUND(). Součástí finální tabulky jsou také sloupce is_bread a is_milk typu BOOLEAN, které označují, zda daný řádek odpovídá kategorii chleba nebo mléka. Sloupce slouží k identifikaci kategorií chleba a mléka pro zodpovězení VO 2.

## Popis jednotlivých kroků v sekundárním SQL skriptu
- Přímo ve skriptu se žádné rozdělení na kroky nenachází, jelikož je kód podstatěji kratší. Proto jen obecně popíšu postup:
  
**1. KROK** - Zdrojem dat je dataset *economies*, ze kterého vybírám potřebné sloupce country, year, gdp, population a gini.

**2. KROK** - Filtruji období mezi lety 2006 a 2018 a pouze EU státy. Evropské státy musím filtrovat ručně, protože jsou ve sloupci country i celé regiony nebo jiné kategorie zemí.

**3. KROK** - Seřadím tabulku podle country a year a vytvořím finální sekundární tabulku t_michaela_ticha_project_sql_secondary_final.

## Komnetář k postupu ve SQL skriptech
- V průběhu psaní skriptu bylo stěžejní se zaměřit na několik problematik, aby byl nejenom funkční, ale aby se z výstupních dat daly získat potřebné informace. Tyto problematiky budou sepsány níže.
  
### Mzdové údaje
- calculation_code 100 a value_type_code 5958 byla jediná kombinace, se kterou se následně daly srovnat ceny potravin.

### Regionálnost cen potravin
- Jelikož výše mezd byla poskytnuta na celostátní úrovni, musela jsem použít celostátní průměr cen potravin. To je především odůvodněno zněním VO, které se ptají na celostátní stav nebo podle stav podle odvětví. Regiony nebyly pro analýzu potřebné.

### Časové období
- Dva hlavní datasety czechia_payroll a czechia_price se překrývají pouze v období 2006-2018, brala jsem toto období jako srovnatelné období.

 ### Přiřazení date_from a date_to ke quarter a year
 - czechia_price určoval cenovou úroveň potravin na základě šestidenního pozorování, kdy jsem ceny přiřadila ke korespondenčním kvartálům payroll_quarter a payroll_year za pomocí definování **EXTRACT(QUARTER FROM date_from)** a **EXTRACT(YEAR FROM date_from)**. Díky tomu jsem mohla agregovat ceny na kvartály a mohla jsem spojit dataset správně k údajům z czech_payroll. Tento krok byl také důležitý pro výpočet ročních průměrů a ročních nárůstů cen.

### Kvartální agregace cen
- Kvůli mnoha cenovým měření za rok jsem musela nejdříve spočítat průměry kvartálu a z nich roční průměry. Toto rozhodnutí hlavně umožnilo mít jednu průměrnou cenu na kvartál i potravinovou kategorii a bylo to vhodnější skrze porovnávání se mzdami.

### Průměrování
- Důležité pro *yoy* (označení pro meziroční změnu == percentuální růst cen potravin a výše mezd). Výpočet *yoy* je totiž možný jen na úrovni let a VO se také odkazují na meziroční nárůst. Proto byla mzdová data průměrována jako průměr všech kvartálů daného roku (Q1-Q4) a cenová data byla průměrována jako všechny kvartální průměry daného roku).

### Výpočet yoy hodnot
- pomocí fce LAG() jsem získala hodnotu z roku t-1. Zde jsem také musela vyřešit missing values u let, kde neexistovaly údaje pro předchozí rok.

### Missing values
- NULL hodnoty v projektu nejsou nahrazovány ani nulou, ani dopočítáváním. Funkce AVG() M/U ignoruje. Jelikož výpočet *yoy* hodnot požaduje dvě hodnoty, a to hodnoty z t-1 a současného roku, tak kde chyběl jeden nebo oba údaje, je yoy=NULL. Proto ve finální tabulce je hodně NULL values pro: price_yoy_percent, food_yoy_percent, wage_yoy_percent.

### Duplicity
- Funkcí EXTRACT jsme vyloučili chybu ve výpočtu kvartálů u cen potravin.

### První a poslední srovnatelné období
- U VO 2 je identifikace těchto období klíčové. Vybrala jsem tedy jako první období první kvartál prvního roku (2006 Q1) a jako poslední čtvrtý kvartál posledního roku (2018 Q4).

### Filtrace dat
- V tabulce *economies* jsou ve sloupci *country* pomíchané jak regiony, tak státy, proto jsem musela vyfiltrovat seznam EU států na základě [údajů od Council of Europe](https://www.coe.int/en/web/portal/members-states).

### VO 4
- po vyvolání [SQL skriptu, ze kterého lze odpovědět na VO 4](https://github.com/tichaelam/projekt_z_SQL/blob/main/datovy_podklad_VO), vyjede prázdná tabulka, z čehož lze usuzovat, že růst cen potravin o 10 % nenastal.
