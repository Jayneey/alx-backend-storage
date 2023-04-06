-- Create a table with unique users.
IF OBJECT_ID('users', 'U') IS NOT NULL
    DROP TABLE users;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
