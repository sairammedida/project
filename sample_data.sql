USE issue_db;

INSERT INTO worker (name, email, skill_set, current_load, is_active)
VALUES
('John Doe','john@example.com','web,db',0,1),
('Priya Kumar','priya@example.com','api,frontend',0,1),
('Rajesh Singh','rajesh@example.com','db,ops',0,1);

INSERT INTO shift (worker_id, shift_start, shift_end, day_of_week)
VALUES
(1,'09:00:00','17:00:00',1),
(2,'09:00:00','17:00:00',1),
(3,'17:00:00','23:00:00',1);
