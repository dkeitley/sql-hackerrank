# Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
# Solution by Daniel Keitley. 

(SELECT DISTINCT CITY, LENGTH(CITY) AS city_length
FROM STATION
ORDER BY city_length ASC, CITY ASC
LIMIT 1)

UNION

(SELECT DISTINCT CITY, LENGTH(CITY) AS city_length
FROM STATION
ORDER BY city_length DESC, CITY ASC
LIMIT 1);