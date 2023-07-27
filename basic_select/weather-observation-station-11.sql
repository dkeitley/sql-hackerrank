# Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
# Solution by Daniel Keitley. 

SELECT DISTINCT CITY FROM STATION
WHERE CITY RLIKE '^[^AEIOUaeiou]|[^AEIOUaeiou]$';