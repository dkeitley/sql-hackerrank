# Problem: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
# Solution by Daniel Keitley. 

SELECT DISTINCT CITY FROM STATION
WHERE CITY RLIKE '[^AEIOUaeiou]$';