/* LEFT JOIN */
/* Se trae los los datos de la primera tabla que tiene en comun con la segunda, pero no trae los datos de la segunda tabla */

-- Selecciona todos los campos de la primera tabla ('users') junto a su dni (lo tenga o no) ya que respetamos a la primera
SELECT *  FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Selecciona solo los nombres de todos los usuarios y su dni (lo tenga o no)
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;