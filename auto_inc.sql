--1. AUTOINCREMENT
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

INSERT INTO users (name) VALUES ('Alice');  --1
INSERT INTO users (name) VALUES ('Bob');  --2
INSERT INTO users (name) VALUES ('Charlie'); --3

CREATE TABLE users2 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);


INSERT INTO users2 VALUES (29, 'Alice');  --1
INSERT INTO users2(name) VALUES ('Alice2');  --1

DELETE FROM users2
WHERE id = 30;
INSERT INTO users2(name) VALUES ('Alice30or31');  --1
-- #45555
-- #45555

delete from users2 where id > 0;
DELETE FROM sqlite_sequence WHERE name = 'users2';
INSERT INTO users2(name) VALUES ('Alice30or31');  --1
