/* TRIGGERS SQL = DISPARADORES QUE DETACTAN ACCIONES Y EJECUTAN OTRAS ACCIONES 
Un Trigger (disparador) en SQL es un mecanismo que permite ejecutar automáticamente una acción (como insertar, actualizar o eliminar datos) 
cuando ocurre un evento específico en una tabla.
Por ejemplo, cuando se inserta un nuevo registro, se actualiza o se elimina otro registro, se dispara un evento y se ejecuta una acción.
Los triggers son muy útiles para garantizar la integridad de los datos en una base de datos, ya que permiten automatizar tareas que de otro modo
Se pueden usar para validar datos, para hacer auditorias, para hacer copias de seguridad, para hacer logs, etc
son acciones que nosotros programamos cuando se ejecute alguna consulta con SQL
 */

/* Creo un trigger 'CREATE TRIGGER trigger_name' que se ejecute antes de insertar 
un nuevo registro en la tabla usuarios 'BEFORE INSERT ON users' */

/* por cada fila 'FOR EACH ROW' */
delimiter | /* CREO UN DELIMITADOR CON EL CARACTER |, YA QUE EL TRIGGER USA MUCHOS ; Y PUEDEN TENER CONFLICTO */
CREATE TRIGGER tg_email /* creo un trigger tg_email */
BEFORE UPDATE ON users /* creo el triger para la tabla usuario */
FOR EACH ROW  /* el triger de activa por cada fila de la tabla respectiva */
	BEGIN /* declaro el inicio de lo que va a hacer el trigger */
     IF OLD.email <> NEW.email THEN /* progrmación según lo que quiero que haga el trigger si emal es diferente */
		INSERT INTO email_history (user_id, email) /* tabla que actualizo cuando se active el trigger */
          VALUES (OLD.user_id, OLD.email); /* variables actualizadas OLD viejo dato NEW nuevo dato */
    END IF; /* declaro el fin del IF */
END; /*  DECLARO EL FIN DEL FOR EACH */
|
delimiter ; /* CIERRO EL DELIMITADOR NUEVO A CAMBIO DEL ;, YA QUE EL ; DEL IF Y EL FOR TIENE CONFLICTOS */

/* Creo un trigger 'CREATE TRIGGER trigger_name' que se ejecute antes de insertar un nuevo registro en la tabla usuarios 'BEFORE INSERT ON users' */




/* por cada fila 'FOR EACH ROW' */
CREATE TRIGGER trigger_name
BEFORE INSERT ON users  /* antes de insertar un nuevo registro en la tabla usuarios */
FOR EACH ROW /* por cada fila */    
BEGIN /* inicio */
    /* si el nombre del nuevo registro es nulo */
    IF NEW.name IS NULL THEN
        /* lanzo un error */
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El nombre no puede ser nulo';
    END IF;
END; /* fin */
