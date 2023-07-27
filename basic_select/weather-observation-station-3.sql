# Problem: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
# Solution by Daniel Keitley. 

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0;