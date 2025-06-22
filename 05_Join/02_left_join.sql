/* LEFT JOIN */
/* Se trae los los datos de la primera tabla que tiene en comun con la segunda, pero no trae los datos de la segunda tabla */

-- Selecciona todos los campos de la primera tabla ('users') junto a su dni (lo tenga o no) ya que respetamos a la primera
SELECT *  FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Selecciona todos los nombres de los usuarios y su dni (lo tenga o no)
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--Selecciona todos los dni junto con el nombre de su respectivo usuario (lo tenga o no)
SELECT name, dni_number FROM dni
LEFT JOIN users 
ON users.user_id = dni.user_id;

-- Selecciona todos los usuarios junto con sus lenguajes que maneja (los tenga o no)
SELECT users.name, languages.name FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;

-- Selecciona todos los lenguajes junto con el usuario que lo maneja (lo tenga o no)
SELECT languages.name, users.name FROM languages
LEFT JOIN users_languages ON languages.language_id = users_languages.language_id
LEFT JOIN users ON users_languages.user_id = users.user_id;