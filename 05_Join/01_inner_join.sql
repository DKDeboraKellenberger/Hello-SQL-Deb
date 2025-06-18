
/*  INNER JOIN */

-- Obtiene los datos de los usuarios que tienen dni, mediante el campo en comun 'user_id' que esta en las dos tablas
-- NNER JOIN nunca nos traerá usuarios que no tengan dni, ni dni's que no tengan usuario, SÓLO LOS REGISTROS EN COMUN
SELECT * FROM users 
INNER JOIN dni
ON users.user_id = dni.user_id; -- donde el campo 'user_id' de la tabla 'users' sea = al campo 'user_id' de la tabla 'dni'

-- Realiza un JOIN  de forma incorrecta, ya que no se expresa el campo en común que relaciona las dos tablas
SELECT * FROM users
INNER JOIN dni;

-- A modo de ejemplo de que las querys luego pueden ser un poco mas complejas..
-- Obtiene en nombre y el dni de los usuarios que tienen un dni y los ordena por edad (aún cuando la edad no figurará 
-- luego en el resultado arrojado, ya que el select no es *, sino sólo de 2 campos: name y dni_number)
SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;