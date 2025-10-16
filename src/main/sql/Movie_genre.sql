CREATE TABLE movie_genre(
    movie_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,

    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

INSERT INTO movie_genre (movie_id, genre_id)
VALUES
    (1, 1),  -- Teen Terror – Horror
    (2, 1),  -- Teenage Nightmare – Horror
    (3, 9),  -- The Haunted Manor – Thriller
    (4, 5),  -- Teen Spirit – Action
    (4, 3),  -- Teen Spirit – Drama
    (5, 1),  -- Midnight Teen – Horror
    (5, 9),  -- Midnight Teen – Thriller
    (6, 1),  -- Echoes of Fear – Horror
    (7, 1),  -- Teen Shadows – Horror
    (7, 7),  -- Teen Shadows – Fantasy
    (8, 1),  -- Silent Screams – Horror
    (9, 1),  -- Teen Eclipse – Horror
    (9, 7),  -- Teen Eclipse – Fantasy
    (10, 9); -- The Final Hour – Thriller