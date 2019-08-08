DROP TABLE movies;

CREATE TABLE movies(
	id SERIAL PRIMARY KEY,
	title VARCHAR(256),
	words_in_title VARCHAR(256),
	imdb_rating FLOAT,
	rating_count INT
);