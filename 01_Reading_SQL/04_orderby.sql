SELECT * FROM users ORDER BY age; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad acendente */
SELECT * FROM users ORDER BY age ASC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad acendente */
SELECT * FROM users ORDER BY age DESC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad decendente */
SELECT * FROM users ORDER BY age DESC, name ASC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad decendente y nombre acendente */
SELECT * FROM users ORDER BY age, name; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad acendente y nombre acendente */
SELECT * FROM users ORDER BY age ASC, name DESC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad acendente y nombre decendente */
SELECT * FROM users ORDER BY age DESC, name DESC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad decendente y nombre decendente */
SELECT * FROM users ORDER BY age ASC, name ASC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad acendente y nombre acendente */
SELECT * FROM users ORDER BY age DESC, name ASC; /* Seleccina TODOS los datos de la tabla usuario y los ordena por edad decendente y nombre acendente */
SELECT * FROM users WHERE email = 'myriam@gmail.com' ORDER BY name ASC; /* Seleccina TODOS los datos de la tabla usuario donde el email sea igual a '


