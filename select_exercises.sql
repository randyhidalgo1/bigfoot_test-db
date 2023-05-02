USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'pink floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name FROM albums WHERE sales < 20.0;
SELECT name FROM albums WHERE genre = 'Rock';


# select_exercises.sql write queries to find
# the following information. Before each item,
# output a caption explaining the results:
#
# The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock". Why do these query
# results not include albums with a genre of "Hard rock" or
# "Progressive rock"?