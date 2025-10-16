CREATE TABLE person(
    person_id INTEGER AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,

    PRIMARY KEY (person_id)
);

INSERT INTO person (name)
VALUES
    ('Emma Stone'),
    ('Timothée Chalamet'),
    ('Florence Pugh'),
    ('Daniel Kaluuya'),
    ('Zendaya'),
    ('Anya Taylor-Joy'),
    ('John Boyega'),
    ('Millie Bobby Brown'),
    ('Finn Wolfhard'),
    ('Saoirse Ronan'),
    ('Natalie Portman'),
    ('Michael B. Jordan'),
    ('Jessica Chastain'),
    ('Tom Holland'),
    ('Lupita Nyong\'o'),
    ('Oscar Isaac'),
    ('Margot Robbie'),
    ('Robert Pattinson'),
    ('Jenna Ortega'),
    ('Lakeith Stanfield');

# Gender_id kolom toevoegen aan person
ALTER TABLE person ADD COLUMN gender_id INT;

# Gender_id toevoegen
UPDATE person SET gender_id = 1 WHERE name IN ('Emma Stone', 'Florence Pugh', 'Zendaya', 'Anya Taylor-Joy', 'Millie Bobby Brown', 'Saoirse Ronan');
UPDATE person SET gender_id = 2 WHERE name IN ('Timothée Chalamet', 'Daniel Kaluuya', 'John Boyega', 'Finn Wolfhard');

# De top 5 personen tonen die in de meeste films hebben meegespeeld
SELECT p.name, COUNT(mc.movie_id) AS aantal_movies
FROM person p
    JOIN movie_cast mc ON p.person_id = mc.person_id
GROUP BY p.name
ORDER BY aantal_movies DESC
LIMIT 5;