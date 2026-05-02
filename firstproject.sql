use world;
-- Getting a feel for the city table
desc city;
Select * from city;

-- getting a feel for the country table
Desc country;
Select * from country;

-- Getting a feel for the country language table
Desc countrylanguage;
Select * from countrylanguage;

-- which cities have the highest poppulations in the world and which country are they in? 
SELECT 
    city.name, city.population, country.name
FROM
    city
        INNER JOIN
    country ON city.countrycode = country.Code
ORDER BY city.population DESC;
-- We find that Mumbai(India), Seoul(South Korea) and Sao Paulo(Brazil) Are the three most populous countries in the world. 

-- Question: Does the sum of population of cities for a country in the city table total up to the population of the country? 
-- First get the sum of the population of cities and group by country, then get the population from countries and compare side to side. 

SELECT 
    SUM(city.population) AS Total_urban_population,
    country.Population AS Total_population,
    country.name
FROM
    city
        INNER JOIN
    country ON city.CountryCode = country.Code
GROUP BY CountryCode;
-- Just looking at this visually, we can see that the populations in cities do not account for he total populations of the countries.

-- Next questions what are the number of rural population in each country, what is the percentage of rural 
-- population/urban populations to total population in each country and which countries have the highest 
-- urban population/ rural populations as a percentage of total population.

SELECT 
    SUM(city.population) AS Total_Urban_Population,
     (country.population - Sum(city.population)) as Total_Rural_Population,
    country.Population AS Total_Population,
    ((SUM(city.population))/country.Population)*100 as Percentage_Urban_Population,
    ((country.population - Sum(city.population))/country.Population)*100 as Percentage_Rural_Population,
    country.name
FROM
    city
        INNER JOIN
    country ON city.CountryCode = country.Code
GROUP BY CountryCode;

-- Find out the primary language in each country. 
SELECT 
    country.name,
    countrylanguage.language,
    countrylanguage.IsOfficial,
    countrylanguage.Percentage
FROM
    countrylanguage
        JOIN
    country ON countrylanguage.CountryCode = country.Code
WHERE
    countrylanguage.IsOfficial = TRUE;
    
-- Seems like some countries have more than 1 official language?! Which countries are they and how many 
-- official languages do they have? Also what percentage of people speak atleast 1 official language in each country

SELECT 
    country.name,
    count(countrylanguage.language) as Number_of_Official_Languages,
    sum(countrylanguage.percentage) As Percentage
FROM
    countrylanguage
        JOIN
    country ON countrylanguage.CountryCode = country.Code
WHERE
    countrylanguage.IsOfficial = TRUE
Group by country.name
order by Number_of_official_languages desc;

-- Order each country by their GNP
SELECT 
    name, GNP
FROM
    country
ORDER BY GNP DESC;

-- Order each country by their poppulation
SELECT 
    name, population
FROM
    country
ORDER BY population DESC;

-- What are the countries GNP per capita; ordered in desc order

SELECT 
    name, GNP/population as GNP_Per_capita
FROM
    country
ORDER BY GNP_Per_Capita DESC;

-- What is the change in GNP for countries that have OLD GNP data. If a country does not have GNP data return "no data". 
-- sorted by percentage change
SELECT 
    name,
    CASE
        WHEN gnpold IS NULL THEN 0
        ELSE (gnp - gnpold) / gnpold * 100
    END AS Percentage_change
FROM
    country
HAVING Percentage_change <> 0
ORDER BY percentage_change DESC;

-- order each country by their life expectancies. 
SELECT 
    name, LifeExpectancy
FROM
    country
ORDER BY LifeExpectancy desc;

