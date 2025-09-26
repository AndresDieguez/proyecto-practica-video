/*
TIPOS DE DATOS COMUNES EN SQL MAS USADOS:
- INT: Números enteros.
- VARCHAR(n): Cadenas de texto de longitud variable, donde 'n' es el número máximo de caracteres.
- TEXT: Cadenas de texto de longitud variable, sin límite específico.
- DATE: Fecha (año, mes, día).
- TIMESTAMP: Fecha y hora.
- BOOLEAN: Valores verdadero/falso.


*/

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

RENAME TABLE usuarios TO clientes;
RENAME TABLE clientes TO usuarios;
ALTER TABLE usuarios CHANGE apellido apellidos VARCHAR(150) null; /* renombrar una columna CHANGE nombre_antiguo nombre_nuevo tipo */
ALTER TABLE usuarios MODIFY apellidos VARCHAR(200) not null; /* Modificar columna longitud de apellidos a 200 */
ALTER TABLE usuarios ADD COLUMN edad INT null; /* Agregar columna edad */
ALTER TABLE usuarios DROP COLUMN fecha_creacion; /* Eliminar columna fecha_creacion */
ALTER TABLE usuarios ADD CONSTRAINT email_unico UNIQUE (email); /* Agregar restricción de unicidad a la columna email */