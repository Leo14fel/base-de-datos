CREATE DATABASE universidad;
USE UNIVERSIDAD2024;
CREATE TABLE ALUMNO
(
	REGISTRO INTEGER NOT NULL PRIMARY KEY,
    CI INTEGER NOT NULL,
    NOMBRE VARCHAR (60) NOT NULL,
    FECHANAC DATE NOT NULL,
    SEXO CHAR NOT NULL,
    ESTADOCIVIL CHAR NOT NULL,
    TELEFONO INTEGER,
    DIRECCION VARCHAR(40)
    );