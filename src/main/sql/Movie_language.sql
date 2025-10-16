CREATE TABLE movie_language(
    movie_id INTEGER NOT NULL,
    language VARCHAR(50) NOT NULL,

    PRIMARY KEY (movie_id, language),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

INSERT INTO movie_language (movie_id, language)
VALUES
    (1, 'English'),  -- Teen Terror
    (2, 'English'),  -- Teenage Nightmare
    (3, 'English'),  -- The Haunted Manor
    (4, 'English'),  -- Teen Spirit
    (5, 'English'),  -- Midnight Teen
    (6, 'English'),  -- Echoes of Fear
    (7, 'English'),  -- Teen Shadows
    (8, 'English'),  -- Silent Screams
    (9, 'English'),  -- Teen Eclipse
    (10, 'English'); -- The Final Hou

INSERT INTO movie_language (movie_id, language)
VALUES
    (1, 'French'),
    (1, 'Spanish'),
    (1, 'German'),
    (3, 'Spanish'),
    (5, 'Spanish'),
    (8, 'French'),
    (5, 'French'),
    (2, 'German'),
    (2, 'Spanish'),
    (3, 'French');

# Alle films tonen in meer dan 2 talen
SELECT m.title
FROM movie_language ml
    JOIN movie m ON ml.movie_id = m.movie_id
GROUP BY m.movie_id, m.title
HAVING COUNT(ml.language) > 2;