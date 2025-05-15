/* TIPOS DE RELACIONES */

---------------------------------------------------------------------------------------------------------------------

/* Relaciión 1:1 (uno a uno) Indica que 1 registro de la tabla A se relaciona con 1 registro
de la tabla B y viceversa */

-- El campo user_id es la clave foranea de la tabla 'dni', pero a su vez es la clave primaria de la tabla 'users'
-- Un usuario sólo puede tener 1 dni, un dni sólo puede estar relacionado a 1 usuario
CREATE TABLE dni(
    dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

-----------------------------------------------------------------------------------------------------------------------

/* Relación 1:N (uno a muchos) Indica que un registro en la tabla A puede tener varios registros relacionados
en la tabla B, pero un registro de la tabla B se relaciona solamente con 1 registro de la tabla A */

-- Aquí debemos crear entonces una nueva tabla que sea de 'muchos' (companies)
CREATE TABLE companies(
    company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

-- Para lograr la relación debemos tb agregarle a la tabla 'users' un nuevo 
-- campo 'company_id' (igual a la clave primaria de la tabla users)
ALTER TABLE users
ADD company_id varchar(150);
-- NOTA: para que esto funcione, debo cambiar el tipo de dato de la columna de varchar a int, 
-- ya que para poder luego lograr la relación deben ser del mismo tipo de dato ambas columnas 
-- (fue un error al crear el campo, y una vez creado se debe modificar alterando la tabla)

-- El campo 'company_id' de la tabla 'users' es tambien la clave foranea de la nueva tabla 'companies'
-- (Un empleado sólo puede tener una empresa, pero una empresa puede tener muchos empleados)
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id)
-- Aquí TENGO que crear la foreign key, para terminar de relacionar el campo 'company_id' que aqui sera foranea,
-- pero en la otra tabla es clave primaria.

---------------------------------------------------------------------------------------------------------------------

/* Relación N:M (muchos a muchos): Indica que un registro de la tala A puede relacionarse
con varios registros de la tabla B y viceversa.
Requiere una tabla intermedia o de unión para establecer las relaciones. */

CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);
-- Ahora hay que crear la tabla intermedia 
CREATE TABLE users_languages(    -- el nombre de la tabla intermedia suele ser la conjunción de las dos tablas que relaciona
    users_language_id int AUTO_INCREMENT PRIMARY KEY --En verdad esta PK no nos interesa, pero en toda tabla debe haber una PK
    user_id int,
    language_id int,
    FOREIGN KEY(user_id)REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(user_id)
    UNIQUE(user_id,language_id)
);
 
 -------------------------------------------------------------------------------------------------------------------------

 /* Relación de AUTO-REFERENCIA */
-- Relación que indica  que un registro en la tbla A puede relacionarse
-- con otro registro de la tabla A


