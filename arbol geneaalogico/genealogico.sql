create database Genealogico;
use Genealogico;

create table Persona(
id int not null primary key,
nombre varchar (50) not null,
sexo char not null,
idpadre int,
idmadre int
);
alter table persona 
add foreign key(idpadre)
references persona(id),
add foreign key (idmadre)
references persona(id)
on update no action
on delete no action;

INSERT INTO persona(id,nombre,sexo,idpadre,idmadre) VALUES
(1,'Joaquin Chumacero', 'm',null,null),
(2,'Fabiola Aguilera','f',null,null),
(3,'Pedro Chumacero','m',1,2),
(4,'Juana Yupanqui','f',null,null),
(5,'Luisa Mendez','f',null,null),
(6,'Joaquin Chumacero Yupanqui','m',3,4),
(7,'Carla Figueroa','f',null,null),
(8,'Luis Chumacero Mendez','m',6,5),
(9,'Joaquin jr Chumacero Figueroa','m',6,7),
(10,'Carla Chumacero Figueroa','f',6,7);

/*mostrar el nombre del papa de joaquin chumacero yupanqui*/
SELECT ID, NOMBRE
FROM PERSONA
WHERE ID IN (SELECT * FROM
			WHERE 

/*MOSTRAR LOS HIJOS DE JOAQUIN CHUMACERO*/
SELECT
FROM
WHERE

/*MOSTRAR HIJOS DE JOAQUIN CHUMACERO YUPANQUI*/
SELECT HIJO.ID,HIJO.NOMBRE
FROM PERSONA PADRE,PERSONA HIJO
WHERE PADRE.ID=HIJO.IDPADRE AND PADRE.NOMBRE='JOAQUIN CHUMACERO YUPANQUI'

SELECT ID,NOMBRE
FROM PERSONA
WHERE IDPADRE IN (SELECT ID
					FROM PERSONA
                    WHERE NOMBRE='JOAQUIN CHUMACERO YUPANQUI'
                    )
/*MOSTRAR EL NOMBRE DE LAS MADRES DE LOS HIJOS DE JOAQIUN CHUMACERO YUPANQUI*/

SELECT DISTINCT MADRE.ID, MADRE.NOMBRE
FROM  PERSONA MADRE, PERSONA HIJO, PERSONA PADRE
WHERE PADRE.ID=HIJO.IDPADRE AND HIJO.IDMADRE=MADRE.ID AND PADRE.NOMBRE='JOAQUIN CHUMACERO YUPANQUI'

/*MOSTRAR EL NOMBRE DEL ABUELO PATERNO DE JOAQUIN CHUMACERO YUPANQUI*/

SELECT PADRE.ID,PADRE.NOMBRE
FROM PERSONA PADRE, PERSONA HIJO
WHERE PADRE.ID=HIJO.IDPADRE AND PADRE.ID=IDPADRE AND HIJO.NOMBRE='JOAQUIN CHUMACERO YUPANQUI'

SELECT ID, NOMBRE
FROM PERSONA
WHERE ID IN (SELECT ID MADRE
			FROM PERSONA
				WHERE IDPADRE IN (SELECT ID
							FROM PERSONA
						WHERE NOMBRE= 'JOAQUIN CHUMACERO YUPANQUI'
				)



SELECT * FROM PERSONA;