/* FULL JOIN */
/* me trae todo lo de la trabla derecha e izquierda, lo hago igual que el join, pero espero resultados de la derecha e izquierda */


SELECT * FROM users 
FULL JOIN cedula
ON users.user_id = cedula.user_id;

/* UNION */
/* me trae los resultados de las dos tablas, pero no me trae los repetidos
Recupera los valores de user_id desde ambas tablas (users y cedula).
Elimina duplicados, porque UNION por defecto solo devuelve valores únicos.
Une los resultados de ambas tablas en una sola columna.
 */
SELECT user_id FROM users 
UNION
SELECT user_id FROM cedula

/* UNION ALL */
/* me trae los resultados de las dos tablas, pero me trae los repetidos
Recupera los valores de user_id desde ambas tablas (users y cedula).
No elimina duplicados, porque UNION ALL devuelve todos los valores.
Une los resultados de ambas tablas en una sola columna.
 */
SELECT user_id FROM users
UNION ALL   
SELECT user_id FROM cedula


