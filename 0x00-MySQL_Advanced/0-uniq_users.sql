-- Description: Create a table to store unique users

CREATE IF NOT EXISTS users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
);
