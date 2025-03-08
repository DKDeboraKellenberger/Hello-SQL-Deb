/* INSERT INTO agrega nuevos registrosa la base de datos */

-- Inserta un registro con identificador, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) -- Aquí insertamos entre () los campos a los que vamos a querer agregar registros 
VALUES (8, 'María', 'López'); -- Aquí agregamos, respetando el orden, los registros de queremos agregar

-- Inserta un regsitro con nombre y apellidos en la tabla "users"
INSERT INTO users (name, surname) 
VALUES ('Paco', 'Pérez');

-- Inserta un registro con identificador no correlativo, nombre y apellido
INSERT INTO (user_id, name, surname)
VALUES (11, 'El', 'Merma');