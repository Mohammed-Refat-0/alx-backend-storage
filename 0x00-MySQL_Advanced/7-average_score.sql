-- SQL script that creates a stored procedure ComputeAverageScoreForUser
-- ComputeAverageScoreForUser computes and stores the average score for a student

DELIMITER //
CREATE PROCEDURE ComputeAverageScoreForUser(IN input_user_id INT)
BEGIN

DECLARE Avg_Score DECIMAL(10,2);

SELECT AVG(score) INTO Avg_Score
FROM (SELECT score FROM corrections WHERE user_id = input_user_id) AS subquery;

UPDATE users 
SET average_score = Avg_Score 
WHERE users.id = input_user_id;

END //
DELIMITER ;
