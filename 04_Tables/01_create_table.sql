/* Crea una tabla llamada 'persons' con nombres de columna (atributos) de tipo int, varchar y date, según el caso */
CREATE TABLE persons(
    id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

/*CONSTRAINTS: Restricciones*/

/* NOT NULL */

-- NOT NULL: Obliga a que el campo posea siempre un valor, es decir, nunca puede ser nulo.
CREATE TABLE persons2 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created date
);

/* UNIQUE */

-- UNIQUE: Obliga a que el campo posea siempre valores diferentes, nunca pueden repetirse
CREATE TABLE persons3(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    emmail varchar(50),
    created datetime,
    UNIQUE(id)
);

/* PRIMARY KEY */

-- PRIMARY KEY: Establece al campo como clave primaria para futuras relaciones con otras tablas
CREATE TABLE persons4(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

/* CHECK */
-- CHECK: Establece como una condición para el valor del registro, en este caso, que el campo 'age' debe contener 
-- sólo valores mayores o igual a 18.
CREATE TABLE persons5 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(ID),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

/* DEFAULT */

-- DEFAULT: Establece un valor por defecto en el caso de que no se cargue nada. En este caso, el campo 'created'
-- tendrá la feca del sistema (CURRENT TIMESTAMP())
CREATE TABLE persons6(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

/* AUTO INCREMENT */

-- AUTO INCREMENT: Indica que el campo siempre se va a incrementar en 1 con cada nuevo inserción.
CREATE TABLE persons7(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);