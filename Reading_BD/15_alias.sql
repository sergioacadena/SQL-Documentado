/* alias */
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 32 AND 40; /* AS cambia el titulo de la columna para mayor claridad */
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 32 AND 40 AND name = 'Myriam'; /* AS cambia el titulo de la columna para mayor claridad */
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 32 AND 40 OR name = 'Myriam'; /* AS cambia el titulo de la columna para mayor claridad */
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 32 AND 40 AND name = 'Myriam' OR name = 'Jorge'; /* AS cambia el titulo de la columna para mayor claridad */
SELECT CONCAT(name, surname)FROM users; 
SELECT CONCAT(name, surname) AS 'Nombre Completo' FROM users; /* AS es muy util para dar nombre a columnas geeradas por consultas, como en el caso de unir dos con concatenación */
SELECT CONCAT(name, surname) AS 'Nombre Completo' FROM users WHERE age BETWEEN 32 AND 40; /* AS es muy util para dar nombre a columnas geeradas por consultas, como en el caso de unir dos con concatenación */
SELECT CONCAT(name, surname) AS 'Nombre Completo' FROM users WHERE age BETWEEN 32 AND 40 AND name = 'Myriam'; /* AS es muy util para dar nombre a columnas geeradas por consultas, como en el caso de unir dos con concatenación */
SELECT CONCAT(name, surname) AS 'Nombre Completo' FROM users WHERE age BETWEEN 32 AND 40 OR name = 'Myriam'; /* AS es muy util para dar nombre a columnas geeradas por consultas, como en el caso de unir dos con concatenación */
SELECT CONCAT(name, surname) AS 'Nombre Completo' FROM users WHERE age BETWEEN 32 AND 40 AND name = 'Myriam' OR name = 'Jorge'; /* AS es muy util para dar nombre a columnas geeradas por consultas, como en el caso de unir dos con concatenación */
