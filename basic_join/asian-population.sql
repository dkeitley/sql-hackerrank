# Problem: https://www.hackerrank.com/challenges/asian-population/problem
# Solution by Daniel Keitley. 

SELECT SUM(CITY.Population) AS ContinentPopulation FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE Continent = "Asia";