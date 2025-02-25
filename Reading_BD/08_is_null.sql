SELECT * FROM users WHERE email IS NUll; /* me devuelve los usuarios que no tienen email */
SELECT name, surname, 	IFNULL(AGE, 0) AS 'age' FROM users ; 
/* Ifnull me reeplzar por un valor la palabra nulo cuando es vació le añado un AS para darle un nombre al resultado de la columna*/
SELECT * FROM users WHERE email IS NUll; /* me devuelve los usuarios que no tienen email */
SELECT * FROM users WHERE email IS NOT NUll; /* me devuelve los usuarios que tienen email */
SELECT * FROM users WHERE email IS NUll AND age > 30; /* me devuelve los usuarios que no tienen email y son mayores de 30 */
SELECT * FROM users WHERE email IS NUll OR age > 30; /* me devuelve los usuarios que no tienen email o son mayores de 30 */
SELECT * FROM users WHERE email IS NUll OR age IS NUll; /* me devuelve los usuarios que no tienen email o no tienen edad */
SELECT * FROM users WHERE email IS NUll AND age IS NUll; /* me devuelve los usuarios que no tienen email y no tienen edad */
SELECT * FROM users WHERE email IS NUll OR age IS NUll OR name IS NUll; /* me devuelve los usuarios que no tienen email o no tienen edad o no tienen nombre */
SELECT * FROM users WHERE email IS NUll AND age IS NUll AND name IS NUll; /* me devuelve los usuarios que no tienen email y no tienen edad y no tienen nombre */
SELECT * FROM users WHERE email IS NUll OR age IS NUll OR name IS NUll OR surname IS NUll; /* me devuelve los usuarios que no tienen email o no tienen edad o no tienen nombre o no tienen apellido */
SELECT * FROM users WHERE email IS NUll AND age IS NUll AND name IS NUll AND surname IS NUll; /* me devuelve los usuarios que no tienen email y no tienen edad y no tienen nombre y no tienen apellido */
SELECT * FROM users WHERE email IS NUll OR age IS NUll OR name IS NUll OR surname IS NUll OR age > 30; /* me devuelve los usuarios que no tienen email o no tienen edad o no tienen nombre o no tienen apellido o son mayores de 30 */
SELECT * FROM users WHERE email IS NUll AND age IS NUll AND name IS NUll AND surname IS NUll AND age > 30; /* me devuelve los usuarios que no tienen email y no tienen edad y no tienen nombre y no tienen apellido y son mayores de 30 */
SELECT * FROM users WHERE email IS NUll OR age IS NUll OR name IS NUll OR surname IS NUll OR age > 30 OR age < 20; /* me devuelve los usuarios que no tienen email o no tienen edad o no tienen nombre o no tienen apellido o son mayores de 30 o menores de 20 */
SELECT * FROM users WHERE email IS NUll AND age IS NUll AND name IS NUll AND surname IS NUll AND age > 30 AND age < 20; /* me devuelve los usuarios que no tienen email y no tienen edad y no tienen nombre y no tienen apellido y son mayores de 30 y menores de 20 */
SELECT * FROM users WHERE email IS NUll OR age IS NUll OR name IS NUll OR surname IS NUll OR age > 30 OR age < 20 OR name = 'Myriam'; /* me devuelve los usuarios que no tienen email o no tienen edad o no tienen nombre o no tienen apellido o son mayores de 30 o menores de 20 o se llaman Myriam */    
