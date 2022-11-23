DROP DATABASE IF EXISTS juegoDeTronosBD;
CREATE DATABASE IF NOT EXISTS juegoDeTronosBD;
USE juegoDeTronosBD;

DROP TABLE IF EXISTS personaje;
CREATE TABLE IF NOT EXISTS personaje (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    sobrenombre VARCHAR(30),
    sexo CHAR NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fechaMuerte DATE
);

DROP TABLE IF EXISTS casa;
CREATE TABLE IF NOT EXISTS casa (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    emblema VARCHAR(20) NOT NULL,
    lema VARCHAR(30) NOT NULL,
    territorio VARCHAR(50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS arma;
CREATE TABLE IF NOT EXISTS arma (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    alcance DECIMAL(4,2) NOT NULL,
    daño INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS dragon;
CREATE TABLE IF NOT EXISTS dragon (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    color VARCHAR(15) NOT NULL,
    tamaño DECIMAL(4,2) NOT NULL,
    longitud DECIMAL(4,2) NOT NULL
);

DROP TABLE IF EXISTS titulo;
CREATE TABLE IF NOT EXISTS titulo (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS capitulo;
CREATE TABLE IF NOT EXISTS capitulo (
    codigo INT PRIMARY KEY,
    numero INT NOT NULL,
    nombre VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS temporada;
CREATE TABLE IF NOT EXISTS temporada (
    codigo INT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    titulo VARCHAR(30) NOT NULL UNIQUE
);