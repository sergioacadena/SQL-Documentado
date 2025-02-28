/* FULL JOIN */
/* me trae todo lo de la trabla derecha e izquierda, lo hago igual que el join, pero espero resultados de la derecha e izquierda */


SELECT * FROM users 
FULL JOIN cedula
ON users.user_id = cedula.user_id;

