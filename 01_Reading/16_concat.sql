-- Concatena en una sola columna los campos 'nombre' y 'apellido'
SELECT CONCAT('Nombre:', name, 'Apellido:', surname) FROM users;

-- Concatena en una sola columna los campos 'nombre' y 'apellido' y le establece el alias 'Nombre completo'
SELECT CONCAT('Nombre:', name, 'Apellido:', surname) AS "Nombre completo" FROM users;