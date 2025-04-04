CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text,
  `release_date` date NOT NULL,
  `duration` int NOT NULL,
  `rating` float NOT NULL,
  `genre_id` int NOT NULL,
  `rating_id` int NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`movie_id`),
  FOREIGN KEY (`genre_id`) REFERENCES `genres`(`genre_id`)
  FOREIGN KEY (`rating_id`) REFERENCES `age_rating`(`rating_id`);
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;	
CREATE TABLE `age_rating` (
    `rating_id` int NOT NULL AUTO_INCREMENT,
    `rating` varchar(10) NOT NULL,
    `age` int NOT NULL,
    `description` varchar(50) NOT NULL,
    PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `languajes`(
    languaje_id INT AUTO_INCREMENT,
    languaje VARCHAR(50) NOT NULL,
    subtitle BOOLEAN NOT NULL,
    dubbing BOOLEAN NOT NULL,
    PRIMARY KEY (languaje_id)
)

CREATE TABLE movies_languajes(
    movie_id INT,
    languaje_id INT,
    PRIMARY KEY (movie_id, languaje_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (languaje_id) REFERENCES languajes(languaje_id)
)
CREATE TABLE `showing_time` (
  `showing_time_id` int NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY (`showing_time_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `movies_showing_time` (
  `movie_id` int NOT NULL,
  `showing_time_id` int NOT NULL,
    `room_id` int NOT NULL,
  PRIMARY KEY (`movie_id`, `showing_time_id`),
  FOREIGN KEY (`room_id`) REFERENCES `rooms`(`room_id`),
  FOREIGN KEY (`movie_id`) REFERENCES `movies`(`movie_id`),
  FOREIGN KEY (`showing_time_id`) REFERENCES `showing_time`(`showing_time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_number` int NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `review_and_rating`(
    `review_id` int NOT NULL AUTO_INCREMENT,
    `movie_id` int NOT NULL,
    `customer_id` int NOT NULL,
    `rating` int NOT NULL,
    `review` text,
    PRIMARY KEY (`review_id`),
    FOREIGN KEY (`movie_id`) REFERENCES `movies`(`movie_id`),
    FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`)
);
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `seating` (
    `seat_id` int NOT NULL AUTO_INCREMENT,
    `room_id` int NOT NULL,
    `row_number` int NOT NULL,
    `seat_number` int NOT NULL,
    `is_reserved` boolean NOT NULL DEFAULT false,
    PRIMARY KEY (`seat_id`),
    FOREIGN KEY (`room_id`) REFERENCES `rooms`(`room_id`)
)
CREATE TABLE `tickets` (
    `ticket_id` int NOT NULL AUTO_INCREMENT,
    `customer_id` int NOT NULL,
    `showing_time_id` int NOT NULL,
    `seat_id` int NOT NULL,
    `payment_method` varchar(50) NOT NULL,
    `total_amount` decimal(10, 2) NOT NULL,
    `purchase_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ticket_id`),
    FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`),
    FOREIGN KEY (`showing_time_id`) REFERENCES `showing_time`(`showing_time_id`),
    FOREIGN KEY (`seat_id`) REFERENCES `seating`(`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `employees` (
    `employee_id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `role` varchar(50) NOT NULL,
    `work_schedule` varchar(100) NOT NULL,
    `email` varchar(100) NOT NULL,
    `phone_number` varchar(20) NOT NULL,
    FOREIGN KEY (`role`) REFERENCES `roles`(`role_id`),
    PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `roles` (
    `role_id` int NOT NULL AUTO_INCREMENT,
    `role_name` varchar(50) NOT NULL,
    PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Estás desarrollando un sistema para la gestión de cines, en el que se administran múltiples salas, películas y la venta de boletos. Se necesita llevar un control detallado de las funciones programadas, los asientos disponibles, los clientes y los pagos realizados.

📌 Requerimientos del Software
1️⃣ Gestión de Películas 🎥

Cada película tiene un título, duración, clasificación por edad, género y un idioma.

Se deben almacenar los horarios en los que se proyecta cada película en cada sala.

Se debe llevar un registro de las calificaciones y reseñas que dejan los clientes sobre las películas.

2️⃣ Gestión de Salas y Asientos 🎭

Un cine tiene varias salas de proyección, cada una con una cantidad específica de asientos.

Cada asiento en una sala tiene una fila y un número asignado.

Se debe controlar qué asientos están reservados o disponibles en cada función.

3️⃣ Gestión de Clientes y Reservas 👥

Los clientes deben registrarse con su nombre, correo y número de teléfono.

Pueden comprar boletos en línea o en la taquilla del cine.

Un cliente puede comprar varios boletos en una sola transacción.

Se debe almacenar la fecha y el método de pago de cada compra.

4️⃣ Gestión de Empleados y Roles 🏢

Debe existir un registro de empleados del cine con nombre, cargo y horario laboral.

Los empleados pueden tener roles como administrador, cajero o proyeccionista.

Solo los administradores pueden agregar nuevas películas o modificar la cartelera.

5️⃣ Manejo de Métodos de Pago y Facturación 💳

Se deben permitir pagos con tarjeta de crédito/débito y efectivo.

Cada venta debe generar un número de factura único.

Se debe registrar el total pagado, la fecha y el medio de pago utilizado. */