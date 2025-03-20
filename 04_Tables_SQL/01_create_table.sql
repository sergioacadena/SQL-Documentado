/* Crear una tabla, añado la variable del nombre de la columna mas el tipo de variable seún el dato que almacena */
CREATE TABLE personas(
 id int,
 name varchar(100),
 age int,
 email varchar (50),
 created date
);

/* añdo el comportamiento de que no puede ser vacio con NOT NULL obligatorio */
CREATE TABLE personas2(
 id int NOT NULL ,
 name varchar(100) NOT NULL ,
 age int,
 email varchar (50),
 created date
);

/* añado la restricción de que el id no puede ser repetido con UNIQUE (id)*/
CREATE TABLE personas2(
 id int NOT NULL,
 UNIQUE (id),
 name varchar(100) NOT NULL ,
 age int,
 email varchar (50),
 created datetime
);
/* añade cómo primary ky y campo unico, o sea, no se repite, los dos al mismo tiempo sin necesidad del UNIQUE */
CREATE TABLE personas3(
 id int NOT NULL,
 PRIMARY KEY (id),
 name varchar(100) NOT NULL ,
 age int,
 email varchar (50),
 created datetime
);

/* añade la restricción de que la edad no puede ser menor a 18 */
CREATE TABLE personas5(
 id int NOT NULL,
 PRIMARY KEY (id),
 name varchar(100) NOT NULL ,
 age int, CHECK (age>=18),
 email varchar (50),
 created datetime
);

/* añade la restricción de que el email no puede ser nulo */
CREATE TABLE personas6(
 id int NOT NULL,
 PRIMARY KEY (id),
 name varchar(100) NOT NULL ,
 age int, CHECK (age>=18),
 email varchar (50) NOT NULL,
 created datetime
);

/* añade el DEFAULT que es una restriccion 
que pone un valor por defecto si el campo no se llena, en este caso se llena con la fecha actual
con la función propia SQL para leer el tiempo actual CURRENT_TIMESTAMP()*/
CREATE TABLE personas6(
 id int NOT NULL,
 PRIMARY KEY (id),
 name varchar(100) NOT NULL ,
 age int, CHECK (age>=18),
 email varchar (50) ,
 created datetime DEFAULT CURRENT_TIMESTAMP()
);

/* añade el AUTO_INCREMENT que es una restriccion paraque se incremente de manera automática con un valor nuevo cada vez que se inserta un nuevo registro */
CREATE TABLE personas6(
 id int NOT NULL AUTO_INCREMENT,
 PRIMARY KEY (id),
 name varchar(100) NOT NULL ,
 age int, CHECK (age>=18),
 email varchar (50) ,
 created datetime DEFAULT CURRENT_TIMESTAMP()
);

