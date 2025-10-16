CREATE TABLE movie(
    movie_id INTEGER AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    release_year INTEGER(4) NOT NULL,
    duration INTEGER,
    description TEXT,
    vote_average DECIMAL(3,1),
    revenue DECIMAL(10,2),

    PRIMARY KEY (movie_id)
);

drop table movie;
drop table movie_cast;
drop table movie_language;
drop table movie_keyword;
drop table genre;
drop table movie_genre;


INSERT INTO movie (title, release_year, duration, description, vote_average, revenue)
VALUES
    ('Teen Terror', 2022, 125, 'A group of teenagers face a terrifying entity in their summer camp.', 6.8, 1500000.00),
    ('Teenage Nightmare', 2021, 130, 'A psychological horror about a teen haunted by her past.', 7.2, 1800000.00),
    ('The Haunted Manor', 2019, 115, 'A family moves into a house with a dark history.', 6.5, 1200000.00),
    ('Teen Spirit', 2020, 122, 'A musical drama with a dark twist.', 7.0, 2000000.00),
    ('Midnight Teen', 2023, 140, 'A horror thriller where teens are hunted during a full moon.', 7.5, 2500000.00),
    ('Echoes of Fear', 2018, 110, 'A woman discovers terrifying secrets in her inherited house.', 6.3, 950000.00),
    ('Teen Shadows', 2024, 128, 'A group of teens uncover a supernatural mystery in their school.', 7.1, 1750000.00),
    ('Silent Screams', 2020, 100, 'A horror film where silence is the only way to survive.', 6.9, 1300000.00),
    ('Teen Eclipse', 2025, 135, 'During a solar eclipse, teens face ancient forces.', 7.4, 2200000.00),
    ('The Final Hour', 2023, 119, 'A suspenseful thriller about a race against time.', 7.0, 1600000.00);

# Alle films tonen die langer zijn dan 2 uur
SELECT title, duration, description
FROM movie
WHERE duration > 120;

# Alle films tonen die het woord "teen" in de titel hebben
SELECT title, release_year, description
FROM movie
WHERE title LIKE '%teen%';

# Alle unieke waarden tonen van de kolom vote_average
SELECT DISTINCT vote_average
FROM movie;

# Een lijst maken van alle titels met hun revenue in Britse Pond en in Euro
SELECT title, revenue AS revenueEuro, revenue * 1.11 AS revenueBritsePond
FROM movie;

# Alle unieke films tonen die "space opera" als keyword hebben, maar geen "star" in de titel
SELECT k.name, m.title, m.description
FROM movie m
    JOIN movie_keyword mk ON m.movie_id = mk.movie_id
    JOIN keyword k ON mk.keyword_id = k.keyword_id
WHERE k.name = 'space opera'
    AND m.title NOT LIKE '%star%';

# Alle films tonen die het genre "Horror" hebben
SELECT m.title, g.name
FROM movie m
    JOIN movie_genre mg ON m.movie_id = mg.movie_id
    JOIN genre g ON mg.genre_id = g.genre_id
WHERE g.name = 'Horror';

# Alle films tonen die langer zijn dan de gemiddelde lengte van alle films.
# Alfabetisch sorteren
SELECT title, duration
FROM movie
WHERE duration > (
    SELECT AVG(duration)
    FROM movie
    )
ORDER BY title ASC;

# Alleen langspeelfilms tonen (minstens 90 minuten)
SELECT title, duration
FROM movie
WHERE duration >=90
    AND duration > (
    SELECT AVG(duration)
    FROM movie
    WHERE duration >=90
    )
ORDER BY title ASC;

# Alle films tonen met hun awards
SELECT m.title, a.name AS award, a.year
FROM movie m
    JOIN movie_award ma ON m.movie_id = ma.movie_id
    JOIN award a ON ma.award_id = a.award_id
ORDER BY a.year DESC;

# Alle films tonen met hun regisseur
SELECT m.title, p.name AS regisseur
FROM movie m
    JOIN regisseur md ON m.movie_id = md.movie_id
    JOIN person p ON md.person_id = p.person_id
ORDER BY m.title;

# 5 films tonen met hoogste revenue
SELECT *
FROM movie
ORDER BY revenue DESC
LIMIT 5;