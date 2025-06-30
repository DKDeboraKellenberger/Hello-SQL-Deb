/* RIGHT JOIN */
/* Se trae todas las filas de la segunda tabla, pero de la primera tabla sólo trae las filas que concidan en cuanto 
al registro indicado en común */

-- Obtiene todas las filas de la tabla 'dni' junto a las filas de la tabla 'usuario' que tengan un user_id
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los numeros de dni con sus nombres de usuario, siempre que el usuario tenga un user_id
SELECT name, dni_number FROM users
RIGHT JOIN dni 
ON users.user_id = dni.user_id;

-- Obtiene todos los nombres de los usuarios con sus numeros de dni, siempre que el dni tenga un user_id
SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

-- Obtiene todos los lenguajes con los usuarios que lo usan, tengan usuario o no (SI NO TIENEN USUARIO SE COMPLETA CON NULL)
SELECT users.name, languages.name FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;
