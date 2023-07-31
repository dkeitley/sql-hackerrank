# Problem: https://www.hackerrank.com/challenges/the-report/problem
# Solution by Daniel Keitley. 

SELECT 
CASE WHEN GRADES.Grade >= 8 THEN STUDENTS.Name END as Names, 
GRADES.Grade, STUDENTS.Marks
FROM STUDENTS
INNER JOIN GRADES
ON STUDENTS.Marks BETWEEN GRADES.Min_Mark AND GRADES.Max_Mark
ORDER BY GRADES.Grade DESC, Names ASC,
    CASE WHEN GRADES.Grade < 8 THEN STUDENTS.Marks END ASC;