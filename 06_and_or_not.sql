-- Obtiene todos los datos de la tabla "users" con email distinto a sara@gmail.com
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

-- Obtiene todos los datos de la tabla "users" con email distinto a sara@gmail.com y con edad igual a 15
SELECT * FROM users WHERE NOT email = sara@gmail.com AND age = 15;

-- Obtiene todos los datos de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = sara@gmail.com OR age = 15;
