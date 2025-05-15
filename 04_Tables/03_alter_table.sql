/* ALTER TABLE */

/* ADD */

-- ADD: Añade un nuevo atributo 'surname' a la tabla 'persons8'
ALtER TABLE persons8
ADD surname varchar(150);

/* RENAME */

-- RENAME COLUMN: Renombra el atributo de 'surname' a 'description' en la tabla 'persons8'
ALTER TABLE persons8
RENAME COLUMN surname TO description;

/* MODIFY */

-- MODIFY COLUMN: Modifica el tipo de dato del atributo 'description' en la tabla 'persons8'
ALTER TABLE persons8
MODIFY COLUMN description varcahar(250);

/* DROP COLUMN */

-- DROP COLUM: Elimina el atributo (columna) 'description' en la tabla 'persons8'
ALTER TABLE persons8
DROP COLUMN description;