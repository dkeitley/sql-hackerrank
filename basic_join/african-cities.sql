# Problem: https://www.hackerrank.com/challenges/african-cities/problem
# Solution by Daniel Keitley. 

SELECT CITY.Name FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE Continent = "Africa";