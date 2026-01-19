USE intern_training_db;

-- Students with age greater than 20
SELECT * FROM students
WHERE age > 20;

ALTER TABLE students
ADD COLUMN age INT;

UPDATE students SET age = 20 WHERE student_id = 1;
UPDATE students SET age = 22 WHERE student_id = 2;
UPDATE students SET age = 24 WHERE student_id = 3;

SELECT * FROM students
WHERE age > 20;


-- Age greater than 20 AND name starts with 'A'
SELECT * FROM students
WHERE age > 20 AND name LIKE 'A%';


-- Students named Rahul OR Sneha
SELECT * FROM students
WHERE name = 'Rahul' OR name = 'Sneha';

-- Names containing 'am'
SELECT * FROM students
WHERE name LIKE '%am%';


-- Emails ending with gmail.com
SELECT * FROM students
WHERE email LIKE '%@gmail.com';

-- Specific ages
SELECT * FROM students
WHERE age IN (20, 22, 25);

-- Age between 18 and 22
SELECT * FROM students
WHERE age BETWEEN 18 AND 22;


-- Students whose DOB is NULL
SELECT * FROM students
WHERE dob IS NULL;

SELECT name AS student_name, email AS student_email
FROM students;




