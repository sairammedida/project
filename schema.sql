CREATE DATABASE IF NOT EXISTS issue_db;
USE issue_db;

CREATE TABLE worker (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(150),
  skill_set VARCHAR(255),
  current_load INT DEFAULT 0,
  is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE shift (
  id INT AUTO_INCREMENT PRIMARY KEY,
  worker_id INT,
  shift_start TIME,
  shift_end TIME,
  day_of_week TINYINT,
  FOREIGN KEY (worker_id) REFERENCES worker(id)
);

CREATE TABLE ticket (
  id INT AUTO_INCREMENT PRIMARY KEY,
  source VARCHAR(100),
  severity VARCHAR(20),
  description TEXT,
  created_at DATETIME,
  status VARCHAR(20),
  assigned_worker_id INT,
  assigned_at DATETIME,
  resolved_at DATETIME,
  FOREIGN KEY (assigned_worker_id) REFERENCES worker(id)
);
