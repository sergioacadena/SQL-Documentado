SELECT * FROM users LIMIT 3; /* Llimita y trae solo los primeros 3 campos */
SELECT * FROM users LIMIT 3 OFFSET 2; /* Llimita y trae solo los primeros 3 campos, pero a partir del 2 en adelante */ 
SELECT * FROM users WHERE NOT email = 'myriam@gmail.com' OR age > 30 LIMIT 3;
/* trae todos los datos de la tabla usuario donde el email no sea igual a ''myriam@gmail.com'' o mayores de 30 en edad
 y los limita solo e los 3 primero campos */



