
/* RIGHT JOIN */
/* me trae todo lo de la trabla derecha, lo hago igual que el join, pero espero resultados de la derecha */

SELECT users.name, email, companies.name FROM users
RIGHT JOIN companies
ON users.company_id = companies.company_id
ORDER BY companies.name ASC;

/* RIGHT JOIN */
/* me trae todo lo de la trabla derecha, lo hago igual que el join, pero espero resultados de la derecha */

SELECT users.name, languages.name 
FROM users_languages
RIGHT JOIN users ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON languages.language_id = users_languages.language_id;
;

