# Problem: https://www.hackerrank.com/challenges/occupations/problem
# Solution adapted from https://www.hackerrank.com/challenges/occupations/forum/comments/731399. 

SET @doc_index=0, @prof_index=0, @sing_index=0, @act_index=0;

# Collapse IndexValues using MIN (or MAX)
SELECT MIN(Doctor) AS Doctors, MIN(Professor) AS Professors, MIN(Singer) AS Singers, MIN(Actor) AS Actors
FROM(
  
  SELECT CASE 
  	# Record occurrences of each occupation as IndexValue
  	WHEN Occupation='Doctor' THEN (@doc_index:=@doc_index+1)
    WHEN Occupation='Professor' THEN (@prof_index:=@prof_index+1)
    WHEN Occupation='Singer' THEN (@sing_index:=@sing_index+1)
    WHEN Occupation='Actor' THEN (@act_index:=@act_index+1) END AS IndexValue,
  	
  	# Pivot the occupation column
    CASE WHEN Occupation='Doctor' THEN Name END as Doctor,
    CASE WHEN Occupation='Professor' THEN Name END as Professor,
    CASE WHEN Occupation='Singer' THEN Name END as Singer,
    CASE WHEN Occupation='Actor' THEN Name END as Actor
  FROM OCCUPATIONS
  
  # Order alphabetically
  ORDER BY Name
) IndexedPivotTable
  
# Collate Names with same IndexValue
GROUP BY IndexValue; 

