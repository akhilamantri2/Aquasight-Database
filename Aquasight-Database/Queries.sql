-- Create a new schema
CREATE SCHEMA IF NOT EXISTS Aquasight;

-- Switch to the newly created schema
USE Aquasight;

-- Create the table
CREATE TABLE IF NOT EXISTS FlowPressureData (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timeStamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    flow DOUBLE NOT NULL,
    pressure DOUBLE NOT NULL,
    CONSTRAINT chk_flow_positive CHECK (flow > 0),
    CONSTRAINT chk_pressure_positive CHECK (pressure > 0)
);

CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);


INSERT INTO Aquasight.Users (username, password) VALUES ('admin@gmail.com', 'admin123');
