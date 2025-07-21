-- UNION
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE teachers (
    id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO students (name) VALUES ('Alice'), ('Bob');
INSERT INTO teachers (name) VALUES ('Bob'), ('Carol');

select * from students;
select * from teachers;

select name from students
UNION --distinct
select name from teachers;

select name from students
UNION ALL -- include duplicates
select name from teachers;


-- targil 1
CREATE TABLE customers_usa (
    name TEXT,
    email TEXT
);

INSERT INTO customers_usa VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

CREATE TABLE customers_canada (
    name TEXT,
    email TEXT
);

INSERT INTO customers_canada VALUES
('Charlie', 'charlie@canada.com'),
('Alice', 'alice@example.com');  -- Duplicate


-- select all customers [name and email] with dup
-- select all customers [name and email] without dup distinct

-- targil 2
-- Table of players
CREATE TABLE players (
    player_id INTEGER PRIMARY KEY,
    player_name TEXT
);

-- Table of parents
CREATE TABLE parents (
    parent_id INTEGER PRIMARY KEY,
    parent_name TEXT
);

-- Insert players
INSERT INTO players (player_name) VALUES
('Alice'),
('Bob'),
('Charlie');

-- Insert parents
INSERT INTO parents (parent_name) VALUES
('David'),
('Eva'),
('Bob');  -- Intentional duplicate name

-- select all names with dup
-- select all names without dup distinct








