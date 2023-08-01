# Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem
# Solution by Daniel Keitley. 

SELECT MAX(months * salary) as max_earnings, COUNT(employee_id) as employee_count
FROM EMPLOYEE
WHERE months * salary = (SELECT MAX(months * salary) FROM EMPLOYEE);
