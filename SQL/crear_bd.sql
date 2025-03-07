-- Crear tablas

CREATE TABLE IF NOT EXISTS Ciudadanos (
    id_ciu INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    municipio_id INT,
    fecha_nacimiento DATE,
    ingresos_mensuales DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Municipios (
    id_muni INT PRIMARY KEY,
    nombre_municipio VARCHAR(50),
    region VARCHAR(50),
    nivel_infraestructura INT
);

-- Insertar datos ejemplo

INSERT INTO Municipios (id_muni, nombre_municipio, region, nivel_infraestructura) VALUES (10001,'Pan de Azucar', "Maldonado", 12);
INSERT INTO Municipios (id_muni, nombre_municipio, region, nivel_infraestructura) VALUES (10002,'Atlántida', "Canelones", 8);
INSERT INTO Municipios (id_muni, nombre_municipio, region, nivel_infraestructura) VALUES (10003,'Santa Clara','Centro',10);
INSERT INTO Municipios (id_muni, nombre_municipio, region, nivel_infraestructura) VALUES (10004,'Piedras Blancas','Centro',4);

INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (52348910,'Santiago','Diaz',10004,'1985-06-30',12000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (63478219,'Pedro','Ruiz',10003,'1993-01-25',7500.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (64859758, 'Armando', 'Hernandez', 10001, '1999-01-05', 12000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (78954123, 'Maria', 'Gonzalez', 10001, '1992-06-30', 14000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (58413265, 'Luis', 'Ramirez', 10002, '1990-02-14', 16000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (41567892,'Pedro','Soto',10005,'1998-11-20',2000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (69874521, 'Sofia', 'Sanchez', 10003, '2001-09-09', 7000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (75481239, 'Diego', 'Torres', 10004, '1980-05-18', 22000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (28765432,'Pedro','Hernandez',10004,'1995-07-15',5000.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (84596321, 'Ana', 'Castillo', 10001, '1995-12-10', 12500.00);
INSERT INTO Ciudadanos (id_ciu, nombre, apellido, municipio_id, fecha_nacimiento, ingresos_mensuales) VALUES (12345678, 'Pedro', 'Rodriguez', 10001, '1998-07-15', 15000.00);
