-- Obtiene todos los datos de la tabla "users" con emailo nulo
SELECT * FROM users WHERE email IS NULL;

-- Obtiene todos los datos de la tabla "users" con email no nulo
SELECT * FROM users WHERE email IS NOT NULL;

-- Obtiene todos los datos de la tabla "users" con email no nulo y edad igual a 15
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;


/* IFNULL(XX,XX): Se utiliza para manejar los valores nulos. 
El primer parametro es el valor que queremos verificar si es nulo,
El segundo parámetro es el valor de reemplazo en elcaso de que el primerparámetro sea nulo. */

-- Obtiene el nombre, apellido y edad de la tabla "users", y si la edad es nula la muestra como 0
SELECT name, surname, IFNULL(age,0) age AS age FROM users; 