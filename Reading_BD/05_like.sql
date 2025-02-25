SELECT * FROM users WHERE surname LIKE 'en'; /* trae todos lo que sean exactamente y solamente la palabra "en" */
SELECT * FROM users WHERE surname LIKE '%en%'; /* trae todos lo que tengan en, sin importar lo que esté antes y despues del % */
SELECT * FROM users WHERE surname LIKE 'en%'; /* trae todos lo que empiecen con en, sin importar lo que esté después del % */
SELECT * FROM users WHERE surname LIKE '%en'; /* trae todos lo que terminen con en, sin importar lo que esté antes del % */
SELECT * FROM users WHERE email LIKE '%gmail.com'; /* trae todos lo que tengan gmail, sin importar lo que esté antes del % */
SELECT * FROM users WHERE email LIKE 'myriam%'; /* trae todos lo que tengan myriam, sin importar lo que esté después del % */
SELECT * FROM users WHERE email LIKE '%@gmail.com'; /* trae todos lo que tengan @gmail.com, sin importar lo que esté antes del % */ 



