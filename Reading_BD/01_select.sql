
SELECT * FROM users; /* selecciona todos los datos de la tabla usuarios */
SELECT user_id, name FROM users; /* selecciona los campos user_id y name de la tabla usuarios */
SELECT * FROM users WHERE age = 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea 32 */
SELECT name FROM users WHERE age = 32; /* selecciona el campo name de la tabla usuarios donde la edad sea 32 */
SELECT DISTINCT age FROM users WHERE age = 32; /* selecciona los valores únicos de la edad de la tabla usuarios donde la edad sea 32 */
 
