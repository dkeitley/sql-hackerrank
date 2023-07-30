# Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
# Solution by Daniel Keitley. 

SELECT
    CASE
        WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN "Not A Triangle"
        WHEN A = B AND B = C THEN "Equilateral"
        WHEN A = B OR A = C  OR B = C THEN "Isosceles"
        WHEN A != B AND B != C THEN "Scalene"
    END AS TriangleType
FROM TRIANGLES;