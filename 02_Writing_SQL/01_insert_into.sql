INSERT INTO users (user_id, name, surname) VALUES (7, 'Maria', 'lopez');
/* Inserta una nueva columna, si las variables estan marcadas como nul, no hay problema con que no añada dato en VALUES */
INSERT INTO users (user_id, name, surname) VALUES (7, 'Maria', 'lopez');/* puedo insertar sin id, y la bd lo auto incrementa */
/* tambien me puedo saltar identificadores, por ejemplo, si el max id es 8 puedo insertar el 10 o mas, saltando uno */
/* no puedo insertar identificadores repetidos, si ya existe, genera error, yqque es único */
INSERT INTO users (user_id, name, surname) VALUES (8, 'Juan', NULL);
INSERT INTO users (user_id, name, surname) VALUES (9, NULL, 'Garcia');

INSERT INTO users (user_id, name, surname) VALUES (10, NULL, NULL);

