CREATE TABLE award(
    award_id INTEGER AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    year INTEGER,

    PRIMARY KEY (award_id)
);

CREATE TABLE movie_award(
    movie_id INTEGER NOT NULL,
    award_id INTEGER NOT NULL,

    PRIMARY KEY (movie_id, award_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (award_id) REFERENCES award(award_id)
);

INSERT INTO award (name, year)
VALUES
    ('Best Horror Film', 2022),
    ('Best Director', 2021),
    ('Audience Choice Award', 2023),
    ('Best Soundtrack', 2020),
    ('Best Thriller', 2023);

INSERT INTO movie_award (movie_id, award_id)
VALUES
    (1, 1),  -- Teen Terror won Best Horror Film
    (2, 2),  -- Teenage Nightmare won Best Director
    (5, 3),  -- Midnight Teen won Audience Choice Award
    (4, 4),  -- Teen Spirit won Best Soundtrack
    (10, 5); -- The Final Hour won Best Thriller
