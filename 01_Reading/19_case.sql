/* El operador CASE es un condicional similar a lo que seria un "IF-THE-ELSE" en Python.
En su sintáxis, se debe poner la coma luego de cada sentencia, y se debe terminar con un "END",
ya que sino arrojará error de sintáxis. */

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de cadenas de texto según el 
-- valor de la edad.
SELECT *, -- recordar la coma. 
CASE   -- en el caso ...
    WHEN age > 18 THEN 'Es mayor de 18'   -- ... de que la edad sea > a 18, poner 'es mayor de 18'
    WHEN age = 18 THEN 'Es mayor de edad'   --  ... de que la edad sea igual a 18...
    ELSE 'Es menor de edad'   -- ... sino, poner...
END AS '¿Es mayor de edad?'  -- Termina el condicional, pero le creamos el alias a la nueva columna
FROM users;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de valores booleanos según el 
-- valor de la edad
SELECT *,
CASE   
    WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;