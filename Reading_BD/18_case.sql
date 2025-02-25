/* es cómo un swetch case */
SELECT *,
CASE
	WHEN age >= 30 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;
 /* El case me permite añadir condiciones a la consulta SELECT y un resultado según si se cumple WHEN o no ELSE */

SELECT *,
CASE
	WHEN age >= 30 THEN true
    ELSE false
END AS agetext
FROM users;
/* En este caso el resultado es un booleano */

SELECT *,
CASE
    WHEN age >= 30 THEN 'Es anciano'
    WHEN age >= 18 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
    WHEN age >= 18 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;
/* En este caso se pueden añadir varios WHEN para añadir más condiciones */

