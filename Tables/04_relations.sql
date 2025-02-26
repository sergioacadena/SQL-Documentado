/*  relación 1:1 tabla usuarios con tabla cédulas, usando la lave foranea en cédulas */
CREATE TABLE cedula (
	cedula_id INT AUTO_INCREMENT PRIMARY KEY,
    cedula_numero INT NOT NULL, UNIQUE(cedula_numero),
    user_id INT, foreign key (user_id) REFERENCES users (user_id) 
    /* 
        - creo el campo user_id INT,
        - le indico que es llave foranea y el nombre del campo foreign key (user_id)
        - llamo a la otra tabla y el campo del la llave foranea REFERENCES users (user_id)
     */

    );


