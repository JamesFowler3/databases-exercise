USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
id INT unsigned NOT NULL AUTO_INCREMENT,
artist VARCHAR(130) ,
name VARCHAR(200) ,
release_date INT ,
sales DECIMAL (10, 2),
genre VARCHAR(100),
PRIMARY KEY(id)
);