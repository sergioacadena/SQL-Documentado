CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    national_id BIGINT UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone BIGINT NOT NULL, /* teléfono siempre con BIGINT tamaño y la posibilidad de incluir números largos sin perder información. */
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, /* TIMESTAMP: YYYY-MM-DD HH:MM:SS - hora y fecha actual del sistema DEFAULT CURRENT_TIMESTAMP  */
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    /* MySQL automáticamente asigna la fecha y hora actuales gracias a DEFAULT CURRENT_TIMESTAMP. */
);
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    author VARCHAR(200) NOT NULL,
    publisher VARCHAR(200),
    genre VARCHAR(50),
    quantity INT DEFAULT 0,/* cantidad de libros de cada tipo */
        /* DECIMAL(10,2)
        10 → Es el número total de dígitos (incluyendo los enteros y los decimales).
         2 → Es la cantidad de dígitos decimales*/
    price DECIMAL(10,2) NOT NULL, /* usar DECIMAL para dinero */
    /* al ingresar unr registro nuevo MySQL automáticamente asigna la fecha y hora actuales gracias a DEFAULT CURRENT_TIMESTAMP. */
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
     /* ON DELETE CASCADE Si eliminas un cliente en la tabla Clientes, 
     todas sus ventas en la tabla Ventas también serán eliminadas automáticamente. */
);

CREATE TABLE Book_Records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);


