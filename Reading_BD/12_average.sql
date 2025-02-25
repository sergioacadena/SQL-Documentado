SELECT AVG(age) FROM users; /* calcula el promedio de la edad de la tabla usuarios */
SELECT AVG(age) FROM users WHERE age > 30; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea mayor a 30 */
SELECT AVG(age) FROM users WHERE age < 30; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea menor a 30 */
SELECT AVG(age) FROM users WHERE age = 30; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea igual a 30 */
SELECT AVG(age) FROM users WHERE age = 30 AND name = 'Myriam'; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea igual a 30 y el nombre sea Myriam */
SELECT AVG(age) FROM users WHERE age = 30 OR name = 'Myriam'; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea igual a 30 o el nombre sea Myriam */
SELECT AVG(age) FROM users WHERE age = 30 OR name = 'Myriam' AND email = 'myriam@gmail.com'; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea igual a 30 o el nombre sea Myriam y el email sea */
SELECT AVG(age) FROM users WHERE age = 30 OR name = 'Myriam' AND email = 'myriam@gmail.com' OR age = 32; /* calcula el promedio de la edad de la tabla usuarios donde la edad sea igual a 30 o el nombre sea Myriam y el email sea
