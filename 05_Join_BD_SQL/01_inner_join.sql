
/*  INNER JOIN DATOS COMUNES DE DOS TABLAS */
SELECT * FROM users /* Selecciona (SELECT) TODO (*) de (FROM) la tabla usuarios (users)*/
INNER JOIN cedula /* Une (JOIN) lo interno o coincidente (INNER) entre la tabla usuarios y cedula (cedula)*/
ON users.user_id = cedula.cedula_id; /* Indico sobre(ON) cuales datos de cada tabla (users.user_id = cedula.cedula_id) identifico la igualdad o coincidencia */

/*  INNER JOIN DATOS COMUNES DE DOS TABLAS */
SELECT * FROM users /* Selecciona (SELECT) TODO (*) de (FROM) la tabla usuarios (users)*/
INNER JOIN users_languages /* Une (JOIN) lo interno o coincidente (INNER) entre la tabla usuarios y users_languages (users_languages)*/
ON users.user_id = users_languages.user_id; /* Indico sobre(ON) cuales datos de cada tabla (users.user_id = users_languages.user_id) identifico la igualdad o coincidencia */


SELECT name, cedula_id FROM users   /* me muestra solo nombre y cedula de las tablas que uno a conticuanción */
INNER JOIN cedula 
ON users.user_id = cedula.cedula_id 
ORDER BY age ASC; /* ordenelos por edad de manera ascendente */

SELECT * FROM users 
JOIN companies 
ON users.company_id = companies.company_id
ORDER BY companies.name ASC; 
/* en caso de que haya dos tablas con atributos giales como 'name' puedo esfecificar el nombre de la tabla seguido de punto y el atributo */


SELECT users.name, email, companies.name FROM users 
JOIN companies 
ON users.company_id = companies.company_id /* ON donde los campos de dos tablas diferentes sean iguales, se combinan */
ORDER BY companies.name ASC;

/* usamos doble join para las subtablas en caso de relaciones muchos a muchos */
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users.user_id = users_languages.user_id
JOIN languages ON languages.language_id = users_languages.language_id;
;

/* usar el AS o alias para ponerle nombre a las columnas o consultas */
SELECT users.name AS NombredeUsuario, companies.name AS NombreDeCompania
FROM users
JOIN companies ON users.company_id = companies.company_id;