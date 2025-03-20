/* IN basado en limites que conocemos para no estar usando AND ++++ */
SELECT * FROM users WHERE age IN (20, 30, 40); /* muestra los usuarios que tienen 20, 30 o 40 años */
SELECT * FROM users WHERE age IN (20, 30, 40) AND name = 'Myriam'; /* muestra los usuarios que tienen 20, 30 o 40 años y se llaman Myriam */
SELECT * FROM users WHERE age IN (20, 30, 40) OR name = 'Myriam'; /* muestra los usuarios que tienen 20, 30 o 40 años o se llaman Myriam */
SELECT * FROM users WHERE age IN (20, 30, 40) OR name = 'Myriam' AND email = 'myriam@gmail.com'; /* muestra los usuarios que tienen 20, 30 o 40 años o se llaman Myriam y el email sea	*/
SELECT * FROM users WHERE name IN ('myriam', 'Carlos'); /* muestra los usuarios que se llaman Myriam o Carlos */
SELECT * FROM users WHERE name IN ('myriam', 'Carlos') AND age = 30; /* muestra los usuarios que se llaman Myriam o Carlos y tienen 30 años */
SELECT * FROM users WHERE name IN ('myriam', 'Carlos') OR age = 30; /* muestra los usuarios que se llaman Myriam o Carlos o tienen 30 años */
SELECT * FROM users WHERE name IN ('myriam', 'Carlos') OR age = 30 AND email = 'carlos@email.com'; /* muestra los usuarios que se llaman Myriam o Carlos o tienen 30 años y el email sea

