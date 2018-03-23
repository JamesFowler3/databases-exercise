
CREATE DATABASE quiz;

USE quiz;

SHOW TABLES;

CREATE TABLE Admin (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE Quiz(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(60) NOT NULL,
created_by INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(created_by) REFERENCES Admin(id)
);

CREATE TABLE Q_Q (
quiz_id INT UNSIGNED NOT NULL,
question_id INT UNSIGNED NOT NULL,
FOREIGN KEY(quiz_id) REFERENCES Quiz(id),
FOREIGN KEY(question_id) REFERENCES Questions(id)
);

CREATE TABLE Questions(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
question TEXT,
PRIMARY KEY(id)
);

CREATE TABLE Q_A(
question_id INT UNSIGNED NOT NULL,
answer VARCHAR(1) NOT NULL,
FOREIGN KEY(question_id) REFERENCES Questions(id)
);

CREATE TABLE Student(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
first_name VARCHAR(40),
last_name VARCHAR(40),
PRIMARY KEY(id)
);

CREATE TABLE Student_quiz(
student_id INT UNSIGNED NOT NULL,
quiz_id INT UNSIGNED NOT NULL,
question_id INT UNSIGNED NOT NULL,
student_answer VARCHAR(1) NOT NULL,
FOREIGN KEY(student_id) REFERENCES Student(id),
FOREIGN KEY(quiz_id) REFERENCES Quiz(id),
FOREIGN KEY(question_id) REFERENCES Questions(id)
);

INSERT INTO Admin (first_name, last_name) VALUES
  ('Albert', 'Einstein'),
  ('Steve', 'jobs'),
  ('Clark', 'kent');

INSERT INTO quiz (name, created_by) VALUES
  ('Math Test', '1'),
  ('apple test',2),
  ('superhero test',3),
  ('programming test', 1);

INSERT INTO questions (question) VALUES
  ('What is 2 * 2?'),
  ('What is 1 + 5?'),
  ('How much is 4% of $100?'),
  ('When was the first iphone released?'),
  ('Who created apple?'),
  ('Who is the fastest superhero?'),
  ('What is Wonder Womans name?'),
  ('What programming language have we learned that is a backend one?'),
  ('Why should we create clean code?');

INSERT INTO q_q (quiz_id, question_id) VALUES
  (1,1),(1,2),(1,3),
  (2,4),(2,5),
  (3,6),(3,7),
  (4,8),(4,9);

INSERT INTO q_a (question_id,answer) VALUES
  (1,'a'),(2,'c'),(3,'b'),(4,'d'),(5,'a'),(6,'c'),(7,'d'),(8,'b'),(9,'c');

INSERT INTO student (first_name, last_name) VALUES
  ('jimmy', 'neutron'), ('johhny', 'bravo'),
  ('scooby', 'doo'), ('scrappy', 'doo');

TRUNCATE student_quiz;

INSERT INTO student_quiz (student_id, quiz_id, question_id, student_answer) VALUES
  (1,1,1,'a'), (1,1,2,'a'), (1,1,3,'c'),
  (1,2,4,'a'), (1,2,5,'a'),
  (3,3,6,'d'), (3,3,7,'d'),
  (4,4,8,'a'), (4,4,9,'a');

SELECT * FROM Admin;

SELECT AVG(CASE WHEN student_answer = answer THEN 1 else 0 END) AS Correct_answer
FROM Student AS s
JOIN Student_quiz AS sq ON s.id = sq.student_id
JOIN q_a AS qa ON sq.question_id = qa.question_id
WHERE s.id = 1
AND sq.quiz_id = 1;

SELECT * FROM Student_quiz
WHERE quiz_id = 2;