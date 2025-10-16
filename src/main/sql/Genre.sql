CREATE TABLE genre(
    genre_id INTEGER AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,

    PRIMARY KEY (genre_id)
);

INSERT INTO genre (name)
VALUES
    ('Horror'),
    ('Sci-Fi'),
    ('Drama'),
    ('Comedy'),
    ('Action'),
    ('Romance'),
    ('Fantasy'),
    ('Documentary'),
    ('Thriller'),
    ('Adventure');

# Alle genres tonen die in geen enkele movie gebruikt worden
SELECT g.name, g.genre_id
FROM genre g
    LEFT JOIN movie_genre mg ON g.genre_id = mg.genre_id
WHERE mg.genre_id is NULL;
