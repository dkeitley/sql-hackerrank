# Problem: https://www.hackerrank.com/challenges/more-than-75-marks/problem
# Solution by Daniel Keitley. 

SELECT Name FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3) ASC, ID ASC;