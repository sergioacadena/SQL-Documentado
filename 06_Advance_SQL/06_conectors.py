import mysql.connector # Se importa el conector de MySQL para Python.

#usar paramétros tipo %s para que lo que recibo no sea una consulta SQL a mi bd por parte del usuario

def print_user(user): # Se define una función que recibe un nombre de usuario como parámetro, python funcion= def.

    #Los siguientes datos de conexión se pueden obtener en MySQL Workbench:Database -> Manage Connections -> Selecciono la BD 
    config = {
        "host": "localhost",  # Dirección del servidor donde está alojada la base de datos
        "port": 3306,  # Puerto en el que escucha MySQL (por defecto es 3306)
        "database": "hello_mysql",  # Nombre de la base de datos a la que se desea conectar
        "user": "root",  # Usuario de MySQL con el que se realiza la conexión
        "password": "root"  # Contraseña del usuario de MySQL 
    }

    #el siguiente es un ejemplo de la misma configuración del a conexion con un servidor en la nuve de https://www.clever-cloud.com/
    """ config = {
        "host": "bdcll3b6dj3lwbeqzni1-mysql.services.clever-cloud.com",  # Dirección del servidor donde está alojada la base de datos
        "port": 3306,  # Puerto en el que escucha MySQL (por defecto es 3306)
        "database": "bdcll3b6dj3lwbeqzni1",  # Nombre de la base de datos a la que se desea conectar
        "user": "ulxifmazxmwnqnne",  # Usuario de MySQL con el que se realiza la conexión
        "password": "gROgp0Pb8HcGVPerp2bX"  # Contraseña del usuario de MySQL 
    } """

    # Se establece una conexión con la base de datos MySQL usando los parámetros definidos en config.
    conexion = mysql.connector.connect(**config)

    """ 
    El cursor es un objeto que permite ejecutar consultas SQL en la base de datos.
    Con este cursor, se pueden realizar operaciones como SELECT, INSERT, UPDATE, DELETE, entre otras. 
    """
    cursor = conexion.cursor()  # Se crea un cursor para interactuar con la base de datos.

    # Se define la consulta SQL que se ejecutará en la base de datos MySQL.
    query = "SELECT * FROM users WHERE name=%s;" #%s esto lo que hace es que el dato enviado se tome cómo dato y no como SQL, para que no inyecten código
    cursor.execute(query, (user,)) # Se ejecuta la consulta en la base de datos MySQL. user se reemplaza en %s para que no inyecten código SQL desde el frontend
    resultados = cursor.fetchall()  # Se obtienen todos los resultados de la consulta.

    # Se recorren los resultados obtenidos de la consulta y se imprimen uno por uno.
    for resultado in resultados:  
        print(resultado)  

    cursor.close()  # Se cierra el cursor para liberar recursos.
    conexion.close()  # Se cierra la conexión con la base de datos MySQL.

print_user("Sergio")