/* VIEWS  */
/* Las views (o vistas) en SQL son consultas almacenadas que actúan como tablas virtuales. 
Son como una "ventana" a los datos de una o más tablas, 
permitiéndote consultar información sin alterar la estructura de las tablas originales. */
/* Las vistas son útiles para:
- Simplificar consultas complejas.
- Ocultar información sensible.
- Reutilizar consultas frecuentes.
- Mejorar el rendimiento de las consultas.
- Simplificar la gestión de permisos.
- Crear una capa de abstracción entre la base de datos y las aplicaciones. */
/* Creo una vista 'CREATE VIEW view_name' que muestre los campos 'AS' de la tabla 'SELECT * FROM table_name' */
CREATE VIEW vw_users AS
SELECT * FROM users;