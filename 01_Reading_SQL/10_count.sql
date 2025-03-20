SELECT COUNT(age) FROM users; /* cuenta los usuarios que tienen edad, no la suma de las edades, solo lo que tienen edad */
SELECT COUNT(*) FROM users; /* cuenta todos los usuarios */
SELECT COUNT(*) FROM users WHERE age > 30; /* cuenta los usuarios que tienen mas de 30 años */
SELECT COUNT(*) FROM users WHERE age < 30; /* cuenta los usuarios que tienen menos de 30 años */
SELECT COUNT(*) FROM users WHERE age = 30; /* cuenta los usuarios que tienen 30 años */
SELECT COUNT(*) FROM users WHERE age = 30 AND name = 'Myriam'; /* cuenta los usuarios que tienen 30 años y se llaman Myriam */  
SELECT COUNT(*) FROM users WHERE age = 30 OR name = 'Myriam'; /* cuenta los usuarios que tienen 30 años o se llaman Myriam */
