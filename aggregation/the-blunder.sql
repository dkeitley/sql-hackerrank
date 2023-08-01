# Problem: https://www.hackerrank.com/challenges/the-blunder/problem
# Solution by Daniel Keitley. 

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, "0", ""))) from EMPLOYEES;
