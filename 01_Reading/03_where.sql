/* ACLARACIÓN: La cláusula WHERE no pude ir con funciones de agregación, 
para eso es que se incorporó la cláusula HAVING a SQL*/

-- Filtra todos los datos de la tabla 'users' con edad igual a 15
SELECT * FROM users WHERE age = 15;

-- Filtra todos los nombres de la tabla "users" con edad igual a 15
SELECT name FROM users WHERE age = 15;

-- Filtra todos los nombres distintos de la tala "users" con edad igual a 15
SELECT DISTINCT name FROM users WHERE age = 15;

-- Filtra todas las edades distintas de la tabla "users" con edad igual a 15
SELECT DISTINCT age FROM users WHERE age = 15;
