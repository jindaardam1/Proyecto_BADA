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
    emblema VARCHAR(50) NOT NULL,
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
    tamaño DECIMAL(5,2) NOT NULL,
    longitud DECIMAL(5,2) NOT NULL
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
    nombre VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS temporada;
CREATE TABLE IF NOT EXISTS temporada (
    codigo INT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    descripcion VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('1', 'Malyxando', 'Negro', '68.97', '131.77');
INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('2', 'Gosnug', 'Blanco', '52.04', '149.81');
INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('3', 'Naxnir', 'Rojo', '68.65', '149.29');
INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('4', 'Droszien', 'Azul', '50.29', '149.8');
INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('5', 'Tarauin', 'Rojo', '54.49', '140.45');
INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('6', 'Sahron', 'Amarillo', '58.69', '123.22');
INSERT INTO `juegodetronosbd`.`dragon` (`codigo`, `nombre`, `color`, `tamaño`, `longitud`) VALUES ('7', 'Knirvos', 'Violeta', '60.67', '132.04');

INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sobrenombre`, `sexo`, `fechaNacimiento`, `fechaMuerte`) VALUES ('1', 'Eddard', 'Stark', 'Ned', 'H', '263-09-11', '298-08-08');
INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sobrenombre`, `sexo`, `fechaNacimiento`, `fechaMuerte`) VALUES ('2', 'Robert', 'Baratheon', 'El Usurpador', 'H', '262-01-24', '298-02-15');
INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sobrenombre`, `sexo`, `fechaNacimiento`, `fechaMuerte`) VALUES ('3', 'Jaime', 'Lannister', 'Matarreyes', 'H', '262-07-05', '305-03-20');
INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sobrenombre`, `sexo`, `fechaNacimiento`, `fechaMuerte`) VALUES ('4', 'Catelyn', 'Stark', 'Cat', 'M', '264-07-20', '299-08-06');
INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sexo`, `fechaNacimiento`, `fechaMuerte`) VALUES ('5', 'Cersei', 'Lannister', 'M', '262-07-13', '305-01-08');
INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sobrenombre`, `sexo`, `fechaNacimiento`) VALUES ('6', 'Daenerys', 'Targaryen', 'Dama de plata', 'M', '284-09-14');
INSERT INTO `juegodetronosbd`.`personaje` (`codigo`, `nombre`, `apellido`, `sobrenombre`, `sexo`, `fechaNacimiento`) VALUES ('7', 'Jorah', 'Mormont', 'El Oso', 'H', '254-06-06');

INSERT INTO `juegodetronosbd`.`arma` (`codigo`, `nombre`, `alcance`, `daño`, `descripcion`) VALUES ('1', 'Garra', '1.23', '68', 'Garra es la espada bastarda ancestral de acero valyrio de la Casa Mormont.');
INSERT INTO `juegodetronosbd`.`arma` (`codigo`, `nombre`, `alcance`, `daño`, `descripcion`) VALUES ('2', 'Colmillo de León', '0.87', '56', 'Colmillo de León fue la primera espada del príncipe Joffrey Baratheon.');
INSERT INTO `juegodetronosbd`.`arma` (`codigo`, `nombre`, `alcance`, `daño`, `descripcion`) VALUES ('3', 'Rugido ', '1.03', '89', 'Rugido fue la espada ancestral de acero valyrio de la Casa Lannister. ');

INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('1', '1', 'Winter Is Coming');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('2', '2', 'The Kingsroad');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('3', '3', 'Lord Snow');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('4', '4', 'Cripples, Bastards, and Broken Things');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('5', '5', 'The Wolf and the Lion');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('6', '6', 'A Golden Crown');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('7', '7', 'You Win or You Die');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('8', '8', 'The Pointy End');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('9', '9', 'Baelor');
INSERT INTO `juegodetronosbd`.`capitulo` (`codigo`, `numero`, `nombre`) VALUES ('10', '10', 'Fire and Blood');

INSERT INTO `juegodetronosbd`.`casa` (`codigo`, `nombre`, `emblema`, `lema`, `territorio`) VALUES ('1', 'Targaryen', 'https://cutt.ly/eM4vAba', 'Fuego y Sangre', 'Kings Landing');
INSERT INTO `juegodetronosbd`.`casa` (`codigo`, `nombre`, `emblema`, `lema`, `territorio`) VALUES ('2', 'Stark', 'https://cutt.ly/IM4vmXN', 'Se acerca el Invierno', 'Winterfell');

INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('1', '1', 'Temporada 1');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('2', '2', 'Temporada 2');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('3', '3', 'Temporada 3');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('4', '4', 'Temporada 4');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('5', '5', 'Temporada 5');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('6', '6', 'Temporada 6');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('7', '7', 'Temporada 7');
INSERT INTO `juegodetronosbd`.`temporada` (`codigo`, `numero`, `descripcion`) VALUES ('8', '8', 'Temporada 8');

INSERT INTO `juegodetronosbd`.`titulo` (`codigo`, `nombre`, `descripcion`) VALUES ('1', 'Señores Dragón', 'Los señores dragón[1] fueron los nobles más poderosos del Feudo Franco de Valyria que eran capaces de controlar y montar a los dragones.');
INSERT INTO `juegodetronosbd`.`titulo` (`codigo`, `nombre`, `descripcion`) VALUES ('2', 'Príncipe de Refugio Estival', 'Príncipe de Refugio Estival fue un título usado por los hijos menores de un monarca durante la dinastía Targaryen.');


SELECT nombre, tamaño FROM dragon ORDER BY tamaño DESC, longitud ASC;

SELECT COUNT(codigo) FROM personaje GROUP BY LEFT(nombre,1) ORDER BY  COUNT(codigo);

SELECT count(sexo), avg(timestampdiff(year, fechaNacimiento, curdate())) AS "edad" FROM personaje WHERE fechaMuerte IS NOT NULL GROUP BY sexo;

SELECT IFNULL (concat("EL personaje ", nombre, " ", apellido , " murio a los ",timestampdiff(year, fechaNacimiento, fechaMuerte)), CONCATÇ
("EL personaje ", nombre, " ", apellido , " esta vivo ") )  FROM personaje WHERE sexo = "H";

SELECT concat("Año: ", YEAR(fechaMuerte), " - Nº de muertes: ", COUNT(*)) FROM personaje GROUP BY YEAR(fechaMuerte) having COUNT(*)>1;


DROP FUNCTION IF EXISTS numpersonajes;
DELIMITER $$
CREATE FUNCTION numpersonajes(LimitInf integer, LimitSup integer)
RETURNS VARCHAR(100)
BEGIN
	DECLARE RET VARCHAR(100);
    DECLARE num_per INTEGER;
	SELECT COUNT(*) INTO num_per FROM personaje WHERE TIMESTAMPDIFF(year, fechaNacimiento, CURDATE()) BETWEEN LimitInf AND LimitSup;
	RETURN num_per;
END
$$
DELIMITER ;

/* hagamos lo que hagamos nos sigue dando el error de fechaNacimiento"
drop procedure if exists calculadorDeEdad;
delimiter $$
create procedure calculadorDeEdad()
begin
declare maximoEdad varchar(30);
declare minimoEdad varchar(30);
declare edad year;
select nombre into maximoEdad from personaje where fechaMuerte is not null group by nombre having max( timestampdiff(year, fechaNacimiento, fechaMuerte)) order by timestampdiff(year, fechaNacimiento, fechaMuerte)desc limit 1  ;
select nombre into maximoEdad from personaje where fechaMuerte is not null group by nombre having max( timestampdiff(year, fechaNacimiento, fechaMuerte)) order by timestampdiff(year, fechaNacimiento, fechaMuerte)  limit 1;
select concat("El personaje de mayor edad es ",maximoEdad ," con ", (timestampdiff(year, fechaNacimiento, curdate()) , " años y el mas joven es ",minimoEdad , " con " , (timestampdiff(year, fechaNacimiento, curdate()), "años.")));
end
$$
delimiter ;
call calculadorDeEdad();*/


drop procedure if exists cuantasCasas;
delimiter $$
create procedure cuantasCasas(letra char)
begin
select concat("Existen
un total de ", (select count(*) from casa WHERE nombre LIKE CONCAT("%",letra,"%"))," casas que comienzan por la letra ", letra, ". ");
end
$$
delimiter ;
call cuantasCasas("a");
