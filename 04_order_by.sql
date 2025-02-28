-- Ordena todos los datos de la tabla "users" por edad (ascendente por defecto)
SELECT * FROM users ORDER BY age;

-- Ordena todos los datos de la tabla "users" de manera ascendente
SELECT * FROM users ORDER BY ASC;

-- Ordena todos los datos de la tabla "users" por edad de manera descendente
SELECT * FROM users ORDER BY age DESC;

-- Obtiene todos los datos de la tala "users" con email igual a sara@gmail.com y los orena por edad de manera ascendente
SELECT * FROM users WHERE e = 'sara@gmail.com' ORDER BY age ASC;  

-- Obtiene todos los nombres de la tabla "users" con email igual a sara@gmail.com y los ordena por edad demanera descendente
SELECT * FROM users WHERE email = 'sara@gmail.com' ORDER BY DESC;