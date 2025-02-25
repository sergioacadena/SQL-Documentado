SELECT * FROM users WHERE age =32; /* selecciona todos los datos de la tabla usuario DONDE la edad es igual a 32 */
SELECT name FROM users WHERE age =32;  /* Selecciona el campo nombre de la tabla usuarios DONDE la edad sea igual a 32 */
SELECT DISTINCT age FROM users WHERE age = 32; /* selecciona los valores únicos de la edad de la tabla usuarios donde la edad sea 32 */
SELECT * FROM users WHERE age < 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea menor a 32 */  
SELECT * FROM users WHERE age > 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea mayor a 32 */
SELECT * FROM users WHERE age <= 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea menor o igual a 32 */
SELECT * FROM users WHERE age >= 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea mayor o igual a 32 */
SELECT * FROM users WHERE age <> 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea diferente a 32 */
SELECT * FROM users WHERE age != 32; /* selecciona todos los datos de la tabla usuarios donde la edad sea diferente a 32 */
SELECT * FROM users WHERE age BETWEEN 27 AND 32; /* selecciona todos los datos de la tabla usuarios donde la edad esté entre 27 y 32 */
SELECT * FROM users WHERE age NOT BETWEEN 27 AND 32; /* selecciona todos los datos de la tabla usuarios donde la edad no esté entre 27 y 32 */
SELECT * FROM users WHERE name = 'John'; /* selecciona todos los datos de la tabla usuarios donde el nombre sea John */
SELECT * FROM users WHERE name = 'John' AND age = 32; /* selecciona todos los datos de la tabla usuarios donde el nombre sea John y la edad sea 32 */
SELECT * FROM users WHERE name = 'John' OR age = 32; /* selecciona todos los datos de la tabla usuarios donde el nombre sea John o la edad sea 32 */
SELECT * FROM users WHERE name IN ('John', 'Doe'); /* selecciona todos los datos de la tabla usuarios donde el nombre sea John o Doe */
SELECT * FROM users WHERE name NOT IN ('John', 'Doe'); /* selecciona todos los datos de la tabla usuarios donde el nombre no sea John o Doe */
SELECT * FROM users WHERE name LIKE 'J%'; /* selecciona todos los datos de la tabla usuarios donde el nombre comience con J */
SELECT * FROM users WHERE name LIKE '%n'; /* selecciona todos los datos de la tabla usuarios donde el nombre termine con n */
SELECT * FROM users WHERE name LIKE '%oh%'; /* selecciona todos los datos de la tabla usuarios donde el nombre contenga oh */
SELECT * FROM users WHERE name ILIKE 'j%'; /* selecciona todos los datos de la tabla usuarios donde el nombre comience con j sin importar si es mayúscula o minúscula */
SELECT * FROM users WHERE name NOT ILIKE 'j%'; /* selecciona todos los datos de la tabla usuarios donde el nombre no comience con j sin importar si es mayúscula o minúscula */
SELECT * FROM users WHERE age IS NULL; /* selecciona todos los datos de la tabla usuarios donde la edad sea nula */
SELECT * FROM users WHERE age IS NOT NULL; /* selecciona todos los datos de la tabla usuarios donde la edad no sea nula */
SELECT * FROM users WHERE age IS NULL AND name = 'John'; /* selecciona todos los datos de la tabla usuarios donde la edad sea nula y el nombre sea John */
SELECT * FROM users WHERE age IS NULL OR name = 'John'; /* selecciona todos los datos de la tabla usuarios donde la edad sea nula o el nombre sea John */
SELECT * FROM users WHERE age IS NULL AND name IS NULL; /* selecciona todos los datos de la tabla usuarios donde la edad y el nombre sean nulos */
SELECT * FROM users WHERE age IS NULL OR name IS NULL; /* selecciona todos los datos de la tabla usuarios donde la edad o el nombre sean nulos */
SELECT * FROM users WHERE age IS NOT NULL AND name IS NOT NULL; /* selecciona todos los datos de la tabla usuarios donde la edad y el nombre no sean nulos */
SELECT * FROM users WHERE age IS NOT NULL OR name IS NOT NULL; /* selecciona todos los datos de la tabla usuarios donde la edad o el nombre no sean nulos */
SELECT * FROM users WHERE age IS NOT NULL AND name IS NULL; /* selecciona todos los datos de la tabla usuarios donde la edad no sea nula y el nombre sea nulo */
SELECT * FROM users WHERE age IS NULL AND name IS NOT NULL; /* selecciona todos los datos de la tabla usuarios donde la edad sea nula y el nombre no sea nulo */
SELECT * FROM users WHERE age = 32 AND name = 'John'; /* selecciona todos los datos de la tabla usuarios donde la edad sea 32 y el nombre sea John */
SELECT * FROM users WHERE age = 32 OR name = 'John'; /* selecciona todos los datos de la tabla usuarios donde la edad sea 32 o el nombre sea John */