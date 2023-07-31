# Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
# Solution by Daniel Keitley. 

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population)) FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;