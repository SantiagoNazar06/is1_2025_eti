-- Elimina la tabla 'users' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS users;

-- Crea la tabla 'users' con los campos originales, adaptados para SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Clave primaria autoincremental para SQLite
    name TEXT NOT NULL UNIQUE,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    password TEXT NOT NULL           -- Contraseña hasheada (TEXT es el tipo de cadena recomendado para SQLite)
);

-- Elimina la tabla 'persons' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS persons;

-- Crea la tabla 'persons' con los campos originales, adaptados para SQLite
CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dni INTEGER NOT NULL UNIQUE -- Clave primaria autoincremental para SQLite
    firstName TEXT NOT NULL,          -- Nombre de usuario (TEXT es el tipo de cadena recomendado para SQLite), con restricción UNIQUE
    lastName TEXT NOT NULL,
    phone TEXT NOT NULL,
    email TEXT NOT NULL
);


-- Elimina la tabla 'teacher' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS teacher;

-- Crea la tabla 'teacher' con los campos originales, adaptados para SQLite
CREATE TABLE teacher (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_persona INTEGER NOT NULL,
    nroLegajo INTEGER NOT NULL UNIQUE,
    FOREIGN KEY id_persona REFERENCES person(id)
);


-- Elimina la tabla 'student' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS student;

-- Crea la tabla 'student' con los campos originales, adaptados para SQLite
CREATE TABLE student (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_person INTEGER NOT NULL,
    student_type TEXT NOT NULL,
    FOREIGN KEY id_person REFERENCES person(id)
);

CREATE TABLE subjects (
    id_subject INTEGER PRIMARY KEY AUTOINCREMENT,
    subject_name TEXT NOT NULL
);

CREATE TABLE careers (
    id_careers INTEGER PRIMARY KEY AUTOINCREMENT,
    career_name TEXT NOT NULL,
    career_duration INTEGER NOT NULL CHECK(career_duration > 0)
);

CREATE TABLE evaluations (
    id_evaluations INTEGER PRIMARY KEY AUTOINCREMENT,
    evaluation_date DATE NOT NULL,
    evaluation_name TEXT NOT NULL
);

CREATE TABLE conditions (
    id_condition INTEGER PRIMARY KEY AUTOINCREMENT,
    condition_type TEXT CHECK(condition_type IN('aprobado', 'desaprobado'))
)