# Problem: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
# Solution by Daniel Keitley. 

SELECT DISTINCT CITY FROM STATION
WHERE CITY RLIKE '^[^AEIOUaeiou]' AND CITY RLIKE '[^AEIOUaeiou]$';