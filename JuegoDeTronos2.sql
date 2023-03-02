DROP DATABASE IF EXISTS juegoDeTronosBD;
CREATE DATABASE juegoDeTronosBD;
USE juegoDeTronosBD;

DROP TABLE IF EXISTS comunidad;
CREATE TABLE comunidad (
    codigo INT PRIMARY KEY AUTO_INCREMENT
);

DROP TABLE IF EXISTS provincia;
CREATE TABLE provincia (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    codigo_comunidad INT NOT NULL,
    FOREIGN KEY (codigo_comunidad) REFERENCES comunidad(codigo)
);

DROP TABLE IF EXISTS municipio;
CREATE TABLE municipio (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    num_mujeres INT,
    num_hombres INT,
    latitud DOUBLE, 
    longitud DOUBLE,
    codigo_provincia INT NOT NULL,
    codigo_comunidad INT NOT NULL,
    FOREIGN KEY (codigo_provincia) REFERENCES provincia(codigo),
    FOREIGN KEY (codigo_comunidad) REFERENCES comunidad(codigo)
);

DROP TABLE IF EXISTS casa;
CREATE TABLE casa (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    emblema VARCHAR(50) NOT NULL,
    lema VARCHAR(30) NOT NULL,
    territorio VARCHAR(50) NOT NULL UNIQUE,
    ano_creacion INT NOT NULL
);

DROP TABLE IF EXISTS personaje;
CREATE TABLE personaje (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    sobrenombre VARCHAR(30),
    sexo CHAR NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fechaMuerte DATE,
    codigo_casa INT,
    FOREIGN KEY (codigo_casa) REFERENCES casa(codigo)
);

DROP TABLE IF EXISTS titulo;
CREATE TABLE titulo (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    codigo_personaje INT,
    FOREIGN KEY (codigo_personaje) REFERENCES personaje(codigo)
);

DROP TABLE IF EXISTS dragon;
CREATE TABLE dragon (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    color VARCHAR(15) NOT NULL,
    tamaño DECIMAL(5,2) NOT NULL,
    longitud DECIMAL(5,2) NOT NULL,
    codigo_casa INT NOT NULL,
    FOREIGN KEY (codigo_casa) REFERENCES casa(codigo)
);

DROP TABLE IF EXISTS arma;
CREATE TABLE arma (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    alcance DECIMAL(4,2) NOT NULL,
    daño INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS temporada;
CREATE TABLE temporada (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL UNIQUE,
    descripcion VARCHAR(100) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS capitulo;
CREATE TABLE capitulo (
    codigo INT AUTO_INCREMENT,
    codigo_temporada INT,
    nombre VARCHAR(100) NOT NULL,
    FOREIGN KEY (codigo_temporada) REFERENCES temporada(codigo),
    PRIMARY KEY (codigo, codigo_temporada)
);

DROP TABLE IF EXISTS poderes;
CREATE TABLE poderes (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS lugaresemblematicos;
CREATE TABLE lugaresemblematicos (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(200),
    codigo_municipio INT NOT NULL,
    codigo_casa INT NOT NULL,
    FOREIGN KEY (codigo_municipio) REFERENCES municipio(codigo),
    FOREIGN KEY (codigo_casa) REFERENCES casa(codigo)
);

DROP TABLE IF EXISTS sucesos;
CREATE TABLE sucesos (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    codigo_lugaresemblematicos INT NOT NULL,
    FOREIGN KEY (codigo_lugaresemblematicos) REFERENCES lugaresemblematicos(codigo)
);

DROP TABLE IF EXISTS personajetienearma;
CREATE TABLE personajetienearma (
    codigo_arma INT,
    codigo_personaje INT,
    PRIMARY KEY (codigo_arma, codigo_personaje),
    FOREIGN KEY (codigo_arma) REFERENCES arma(codigo),
    FOREIGN KEY (codigo_personaje) REFERENCES personaje(codigo)
);

DROP TABLE IF EXISTS personajetienepoderes;
CREATE TABLE personajetienepoderes (
    codigo_poderes INT,
    codigo_personaje INT,
    PRIMARY KEY (codigo_poderes, codigo_personaje),
    FOREIGN KEY (codigo_poderes) REFERENCES poderes(codigo),
    FOREIGN KEY (codigo_personaje) REFERENCES personaje(codigo)
);

DROP TABLE IF EXISTS participan;
CREATE TABLE participan (
    codigo_sucesos INT,
    codigo_personaje INT,
    PRIMARY KEY (codigo_sucesos, codigo_personaje),
    FOREIGN KEY (codigo_sucesos) REFERENCES sucesos(codigo),
    FOREIGN KEY (codigo_personaje) REFERENCES personaje(codigo)
);

DROP TABLE IF EXISTS aparece;
CREATE TABLE aparece (
    num_capitulo INT,
    codigo_temporada INT,
    codigo_personaje INT,
    PRIMARY KEY (num_capitulo, codigo_temporada, codigo_personaje),
    FOREIGN KEY (num_capitulo, codigo_temporada) REFERENCES capitulo(codigo, codigo_temporada),
    FOREIGN KEY (codigo_personaje) REFERENCES personaje(codigo)
);