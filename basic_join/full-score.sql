# Problem: https://www.hackerrank.com/challenges/full-score/problem
# Solution by Daniel Keitley. 

SELECT OutputTable.ID, OutputTable.Name
FROM (
    SELECT Hackers.hacker_id AS ID, MIN(Hackers.name) AS Name, COUNT(Hackers.hacker_id) AS num_full_scores
    FROM Hackers
    INNER JOIN Submissions
    ON Hackers.hacker_id = Submissions.hacker_id
    INNER JOIN Challenges
    ON Submissions.challenge_id = Challenges.challenge_id
    INNER JOIN Difficulty
    ON Challenges.difficulty_level = Difficulty.difficulty_level
    WHERE Submissions.score = Difficulty.score
    GROUP BY Hackers.hacker_id
    HAVING num_full_scores > 1 
    ORDER BY num_full_scores DESC, Hackers.hacker_id ASC
) AS OutputTable;
