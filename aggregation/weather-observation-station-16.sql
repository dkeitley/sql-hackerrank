# Problem: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
# Solution by Daniel Keitley. 

SELECT ROUND(MIN(LAT_N),4) FROM STATION
WHERE LAT_N > 38.7780;