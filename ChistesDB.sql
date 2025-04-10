CREATE DATABASE ChistesDB;
USE ChistesDB;

CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contrasena VARCHAR(100) NOT NULL
);

CREATE TABLE Tematicas (
    id_tematica INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Chistes (
    id_chiste INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    cuerpo TEXT NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Chistes_Tematicas (
    id_chiste INT,
    id_tematica INT,
    PRIMARY KEY (id_chiste, id_tematica),
    FOREIGN KEY (id_chiste) REFERENCES Chistes(id_chiste),
    FOREIGN KEY (id_tematica) REFERENCES Tematicas(id_tematica)
);
