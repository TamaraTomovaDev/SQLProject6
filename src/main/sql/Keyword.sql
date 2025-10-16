CREATE TABLE keyword(
    keyword_id INTEGER UNIQUE AUTO_INCREMENT,
    name varchar(255) NOT NULL UNIQUE,

    PRIMARY KEY (keyword_id)
);

INSERT INTO keyword (name)
VALUES
    ('teenagers'),
    ('haunted house'),
    ('summer camp'),
    ('psychological horror'),
    ('supernatural mystery'),
    ('solar eclipse'),
    ('silence'),
    ('full moon'),
    ('school secrets'),
    ('race against time'),
    ('revenge'),
    ('ghosts'),
    ('dark past'),
    ('musical drama'),
    ('entity'),
    ('family secrets'),
    ('survival'),
    ('isolation'),
    ('rituals'),
    ('ancient forces');

INSERT INTO keyword(name)
VALUES ('space opera');