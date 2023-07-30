# Problem: https://www.hackerrank.com/challenges/the-pads/problem
# Solution by Daniel Keitley. 


SELECT CONCAT(Name, "(", LEFT(Occupation, 1), ")") FROM OCCUPATIONS
ORDER BY Name ASC;

SELECT CONCAT("There are a total of ", COUNT(Occupation), " ", LOWER(Occupation), "s.") FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;
