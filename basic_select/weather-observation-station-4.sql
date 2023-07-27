# Problem: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
# Solution by Daniel Keitley. 

SELECT COUNT(CITY)- COUNT(DISTINCT CITY) FROM STATION;