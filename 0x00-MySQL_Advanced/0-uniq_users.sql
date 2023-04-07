<<<<<<< HEAD
-- Create a table with unique users.
CREATE TABLE IF NOT EXISTS users (
=======
-- Creates a table with unique users.
DROP TABLE IF EXISTS users;
CREATE TABLE users (
>>>>>>> ee1077475039b2940ed9fc2fc636b59ea54b88ae
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
