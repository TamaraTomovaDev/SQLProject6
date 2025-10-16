CREATE TABLE movie_keyword(
    movie_id INTEGER NOT NULL,
    keyword_id INTEGER NOT NULL,

    PRIMARY KEY (movie_id, keyword_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (keyword_id) REFERENCES keyword(keyword_id)
);

INSERT INTO movie_keyword (movie_id, keyword_id)
VALUES
    (1, 1),   -- Teen Terror – teenagers
    (1, 3),   -- Teen Terror – summer camp
    (1, 15),  -- Teen Terror – entity

    (2, 1),   -- Teenage Nightmare – teenagers
    (2, 4),   -- Teenage Nightmare – psychological horror
    (2, 13),  -- Teenage Nightmare – dark past

    (3, 2),   -- The Haunted Manor – haunted house
    (3, 16),  -- The Haunted Manor – family secrets
    (3, 12),  -- The Haunted Manor – ghosts
    (4, 14),  -- Teen Spirit – musical drama
    (4, 13),  -- Teen Spirit – dark past

    (5, 1),   -- Midnight Teen – teenagers
    (5, 8),   -- Midnight Teen – full moon
    (5, 17),  -- Midnight Teen – survival
    (6, 2),   -- Echoes of Fear – haunted house
    (6, 16),  -- Echoes of Fear – family secrets
    (6, 18),  -- Echoes of Fear – isolation
    (7, 1),   -- Teen Shadows – teenagers
    (7, 9),   -- Teen Shadows – school secrets
    (7, 5),   -- Teen Shadows – supernatural mystery
    (8, 7),   -- Silent Screams – silence
    (8, 17),  -- Silent Screams – survival
    (9, 1),   -- Teen Eclipse – teenagers
    (9, 6),   -- Teen Eclipse – solar eclipse
    (9, 20),  -- Teen Eclipse – ancient forces
    (10, 10), -- The Final Hour – race against time
    (10, 2);  -- The Final Hour – haunted house


INSERT INTO movie (title, release_year, duration, description, vote_average, revenue)
VALUES ( 'Galactic Odyssey', 2022, 130, 'An epic space adventure across galaxies.', 7.8, 3000000.00 );

INSERT INTO movie_keyword (movie_id, keyword_id)
VALUES (11, (SELECT keyword_id FROM keyword WHERE name = 'space opera'))
