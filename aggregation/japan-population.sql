# Problem: https://www.hackerrank.com/challenges/japan-population/problem
# Solution by Daniel Keitley. 

SELECT SUM(Population) FROM CITY
WHERE COUNTRYCODE = "JPN";