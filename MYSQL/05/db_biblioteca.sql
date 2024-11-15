CREATE DATABASE db_biblioteca;
USE db_biblioteca;

CREATE TABLE autores (
    idAutor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

CREATE TABLE libros (
    idLibro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fechaPublicacion DATE,
    precio DECIMAL(8,2) NOT NULL
    idAutor INT,
    FOREIGN KEY (idAutor) REFERENCES autores(idAutor)
);
