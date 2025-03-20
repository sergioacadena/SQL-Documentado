/* VIEWS  */
/* Las views (o vistas) en SQL son consultas almacenadas que actúan como tablas virtuales. 
permitiéndote consultar información sin alterar la estructura de las tablas originales. */
/* Las vistas son útiles para:
- Simplificar consultas complejas.
- Ocultar información sensible.
- Reutilizar consultas frecuentes.
- Mejorar el rendimiento de las consultas.
- Simplificar la gestión de permisos.
- Crear una capa de abstracción entre la base de datos y las aplicaciones. */
/* Creo una vista 'CREATE VIEW view_name' que muestre los campos 'AS' de la tabla 'SELECT * FROM table_name' */

/* meorizo consultas de tablas que genero por consultas muy usadas, 
por ejemplo si uso mucho una tabla basada en nombre y edad de los mayores de edad, 
creo una view para no estar haciendo la consulta constantemente */

CREATE VIEW v_adult_ages AS /* asigno nombre a la VIEW */
SELECT name, age /* Selecciono los datos a mostrar en la VIEW */
FROM users /* tabla de donde extraigo los datos */
WHERE age >=18; /* condición para mostrar los datos */
drop view vw_users; /* elimino la vista vw_users */


/* Creo una vista 'CREATE VIEW view_name' que muestre todos los campos 'AS' de la tabla 'SELECT * FROM table_name' */
CREATE VIEW vw_users AS
SELECT * FROM users;


