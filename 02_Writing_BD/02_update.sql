UPDATE users 
SET age = '21' /* OJO esto actualiza TODA la tabla OJO */
WHERE user_id = 1; /* Asegúrate de especificar una condición en el WHERE para actualizar solo los registros deseados */

UPDATE users
SET age = '20',
init_date = '2020-01-01' /*  puedo actualizar dos campos */
WHERE user_id = 1;

UPDATE users
SET age = '20',
init_date = '2020-01-01' /*  puedo actualizar dos campos */
WHERE user_id = 1;

UPDATE users    /* puedo actualizar varios registros */
SET age = '20',
init_date = '2020-01-01'
WHERE user_id IN (2, 3, 4);

UPDATE users   /* puedo actualizar varios registros con condicionales*/
SET age = '20',
init_date = '2020-01-01'
WHERE user_id BETWEEN 2 AND 4;

UPDATE users 
SET age = '20',
init_date = '2020-01-01'
WHERE user_id BETWEEN 2 AND 4
AND age < 20;

