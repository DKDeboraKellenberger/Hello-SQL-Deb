-- Obtiene todos los datos de la tabla "users" que contienen un email con el texto "gmail.com" en su parte final
SELECT * FROM users WHERE email LIKE "%gamil.com";

-- Obtiene todos los datos de la tabla "users" que contienen un email con el texto "sara" en su parte inical
SELECT * FROM users WHERE email LIKE "sara%";

-- Obtiene todos los datos de la tabla "users" que contienen un email con una arroba
SELECT * FROM users WHERE email LIKE "%@%";
