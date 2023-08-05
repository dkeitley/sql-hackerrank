# Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
# Solution adatped from https://www.scaler.com/topics/sql-median/. 

SET @index := -1;
SELECT
   ROUND(AVG(OrderedLatTable.OrderedLats),4) as Median
FROM
   (SELECT @index:=@index + 1 AS i,
           STATION.LAT_N AS OrderedLats
    FROM STATION
    ORDER BY STATION.LAT_N) AS OrderedLatTable
WHERE 
OrderedLatTable.i IN (FLOOR(@index / 2), CEIL(@index / 2));
