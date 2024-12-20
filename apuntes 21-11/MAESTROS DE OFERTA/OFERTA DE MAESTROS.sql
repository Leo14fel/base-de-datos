CREATE DATABASE MAESTROOFERTA;
USE MAESTROOFERTA;

CREATE TABLE MATERIA
(
	SIGLA VARCHAR(10) NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR(100) NOT NULL
);

CREATE TABLE GRUPO
(
	ID SMALLINT NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR(2) NOT NULL,
    CODIDGOD INTEGER NOT NULL,
    FOREIGN KEY (CODIGOD) REFERENCES DOCENTE (CODIGO)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    SIGLAM VARCHAR(10) NOT NULL,
    FOREIGN KEY (SIGLAM) REFERENCES MATERIA (SIGLA)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE HORARIO
(
	ID SMALLINT NOT NULL PRIMARY KEY,
    DIA VARCHAR(10) NOT NULL,
    HI TIME,
    HF TIME
);
CREATE TABLE DOCENTE
(
	SIGLA VARCHAR(10) NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(100) NOT NULL
);

CREATE TABLE TIENE
(
	PRIMARY KEY(IDG,IDM),
    IDG SMALLINT NOT NULL,
    FOREIGN KEY (IDG) REFERENCES GRUPO (ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    IDH SMALLINT NOT NULL,
    FOREIGN KEY (IDH) REFERENCES HORARIO (ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    
);