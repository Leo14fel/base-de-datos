create database universidad;
use universidad;

create table Alumno
(
 registro integer null,
 ci integer not null,
 nombre varchar(60) not null,
 fechaini date not null,
 sexo char not null,
 estadocivil char not null,
 telefono integer,
 direccion varchar (40)
 );
 select * from Alumno;
 
 insert into alumno values (111,434,'Juaquin Chumacero Yupanqui','2000/1/10','m','s',702030,'Urb. Las Lomas');
 insert into alumno values (222,435,'Saturnino Mamani ','2002/2/11','m','c',702031,'calle Landivar');
 insert into alumno values (333,436,'Fabiola mendez','2003/3/12','f','s',702032,'calle Junin');
 insert into alumno values (444, 437, 'Miguel Arce', '2001/04/15', 'm', 's', 702034, 'Av. El Sol 123');
 insert into alumno values (555, 438, 'Rosa Martínez', '1999-05-20', 'f', 'c', 702035, null);
 insert into alumno values (666, 439, 'José Luis Torres', '2004-06-25', 'm', 's', 702036, 'Urb. Las Palmeras');
 insert into alumno values (777, 440, 'Ana Gómez', '2005-07-30', 'f', 's', null, 'Calle Independencia 789');
 insert into alumno values (888, 441, 'Carlos Rodríguez', '1998/08/05', 'm', 'c', 702038, 'Av. Libertador 101');
 insert into alumno values (999, 442, 'María López', '2002-09-10', 'f', 's', 702039, 'Urb. Jardines de la Villa');
 insert into alumno values (1010, 443, 'Luis Fernández', '2003/10/15', 'm', 'c', null, 'Calle Central 202');
 insert into alumno values (1111, 444, 'Daniela Pérez', '2000/11/20', 'f', 's', 702040, 'Av. Central 456');
insert into alumno values (1212, 445, 'Ricardo Villarroel', '2001/12/15', 'm', 's', NULL, 'Calle Las Flores 102');
insert into alumno values (1313, 446, 'Sofía Espinoza', '1999/10/01', 'f', 'c', 702041, 'Urb. Los Sauces 210');
insert into alumno values (1414, 447, 'Gabriel Ramos', '2003/05/22', 'm', 's', 702042, NULL);
insert into alumno values (1515, 448, 'Verónica Sánchez', '2002/07/18', 'f', 's', 702043, 'Calle Pinos 305');
insert into alumno values (1616, 449, 'Fernando Gutiérrez', '1998/09/09', 'm', 'c', 702044, 'Av. Los Ángeles 601');
insert into alumno values (1717, 450, 'Patricia Morales', '2004/08/30', 'f', 's', NULL, 'Urb. Los Rosales 405');
insert into alumno values (1818, 451, 'Ignacio Vega', '2000/06/10', 'm', 'c', 702045, 'Calle Colón 123');
insert into alumno values (1919, 452, 'Mónica Rojas', '2003/12/05', 'f', 's', 702046, NULL);
insert into alumno values (2020, 453, 'Andrés Herrera', '2002/01/25', 'm', 's', 702047, 'Av. Principal 789');
insert into alumno values (2121, 454, 'Claudia Salinas', '2001/03/14', 'f', 'c', 702048, 'Calle Nueva 321');
insert into alumno values (2222, 455, 'Diego López', '2002/02/28', 'm', 's', 702049, 'Av. Sol Naciente 456');
insert into alumno values (2323, 456, 'Lucía Ortiz', '1999/04/17', 'f', 's', 702050, 'Calle Estrella 789');
insert into alumno values (2424, 457, 'Martín Castro', '2003/07/23', 'm', 'c', NULL, 'Urb. La Esperanza 101');
insert into alumno values (2525, 458, 'Elena Navarro', '2000/08/16', 'f', 's', 702051, 'Av. Mariscal 234');
insert into alumno values (2626, 459, 'Gustavo Fernández', '1998/11/11', 'm', 'c', 702052, NULL);
insert into alumno values (2727, 460, 'Adriana Pacheco', '2001/09/25', 'f', 's', 702053, 'Calle Luna 567');
insert into alumno values (2828, 461, 'Esteban Flores', '2002/12/19', 'm', 's', 702054, 'Av. Unión 890');
insert into alumno values (2929, 462, 'Rocío Maldonado', '2004/05/07', 'f', 'c', 702055, 'Calle Sol 678');
insert into alumno values (3030, 463, 'Héctor Arias', '1999/06/14', 'm', 's', 702056, 'Urb. Los Álamos 345');

 /*para actualizar algun dato*/
 update alumno set nombre='saturnino mamani calle' where registro=111;
 delete from alumno where registro=333;
 
 /*mostrar el nombre y egistro de los alumnos varones*/
 select registro,nombre
 from alumno
 where sexo='m';
 
 /*mostrar alumnos varones casados*/
 select *
 from alumno
 where sexo='m' and estadocivil='c';
 
 /* mostrar alumnos sin telefono*/
 select *
 from alumno
 where telefono is null;
 
 /*mostrar alumnos que sus nombre empiecen or la letra f*/
 select *
 from alumno
 where nombre like 'F%';
 
 /*mostar alumnos que se llamen carlos*/
 select *
 from alumno
 where nombre like '%Carlos%';  /* '%' se usa oara no darle importacia para lo hay detras o adelante del texto*/
 
 
 /*MOSTRAR TODOS LOS ALUMNOS VARONES EN ORDEN ALFABETICO POR SU NOMBRE*/
 select  *
 from alumno
 where sexo='M'
 order by NOMBRE asc; /* asc=ascendente , desc=descendente*/
 
 
 /*MOSTRAR TODOS LOS ALUMNOS VARONES QUE TIENEN TELEFONO*/
 SELECT *
 FROM ALUMNO
 WHERE SEXO='M' AND TELEFONO IS NOT NULL;
  /*MOSTRAR LA CANTIDAD DE ALUMNOS*/
  select count(*) as cantidadDeAlumnos /*cuenta la cantidad de alumnos*/
  from ALUMNO;
  
  /*mostrar cuantos alumnos tienen telefono */
  select count(*) as CuentaDeAlumTel from alumno
  where telefono is not null;
  
	select count(telefono)
	from alumno;
    
    /*cuantos alumnos no tienen telefono*/
    
    select count(*) as 'sin telefono'
    from alumno
    where telefono is null;
     /*mostrar la cantidad de alumnas que esten casadas y tengan una direccion*/
     
     select count(*)
     from alumno
     where estadocivil='c' and sexo='f' and direccion is not null;
     
     /*mostrar la cantidad de alumnos que existen por estado civil es decir cuantos, solteros, casasdos, divorciadoos, viudos*/
     select estadocivil,count(*)
     from alumno
     group by estadocivil;
     
     select sexo,count(*)
     from alumno
     group by sexo;
