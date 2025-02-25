SELECT SUM(age) FROM users; /* suma todas las edades de los usuarios */
SELECT SUM(age) FROM users WHERE age > 30; /* suma las edades de los usuarios que tienen mas de 30 años */
SELECT SUM(age) FROM users WHERE age < 30; /* suma las edades de los usuarios que tienen menos de 30 años */
SELECT SUM(age) FROM users WHERE age = 30; /* suma las edades de los usuarios que tienen 30 años */
SELECT SUM(age) FROM users WHERE age = 30 AND name = 'Myriam'; /* suma las edades de los usuarios que tienen 30 años y se llaman Myriam */
SELECT SUM(age) FROM users WHERE age = 30 OR name = 'Myriam'; /* suma las edades de los usuarios que tienen 30 años o se llaman Myriam */
