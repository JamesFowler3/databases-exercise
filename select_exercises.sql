USE codeup_test_db;
SELECT name FROM albums WHERE artists = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums WHERE release_date BETWEEN 1990 and 1999;
SELECT * FROM albums WHERE genre = 'Rock';
