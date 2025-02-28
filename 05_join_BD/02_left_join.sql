/* LEFT JOIN */
/* me trae todo lo de la trabla izquierda, lo hago igual que el join, pero espero resultados de la izquierda */


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
;
