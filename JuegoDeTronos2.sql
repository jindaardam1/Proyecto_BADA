DROP DATABASE IF EXISTS juegoDeTronosBD;
CREATE DATABASE juegoDeTronosBD;
USE juegoDeTronosBD;

DROP TABLE IF EXISTS personaje;
CREATE TABLE personaje (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    sobrenombre VARCHAR(30),
    sexo CHAR NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fechaMuerte DATE
);

DROP TABLE IF EXISTS casa;
CREATE TABLE casa (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    emblema VARCHAR(50) NOT NULL,
    lema VARCHAR(30) NOT NULL,
    territorio VARCHAR(50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS arma;
CREATE TABLE arma (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    alcance DECIMAL(4,2) NOT NULL,
    daño INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS dragon;
CREATE TABLE dragon (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    color VARCHAR(15) NOT NULL,
    tamaño DECIMAL(5,2) NOT NULL,
    longitud DECIMAL(5,2) NOT NULL
);

DROP TABLE IF EXISTS titulo;
CREATE TABLE titulo (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS capitulo;
CREATE TABLE capitulo (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    nombre VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS temporada;
CREATE TABLE temporada (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL UNIQUE,
    descripcion VARCHAR(100) NOT NULL UNIQUE
);

create table personajeTieneArma (
Codigo_Arma int,
Codigo_Personaje int,
primary key (Codigo_Arma,Codigo_Personaje),
foreign key (Codigo_Arma) references arma(Codigo),
foreign key (Codigo_Personaje) references personaje(Codigo)
);

create table personajeTienePoderes (
Codigo_Poderes int,
Codigo_Personaje int,
primary key (Codigo_Poderes,Codigo_Personaje),
foreign key (Codigo_Poderes) references poderes(Codigo),
foreign key (Codigo_Personaje) references personaje(Codigo)
);

create table participan (
Código_Sucesos INT ,
Código_Personaje INT ,
primary key (Código_Sucesos,Código_Personaje),
foreign key (Código_Sucesos) references sucesos(Codigo),
foreign key (Codigo_Personaje) references personaje(Codigo)
);

create table aparece (
num_Capitulo INT,
Codigo_Temporada INT,
Código_Personaje INT,
primary key (num_Capitulo,Codigo_Temporada,Código_Personaje),
foreign key (num_Capitulo, Codigo_Temporada) references capitulo(Numero, codigo_Temporada),
foreign key (Código_Personaje) references personaje(Codigo)
);

