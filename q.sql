--1
select * from table o_results where place >3 and note <7 order by place desc

--2
SELECT Name,AREA
FROM o_countries
WHERE AREA LIKE ‘%000%’

--3
SELECT country_id, gold, silver, bronze, gold + silver + bronze AS total
FROM o_medal_table
WHERE gold + silver + bronze > 10
ORDER BY total DESC;

--4
SELECT *
FROM o_countries
WHERE name LIKE 'A___a';

--5
select  birthplaces,athletes FROM o_athletes WHERE BETWEEN (2 AND 5)

--6
SELECT capital, capitals
FROM o_countries
JOIN (
    SELECT SUBSTR(capital, 1, 1) AS first, COUNT(*) AS capitals
    FROM o_countries
    GROUP BY SUBSTR(capital, 1, 1)) ON first = SUBSTR(capital, 1, 1)
ORDER BY capitals DESC;

--7
SELECT continent, 
FROM o_countries c, o_athletes a
WHERE country_id = country_id AND ATHLETENAME=ATHLETENAME
GROUP BY continent

--8
SELECT e.name
FROM o_sport_disciplines d, o_sport_events e, o_results r
WHERE d.d_id = e.discipline_id AND r.event_id = e.e_id;

--9
SELECT country_id, gold, silver, bronze, gold + silver + bronze
FROM o_country  JOIN o_medal_table m
WHERE madels > 10
ORDER BY 5 DESC;

--10
SELECT country_id, gold, silver, bronze, gold + silver + bronze AS total
FROM o_medal_table
WHERE gold + silver + bronze > 10
ORDER BY total DESC
