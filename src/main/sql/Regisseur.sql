CREATE TABLE regisseur(
    movie_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,

    PRIMARY KEY (movie_id, person_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

INSERT INTO regisseur (movie_id, person_id)
VALUES
    (1, 1),  -- Emma Stone regisseerde Teen Terror
    (2, 2),  -- Timothée Chalamet regisseerde Teenage Nightmare
    (3, 3),  -- Florence Pugh regisseerde The Haunted Manor
    (4, 4),  -- Daniel Kaluuya regisseerde Teen Spirit
    (5, 5),  -- Zendaya regisseerde Midnight Teen
    (6, 6),  -- Anya Taylor-Joy regisseerde Echoes of Fear
    (7, 7),  -- John Boyega regisseerde Teen Shadows
    (8, 8),  -- Millie Bobby Brown regisseerde Silent Screams
    (9, 9),  -- Finn Wolfhard regisseerde Teen Eclipse
    (10, 10); -- Saoirse Ronan regisseerde The Final Hour

# aantal films tonen per regisseur
SELECT p.name, COUNT(*) AS  aantal_films
FROM regisseur r
    JOIN person p ON r.person_id = p.person_id
GROUP BY p.name
ORDER BY aantal_films DESC;