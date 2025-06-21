
/*  INNER JOIN */

-- Obtiene los datos de los usuarios que tienen dni, mediante el campo en comun 'user_id' que esta en las dos tablas
-- NNER JOIN nunca nos traerá usuarios que no tengan dni, ni dni's que no tengan usuario, SÓLO LOS REGISTROS EN COMUN
SELECT * FROM users 
INNER JOIN dni
ON users.user_id = dni.user_id; -- donde el campo 'user_id' de la tabla 'users' sea = al campo 'user_id' de la tabla 'dni'

-- Realiza un JOIN  de forma incorrecta, ya que no se expresa el campo en común que relaciona las dos tablas
SELECT * FROM users
INNER JOIN dni;

-- A modo de ejemplo de que las queries luego pueden ser un poco mas complejas..
-- Obtiene en nombre y el dni de los usuarios que tienen un dni y los ordena por edad (aún cuando la edad no figurará 
-- luego en el resultado arrojado, ya que el select no es *, sino sólo de 2 campos: name y dni_number)
SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

-- Me trae todos los campos de las tablas que coinciden en cuanto al 'company_id'
-- es decir, trae todos los datos de los usarios que tienen compañía
SELECT * FROM users
INNER JOIN companies
ON users.company_id = companies.company_id;

-- Trae solo los nombres de las compañias y los ususarios que trabajan en ellas
SELECT companies.name, users.name FROM users
INNER JOIN companies
ON users.company_id = companies.company_id;

-- Obtiene todos los datos de los usuarios con los leguajes que conocen
SELECT * FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.languages_id = languages.languages_id;

-- aca como la relacion de (N:M), debemos relacionar las tres tablas,las dos originales mas la tercera que creamos 
-- con las relaciones
-- Optimizando, nos arroja solo los nombres de los usuarios y los el lenguaje que conoce
SELECT users.name, languages.name FROM users_languages -- partiendo de la tabla de relaciones
JOIN users ON users_languages.user_id = users.user_id -- se relaciona el campo en comun entre la de relaciones + la tabla 'users'
JOIN languages ON users_languages.languages_id = languages.languages_id; -- se relaciona el campo en comun entre la tabla de 
-- + la tabla 'languages', y asi quedan interconectadas tas tres tablas.