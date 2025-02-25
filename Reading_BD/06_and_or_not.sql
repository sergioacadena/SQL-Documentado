SELECT * FROM users WHERE NOT email = 'myriam@gmail.com'; /* trae todos los datos de la tabla usuario donde el email no sea igual a myriam@gmail.com' */
SELECT * FROM users WHERE NOT email = 'myriam@gmail.com' AND age > 30; /* trae todos los datos de la tabla usuario donde el email no sea igual a 'myriam@gmail.com Y LA EDAD SEA MAYOR QUE 30 */
SELECT * FROM users WHERE NOT email = 'myriam@gmail.com' OR age > 30; /* trae todos los datos de la tabla usuario donde el email no sea igual a ''myriam@gmail.com' O LA EDAD SEA MAYOR QUE 30 */

