/* LEFT JOIN */
/* me trae todo lo de la trabla izquierda, lo hago igual que el join, pero espero resultados de la izquierda 
El ON en un JOIN es como el puente que conecta dos tablas. Sirve para decirle a la base de datos cómo
relacionar los datos de una tabla con los de otra.
ON = datos que coincidan entre dos tablas, así relacionamos dos tablas por un dato en comun*/


/* mientras que el JOIN traes solo las coincidencias del ON
el LEFT JOIN trae TODO de la tabla izquierda mas las coicidencias */
SELECT users.name, email, companies.name FROM users 
LEFT JOIN companies
ON users.company_id = companies.company_id
ORDER BY companies.name ASC;

/* LEFT JOIN */
/* me trae todo lo de la trabla izquierda, lo hago igual que el join, pero espero resultados de la izquierda */

SELECT users.name, languages.name
FROM users_languages
LEFT JOIN users ON users.user_id = users_languages.user_id
LEFT JOIN languages ON languages.language_id = users_languages.language_id;

/* LEFT JOIN */
/* me trae todo lo de la trabla izquierda, lo hago igual que el join, pero espero resultados de la izquierda */

SELECT users.user_id AS usercedula, cedula.user_id AS id, cedula.cedula_numero AS cedula
FROM users
LEFT JOIN cedula
ON users.user_id = cedula.user_id;
