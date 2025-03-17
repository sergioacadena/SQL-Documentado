/* indice acelera la busqueda 
en caso de que haya muchos datos, se puede acelerar la busqueda con indices
pero la tabla va a pesar mas

*/
/* los indices hacen que la busqueda vaya directo al dato, asigna el mismo valor del indice, pero al hacer consultas
no busca fila por fila, sino que va diercto a al dato 
Divide el conjunto en partes (Búsqueda binaria).
CÓMO EL INDICE DE UN LIBREO, VOY A TEMA QUE QUIERO VER SIN PASAR POR CADA PÁGINA

Si buscas user_id = 15, la base de datos:
Compara con 10 (punto medio).
Como 15 > 10, descarta los menores.
Luego, compara con 15 y encuentra el valor rápidamente.
Mejora el renidimiento y acelera la busqueda, pero la tabla es mas pesada
ESCRITURA MAS LENTA, LECTURA MAS RÁPIDA
Estudiar bien la tablas para decidir si se crea o no el inidce, mejor con datos masivos
cundo se hace una consulta simpre por un mismo dato, por ejemplo nombre
USARR CUANDO SE HACEN MUCHAS CONSLTAS ASOCIADAS A UN DATO EN PARTICULAR 
*/

/* creo un indice 'CREATE INDEX idx_name' para el nombre '(name)' en la tabla usuarios 'ON users' */
CREATE INDEX idx_name ON users(name);

/* creo un indice 'CREATE INDEX idx_company_id' para el id de la empresa '(company_id)' en la tabla usuarios 'ON users' */
CREATE INDEX idx_company_id ON users (company_id);

/* creo un indice 'CREATE INDEX idx_user_id' para el id del usuario '(user_id)' en la tabla usuarios 'ON users' */
CREATE INDEX idx_user_id ON users (user_id);

/* creo un indice 'CREATE INDEX idx_name_surname' para el nombre y apellido '(name, surname)' en la tabla usuarios 'ON users' */
CREATE INDEX idx_name ON users(name, surname);

/* creo un indice unico que no se debe repetir 'UNIQUE' 'CREATE INDEX idx_name' para el nombre '(name)' en la tabla usuarios 'ON users' */
CREATE UNIQUE INDEX idx_name ON users(name);




