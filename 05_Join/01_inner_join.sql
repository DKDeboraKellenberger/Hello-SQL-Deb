
/*  INNER JOIN */

-- Obtiene los datos de los usuarios que tienen dni, mediante el campo en comun 'user_id' que esta en las dos tablas
SELECT * FROM users 
INNER JOIN dni
ON users.user_id = dni.user_id; -- donde el campo 'user_id' de la tabla 'users' sea = al campo 'user_id' de la tabla 'dni'

-- Realiza un JOIN  de forma incorrecta, ya que no se expresa el campo en común que relaciona las dos tablas
SELECT * FROM users
INNER JOIN dni;