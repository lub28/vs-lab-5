CREATE TABLE cathedrals (
	id SERIAL PRIMARY KEY,
	name VARCHAR(1024) NOT NULL,
	chief VARCHAR(1024) NOT NULL
);
--
ALTER TABLE groups
ADD COLUMN cathedral_id INTEGER;

--
INSERT INTO cathedrals (id, name, chief, )
VALUES 
	(1, 'Кафедра информационных технологий', 'Васильева Наталья Васильевна'), 
	(2, 'Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

--
SELECT * FROM cathedrals;

--
UPDATE groups SET cathedral_id = 1 WHERE id = 1;
UPDATE groups SET cathedral_id = 1 WHERE id = 2;
UPDATE groups SET cathedral_id = 1 WHERE id = 3;
UPDATE groups SET cathedral_id = 2 WHERE id = 4;

--
SELECT * FROM groups
WHERE cathedral_id = 1;