CREATE DATABASE IF NOT EXISTS lamp_db;
USE lamp_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insert a test user
INSERT INTO users (username, password) VALUES ('admin', 'password');
