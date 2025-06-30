/* LEFT JOIN */
/* Se trae todas las filas de la primera tabla, pero de la segunda tabla sólo trae las filas que concidan en cuanto 
al registro indicado en común*/

-- Selecciona todos las filas de la primera tabla 'users' junto con los datos que coincidan de la tabla 'dni' segun el user_id
-- Es decir, me tare todas las filas de users, y de dni traerá sólo las filas que tengan un user_id
SELECT *  FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Selecciona todos los nombres de los usuarios y su nro de dni unicamente de los registros que tengan un user_id
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--Selecciona todos los dni junto con el nombre de su respectivo usuario si es que tiene un user_id
SELECT name, dni_number FROM dni
LEFT JOIN users 
ON users.user_id = dni.user_id;

-- Selecciona todos los usuarios junto con los lenguajes que maneja, los tenga
SELECT users.name, languages.name FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;

-- Selecciona todos los lenguajes junto con el usuario que lo maneja (lo tenga o no)
SELECT languages.name, users.name FROM languages
LEFT JOIN users_languages ON languages.language_id = users_languages.language_id
LEFT JOIN users ON users_languages.user_id = users.user_id;