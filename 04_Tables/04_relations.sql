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

/*  relación 1:M tabla usuarios con tabla cédulas, usando la lave foranea en usuarios */
ALTER TABLE users 
ADD CONSTRAINT fk_companies 
FOREIGN KEY(company_id) REFERENCES companies(company_id);

/* Crea una una sub-tabla de la relación N:M entre lengujes de progrmación y usuarios, trae las dos lavves foraneas de esa tablas */
CREATE TABLE users_languages (
	user_language_id INT PRIMARY KEY AUTO_INCREMENT, /* creo un id para la subtabla combinando los nombres de las dos llaves foraneas */
    user_id INT, language_id INT, /* creo variables para almacenra las llaves foraneas */
    FOREIGN KEY (user_id) REFERENCES users (user_id), v/* indico la variable de la llave foranea y de donde viene la llave */
	FOREIGN KEY (language_id) REFERENCES languages (language_id), /* indico la variable de la llave foranea y de donde viene la llave */
    UNIQUE (user_id, language_id) /* indico que no se puede repetir la combinación de las dos llaves foraneas */
);

/*  relación M:M tabla usuarios con tabla cédulas, usando una tabla intermedia */
CREATE TABLE users_cedulas (
    user_id INT,
    cedula_id INT,
    PRIMARY KEY (user_id, cedula_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (cedula_id) REFERENCES cedulas(cedula_id)
    );




