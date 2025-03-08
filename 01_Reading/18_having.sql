/* El HAVING se utiliza para aplicar condiciones a los grupos de resultados agregados (SUM, COUNT, MAX...), 
ya que con las funciones agregadas NO se puede utilizar la cláusula WHERE 
El HAVING filtra en una consulta que ya se agrupó con un GROUP BY*/

-- Si quiero contar las filas de las edades y luego filtrar ese resultado para ver solo aquellos
-- grupos con mas de 3 registros: 
-- Se selecciona de la tabla users, se cuentan las edades y se agrupan por edades, luego se cuentan esos grupos y se
-- recuperan aquellos registros que tienen en el grupo mas de 3 registros.
SELECT COUNT(age) FROM users GROUP BY age HAVING COUNT(*) > 3;
/* La última parte, HAVING COUNT(*) > 3 filtra de los grupos por edad, aquellos registros que tienen mas de 3 filas.