-- Table: companies
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name VARCHAR(100)  NOT NULL
);

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname VARCHAR(100)  NOT NULL,
    group_id REFERENCES groups (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: employees
DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname VARCHAR(100) UNIQUE NOT NULL
);

-- Table: payments
DROP TABLE IF EXISTS classes;
CREATE TABLE classes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    class_name VARCHAR(100) UNIQUE NOT NULL,
    teacher_id REFERENCES teachers (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: payments
DROP TABLE IF EXISTS marks;
CREATE TABLE marks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mark INTEGER,
    date_of DATE NOT NULL,
    class_id REFERENCES classes (id),
    student_id REFERENCES students (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

