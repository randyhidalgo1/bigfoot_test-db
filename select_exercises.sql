USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'pink floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name FROM albums WHERE sales < 20.0;
SELECT name FROM albums WHERE genre = 'Rock';
