
/* TRANSACTION
Una transacción en SQL es un conjunto de operaciones que se ejecutan como una unidad atómica de trabajo. 
Esto significa que todas las operaciones 
dentro de la transacción deben completarse con éxito; de lo contrario, ninguna de ellas tendrá efecto.
Las transacciones son útiles para garantizar la integridad de los datos y evitar problemas de concurrencia.
En SQL, las transacciones se pueden iniciar con la instrucción START TRANSACTION y confirmar o deshacer con las instrucciones COMMIT y ROLLBACK, respectivamente.
Ejemplo de una transacción en SQL:

 */


START TRANSACTION;  -- Iniciar una transacción

UPDATE cuentas SET saldo = saldo - 50000 WHERE id = 1; -- Retirar dinero de la cuenta
UPDATE supermercado SET total_ventas = total_ventas + 50000 WHERE id = 1; -- Registrar la venta

IF @@ERROR > 0 THEN -- Verificar si hubo un error
    ROLLBACK;  -- Deshacer todo si hay un problema
ELSE
    COMMIT;  -- Confirmar la transacción si todo salió bien
END IF;


/* Ejemplo de una transacción en SQL para transferir dinero entre cuentas: */

START TRANSACTION;  -- Inicia la transacción

UPDATE cuentas SET saldo = saldo - 1000 WHERE id = 1;  -- Resta 1000 a la cuenta origen
UPDATE cuentas SET saldo = saldo + 1000 WHERE id = 2;  -- Suma 1000 a la cuenta destino

COMMIT;  -- Confirma la transacción

/* Si ocurre un error en alguna de las operaciones, se puede deshacer la transacción con la instrucción ROLLBACK: */

START TRANSACTION;

UPDATE cuentas SET saldo = saldo - 1000 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 1000 WHERE id = 2;

IF @@ERROR > 0 THEN  -- Si hay un error, deshacer cambios
    ROLLBACK;
ELSE
    COMMIT;
END IF;


/* También se pueden utilizar puntos de guardado (SAVEPOINT) para deshacer solo parte de la transacción en caso de error: */
START TRANSACTION;  -- Iniciar la transacción   
UPDATE cuentas SET saldo = saldo - 1000 WHERE id = 1;  -- Restar 1000 a la cuenta origen
SAVEPOINT antes_de_sumar;  -- Guardar un punto de guardado
UPDATE cuentas SET saldo = saldo + 1000 WHERE id = 2;  -- Sumar 1000 a la cuenta destino
IF @@ERROR > 0 THEN
    ROLLBACK TO antes_de_sumar;  -- Deshacer solo la operación de sumar
ELSE
    COMMIT;  -- Confirmar la transacción
END IF;
-- Si hay un error, volvemos al punto antes_de_sumar
ROLLBACK TO antes_de_sumar;
COMMIT; -- Confirmar la transacción



/* Ejemplo de una transacción en SQL para transferir dinero entre cuentas con un procedimiento almacenado: */

DELIMITER //
CREATE PROCEDURE p_transferir_dinero(IN origen INT, IN destino INT, IN cantidad DECIMAL(10, 2))
BEGIN
    START TRANSACTION;  -- Iniciar la transacción
    UPDATE cuentas SET saldo = saldo - cantidad WHERE id = origen;  -- Restar la cantidad de la cuenta origen
    UPDATE cuentas SET saldo = saldo + cantidad WHERE id = destino;  -- Sumar la cantidad a la cuenta destino
    IF @@ERROR > 0 THEN
        ROLLBACK;  -- Deshacer la transacción si hay un error
    ELSE
        COMMIT
    END IF;
END //
DELIMITER ;


