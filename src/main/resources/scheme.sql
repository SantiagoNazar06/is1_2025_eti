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
    id INTEGER PRIMARY KEY,
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
    id_persona INTEGER PRIMARY KEY,
    nroLegajo INTEGER NOT NULL UNIQUE,
    FOREIGN KEY id_persona REFERENCES person(id)
);


-- Elimina la tabla 'student' si ya existe para asegurar un inicio limpio
DROP TABLE IF EXISTS student;

-- Crea la tabla 'student' con los campos originales, adaptados para SQLite
CREATE TABLE student (
    id INTEGER PRIMARY KEY,
    typeStudent ,
    CONSTRAINT ch_pk_student FOREIGN KEY id REFERENCES person(id)
);