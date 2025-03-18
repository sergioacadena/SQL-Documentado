/* PROCEDURE SQL */
/* favoritos, es com alamacenar procedimientos en favoritos */
/* Un procedimiento almacenado en SQL es un conjunto de instrucciones SQL que se almacenan 
en la base de datos y se pueden ejecutar de forma repetida. 
Los procedimientos almacenados son útiles para:
- Reutilizar código.    
- Mejorar el rendimiento.
- Simplificar tareas complejas.
- Asegurar la integridad de los datos.
- Mejorar la seguridad.
- Facilitar la gestión de permisos.
- Crear una capa de abstracción entre la base de datos y las aplicaciones.
 */

/* Creo un procedimiento 'CREATE PROCEDURE procedure_name' que muestre todos los usuarios de la tabla 'SELECT * FROM users' */
/* DELIMITER // cambia el fin de una instrucción por defecto en ; 
para que no tenga conflicto con el ; del PROCEDURE*/
DELIMITER // /* creo un delimitador */
CREATE PROCEDURE p_all_users() /* CREO UN PROCEDURE una funcion que llama una intrucción que guardo */
BEGIN /* Anuncio el inicio del procedure */
	SELECT * FROM users; /* aqupi creo el código que necisto */
END// /* finlizo el proceduro añadiendo del delimitador // */
CALL p_all_users() /* llamo el procedure, así solo uso esta linea para una intrucción SELECT * FROM users;*/

/* BORRAR */
DROP PROCEDURE p_age_users; /* elimino el procedure p_age_users */

DELIMITER //
CREATE PROCEDURE p_age_users (IN age_param INT) /* CREO UNA VARIABLE QUE PUEDO USAR PARA ENVIAR UN DATO AL PROCEDURE CUANDO LO LLAME */
 BEGIN 
	SELECT * FROM users WHERE age = age_param;
END //

CALL p_age_users(20); /* LLAMO EL PROCEDURE Y LE ENVIO EL PARAMETRO 20 */