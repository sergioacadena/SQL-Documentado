/* JOIN COMBINA O MUESTRA COLUMNAS DE DOS TABLAS PARALELAMENTE CUNADO COINCIDE UN DATO, Y
 UNION LO HACE PERO CON FILAS*/
/* me trae todo lo de la trabla derecha e izquierda, lo hago igual que el join, 
pero espero resultados de la derecha e izquierda
Diferencia entre UNION y UNION ALL
UNION: Elimina duplicados automáticamente.
UNION ALL: Mantiene todos los registros, incluso si están duplicados
 */

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

/* OJO, LA SIGUIENTE CONSULTA TIENE UN ERROR, SE DEBEN TRAER LA MISMA CANTIDAD DE COLUMNAS EN LAS DOS CONSULTAS */
SELECT name, user_id FROM users /* Selecciono 2 columnas */
UNION ALL
SELECT user_id FROM cedula /* Selecciono una columna, eso esta mal porque en la anterior fuerno dos columnas */

/* Forma correcta, dos de dos columnas */
SELECT name, user_id FROM users
UNION ALL
SELECT name, user_id FROM cedula;

/* UNION con ORDER BY */
/* me trae los resultados de las dos tablas, pero no me trae los repetidos
Recupera los valores de user_id desde ambas tablas (users y cedula).
Elimina duplicados, porque UNION por defecto solo devuelve valores únicos.
Une los resultados de ambas tablas en una sola columna.
 */
SELECT user_id FROM users
UNION   
SELECT user_id FROM cedula
ORDER BY user_id ASC;

/* UNION ALL con ORDER BY */
/* me trae los resultados de las dos tablas, pero me trae los repetidos
Recupera los valores de user_id desde ambas tablas (users y cedula).
No elimina duplicados, porque UNION ALL devuelve todos los valores.
Une los resultados de ambas tablas en una sola columna.
 */
SELECT user_id FROM users
UNION ALL
SELECT user_id FROM cedula
ORDER BY user_id ASC;

/* UNION con ORDER BY */
/* me trae los resultados de las dos tablas, pero no me trae los repetidos  
Recupera los valores de user_id desde ambas tablas (users y cedula).
Elimina duplicados, porque UNION por defecto solo devuelve valores únicos.
Une los resultados de ambas tablas en una sola columna.
 */
SELECT user_id FROM users
UNION
SELECT user_id FROM cedula
ORDER BY user_id ASC;


LEFT JOIN cedula
ON users.user_id = cedula.user_id
UNION ALL 
SELECT users.user_id AS users_id, cedula.user_id AS c_user_id
FROM users 
RIGHT JOIN cedula
ON users.user_id = cedula.user_id
WHERE users.user_id IS NULL
