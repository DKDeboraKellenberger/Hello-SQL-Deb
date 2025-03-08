-- Obtiene el nombre y establece el alias 'Fecha de inicio en programación' a la columna 'init_date' solo en las filas en donde el nombre sea Brais
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE name = 'Brais';

