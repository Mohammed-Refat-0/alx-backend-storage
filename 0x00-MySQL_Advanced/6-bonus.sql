-- SQL script that creates a stored procedure AddBonus that adds a new correction for a student.

DELIMITER //

CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score FLOAT)
BEGIN
    DECLARE project_id INT;

    IF NOT EXISTS (SELECT 1 FROM projects WHERE name = project_name) THEN
        INSERT INTO projects(name) VALUES(project_name);
    END IF;

    SELECT id
    INTO project_id
    FROM projects
    WHERE name = project_name;
    INSERT INTO corrections(user_id, project_id, score) VALUES(user_id, project_id, score);
END //

DELIMITER ;
