# Problem: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
# Solution by Daniel Keitley. 

SELECT JoinedTable.id, JoinedTable.age, MinCoinsTable.min_coins, JoinedTable.power
 FROM
 
 -- Create joined table with all information
 (SELECT Wands.id, Wands.code, Wands.coins_needed, Wands.power, Wands_Property.age, Wands_Property.is_evil FROM 
  Wands
  INNER JOIN Wands_Property
  ON Wands.code = Wands_Property.code) AS JoinedTable
 
INNER JOIN (
  
 -- Compute minimum coins needed per age and power
 SELECT Wands.code, power, MIN(coins_needed) AS min_coins FROM 
  Wands
  INNER JOIN Wands_Property
  ON Wands.code = Wands_Property.code
  WHERE Wands_Property.is_evil = 0 
  GROUP BY Wands.code, power
  ) AS MinCoinsTable
  
-- Join both tables based on code, age and on minimum coins needed.  
ON JoinedTable.code = MinCoinsTable.code AND JoinedTable.code = MinCoinsTable.code AND JoinedTable.power = MinCoinsTable.power AND JoinedTable.coins_needed = MinCoinsTable.min_coins

ORDER BY JoinedTable.power DESC, JoinedTable.age DESC;  
