/* alterar u modificar tablas, no campos o registros, tablas, es diferente */

/* ADD añade una nueva columna a un tabla YA CREADA */
ALTER TABLE personas6 
ADD surname VARCHAR (150);

/* Cambia el nombre de una columna */
ALTER TABLE personas6 
RENAME surname to descripcion;

/* Cambia el tipo de dato de una columna */
ALTER TABLE personas6
MODIFY COLUMN descripcion TEXT; 

/* Cambia el nombre de una tabla */
ALTER TABLE personas6
RENAME TO personas7;

/* Borra una columna */
ALTER TABLE personas7
DROP COLUMN descripcion;



