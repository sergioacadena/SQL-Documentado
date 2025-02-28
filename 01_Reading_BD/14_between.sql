/* Between */
/*  */
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000; /* muestra los empleados que tienen un salario entre 10000 y 20000 */
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000 AND name = 'Myriam'; /* muestra los empleados que tienen un salario entre 10000 y 20000 y se llaman Myriam */
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000 OR name = 'Myriam'; /* muestra los empleados que tienen un salario entre 10000 y 20000 o se llaman Myriam */
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000 OR name = 'Myriam' AND email = 'carlos@gmail.com'; /* muestra los empleados que tienen un salario entre 10000 y 20000 o se llaman Myriam y el email sea */
  