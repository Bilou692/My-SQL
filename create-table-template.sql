-- database: ./edusign.db

CREATE TABLE USERS (
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    email TEXT NOT NULL
);

INSERT INTO users (firstname, lastname, email) VALUES ('Ada', 'Lovelace', 'ada@test.fr');
INSERT INTO users (firstname, lastname, email) VALUES ('Beatrice', 'Worsley', 'bea@test.fr');
INSERT INTO users (firstname, lastname, email) VALUES ('Bella', 'Guerin', 'bella@test.fr');
INSERT INTO users (firstname, lastname, email) VALUES ('Barbara', 'Chase', 'barbara@test.fr');


CREATE TABLE edusign (
   id INTEGER PRIMARY KEY AUTO_INCREMENT,
   created_at DATETIME NOT NULL
 );

 ALTER TABLE edusign
ADD user_id INTEGER NOT NULL

insert INTO edusign(user_id, created_at) values (1, '2024-05-30 09:30:00');
insert INTO edusign(user_id, created_at) values (3, '2024-05-30 09:30:00');
insert INTO edusign(user_id, created_at) values (1, '2024-09-01 09:30:00');
insert INTO edusign(user_id, created_at) values (2, '2024-09-01 09:30:00');
insert INTO edusign(user_id, created_at) values (3, '2024-09-01 09:30:00');
insert INTO edusign(user_id, created_at) values (4, '2024-09-01 09:30:00');

SELECT *
FROM edusign
ORDER BY created_at DESC, user_id ASC

SELECT * 
FROM edusign
WHERE created_at = '2024-05-30 09:30:00';

SELECT created_at, COUNT (*) AS total
FROM edusign
GROUP BY created_at
ORDER BY total;

SELECT COUNT (*) AS volume
FROM edusign
JOIN users ON edusign.user_id = users.user_id
WHERE users.firstname = 'Bella';