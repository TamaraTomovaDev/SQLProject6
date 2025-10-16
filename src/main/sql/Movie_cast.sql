CREATE TABLE movie_cast(
    movie_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    role VARCHAR(255),

    PRIMARY KEY (movie_id, person_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

INSERT INTO movie_cast (movie_id, person_id, role)
VALUES
    (1, 1, 'Lead Actress'),       -- Teen Terror – Emma Stone
    (2, 2, 'Lead Actress'),       -- Teenage Nightmare – Timothée Chalamet
    (3, 3, 'Lead Actress'),       -- The Haunted Manor – Florence Pugh
    (4, 4, 'Lead Actor'),         -- Teen Spirit – Daniel Kaluuya
    (5, 5, 'Lead Actress'),       -- Midnight Teen – Zendaya
    (6, 6, 'Lead Actress'),       -- Echoes of Fear – Anya Taylor-Joy
    (7, 7, 'Lead Actor'),         -- Teen Shadows – John Boyega
    (8, 8, 'Lead Actress'),       -- Silent Screams – Millie Bobby Brown
    (9, 9, 'Lead Actor'),         -- Teen Eclipse – Finn Wolfhard
    (10, 10, 'Lead Actress');     -- The Final Hour – Saoirse Ronan

-- Emma Stone speelt ook in film 4 en 6
INSERT INTO movie_cast (movie_id, person_id, role) VALUES
    (4, 1, 'Supporting Actress'),
    (6, 1, 'Cameo');

-- Zendaya speelt ook in film 2 en 9
INSERT INTO movie_cast (movie_id, person_id, role) VALUES
    (2, 5, 'Supporting Actress'),
    (9, 5, 'Lead Actress');

-- Daniel Kaluuya speelt ook in film 1 en 10
INSERT INTO movie_cast (movie_id, person_id, role) VALUES
    (1, 4, 'Supporting Actor'),
    (10, 4, 'Lead Actor');

-- Florence Pugh speelt ook in film 5
INSERT INTO movie_cast (movie_id, person_id, role) VALUES
    (5, 3, 'Supporting Actress');

-- Timothée Chalamet speelt ook in film 8
INSERT INTO movie_cast (movie_id, person_id, role) VALUES
    (8, 2, 'Supporting Actor');

# Aantal personen tonen per gender_id
# Telt alleen personen die in een film gecast zijn
SELECT p.gender_id ,g.label,  COUNT(*) AS aantal_personen
FROM movie_cast mc
    JOIN person p ON mc.person_id = p.person_id
    JOIN gender g ON p.gender_id = g.gender_id
GROUP BY p.gender_id;
