
-- ON DELETE CASCADE
PRAGMA foreign_keys = ON;

CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE
);

INSERT INTO authors (name) VALUES ('Tolkien'), ('Orwell');
INSERT INTO books (title, author_id) VALUES ('The Hobbit', 1), ('1984', 2);

select b.*, a.name from books b
join authors a on b.author_id = a.author_id;

select * from books;

DELETE from authors
where author_id = 1;

-------------------------------------------------------------------
-- targil

CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'), (2, 'Finance'), (3, 'Engineering'), (4, 'Marketing'), (5, 'Sales'),
(6, 'Legal'), (7, 'Operations'), (8, 'IT Support'), (9, 'R&D'), (10, 'Customer Service'),
(11, 'Design'), (12, 'QA'), (13, 'Admin'), (14, 'Security'), (15, 'Training'),
(16, 'Product'), (17, 'Logistics'), (18, 'Procurement'), (19, 'Compliance'),
(20, 'Business Dev'), (21, 'Strategy'), (22, 'Data Science'), (23, 'Events');

INSERT INTO employees (full_name, department_id) VALUES
-- HR (Friends)
('Rachel Green', 1), ('Monica Geller', 1), ('Chandler Bing', 1), ('Ross Geller', 1),
-- Finance (The Office)
('Michael Scott', 2), ('Angela Martin', 2), ('Oscar Martinez', 2), ('Kevin Malone', 2),
-- Engineering (Breaking Bad)
('Walter White', 3), ('Jesse Pinkman', 3), ('Saul Goodman', 3), ('Mike Ehrmantraut', 3),
-- Marketing (Mad Men)
('Don Draper', 4), ('Peggy Olson', 4), ('Joan Holloway', 4), ('Roger Sterling', 4),
-- Sales (Suits)
('Harvey Specter', 5), ('Mike Ross', 5), ('Donna Paulsen', 5), ('Louis Litt', 5),
-- Legal (How to Get Away with Murder)
('Annalise Keating', 6), ('Michaela Pratt', 6), ('Connor Walsh', 6), ('Bonnie Winterbottom', 6),
-- Operations (Lost)
('Jack Shephard', 7), ('Kate Austen', 7), ('Sawyer Ford', 7), ('John Locke', 7),
-- IT Support (Silicon Valley)
('Richard Hendricks', 8), ('Bertram Gilfoyle', 8), ('Dinesh Chugtai', 8), ('Jared Dunn', 8),
-- R&D (Stranger Things)
('Eleven Hopper', 9), ('Mike Wheeler', 9), ('Dustin Henderson', 9), ('Lucas Sinclair', 9),
-- Customer Service (Brooklyn Nine-Nine)
('Jake Peralta', 10), ('Amy Santiago', 10), ('Terry Jeffords', 10), ('Rosa Diaz', 10),
-- Design (Emily in Paris)
('Emily Cooper', 11), ('Sylvie Grateau', 11), ('Julien', 11), ('Luc', 11);

-- delete department 'Design' so it will delete all the employees
