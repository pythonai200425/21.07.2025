
-- triggers
-- Create table for student grades
CREATE TABLE grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name TEXT NOT NULL,  -- not normalized
    grade INT NOT NULL
);

-- Create table to hold statistics
CREATE TABLE grade_stats (
    id INTEGER PRIMARY KEY CHECK (id = 1),  -- always 1 row
    grade_count INTEGER DEFAULT 0,
    grade_avg REAL DEFAULT 0 ,
    grade_max REAL DEFAULT 0
);

INSERT INTO grade_stats (id) VALUES (1);

INSERT INTO grades (student_name, grade) VALUES ('Alice', 90);
INSERT INTO grades (student_name, grade) VALUES ('Alice', 99);
INSERT INTO grades (student_name, grade) VALUES ('Alice', 95);

select * from grades;

delete from grades where id = 3;
delete from grades where id = 2;

update grades
set grade = 99
where id = 1;

SELECT COUNT(*) FROM grades;


select * from grade_stats gs ;

    UPDATE grade_stats
    SET
        grade_count = (SELECT COUNT(*) FROM grades)
    WHERE id = 1;

    UPDATE grade_stats
    SET
        grade_avg = (SELECT AVG(grade) FROM grades)
    WHERE id = 1;

    UPDATE grade_stats
    SET
        grade_max = (SELECT MAX(grade) FROM grades)
    WHERE id = 1;

CREATE TRIGGER update_stats_after_insert -- name
AFTER INSERT ON grades -- when to fire?
BEGIN
	-- what to do?
    UPDATE grade_stats
    SET
        grade_count = (SELECT COUNT(*) FROM grades),
        grade_avg = (SELECT AVG(grade) FROM grades),
        grade_max = (SELECT MAX(grade) FROM grades)
    WHERE id = 1;
END;

CREATE TRIGGER update_stats_after_delete -- name
AFTER DELETE ON grades -- when to fire?
BEGIN
	-- what to do?
    UPDATE grade_stats
    SET
        grade_count = (SELECT COUNT(*) FROM grades),
        grade_avg = (SELECT AVG(grade) FROM grades),
        grade_max = (SELECT MAX(grade) FROM grades)
    WHERE id = 1;
END;

CREATE TRIGGER update_stats_after_update -- name
AFTER UPDATE ON grades -- when to fire?
BEGIN
	-- what to do?
    UPDATE grade_stats
    SET
        grade_count = (SELECT COUNT(*) FROM grades),
        grade_avg = (SELECT AVG(grade) FROM grades),
        grade_max = (SELECT MAX(grade) FROM grades)
    WHERE id = 1;
END;

-- DROP TRIGGER if EXISTS update_stats_after_update;
