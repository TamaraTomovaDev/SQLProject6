CREATE TABLE gender(
    gender_id INTEGER,
    label VARCHAR(10),

    PRIMARY KEY (gender_id)
);

INSERT INTO gender(gender_id, label)
VALUES (1, 'female'),
       (2, 'male');