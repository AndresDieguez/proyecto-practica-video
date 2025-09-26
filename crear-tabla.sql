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

ALTER TABLE usuarios CHANGE apellido apellidos VARCHAR(150) null;
ALTER TABLE usuarios ADD COLUMN edad(3) INT null;
ALTER TABLE usuarios MODIFY apellidos VARCHAR(200) not null;