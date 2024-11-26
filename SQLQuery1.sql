CREATE DATABASE BaseDeDatosDeContacto
USE BaseDeDatosDeContacto;

CREATE TABLE InfPersonal (
IDInfPers INT PRIMARY KEY,
Cedula INT,
Nombre NVARCHAR(50),
Apellido NVARCHAR(50),
FechaNacimiento DATE,
EstadoCivil VARCHAR (10) CHECK (EstadoCivil IN ('soltero', 'casado', 'viudo')),
Genero VARCHAR (10) CHECK (Genero IN ('masculino', 'femenino'))
);

CREATE TABLE Empleo (
IDEmpleo INT PRIMARY KEY,
TrabajoActual VARCHAR(50),
TrabajoAnterior VARCHAR(50)
);


CREATE TABLE Domicilio (
IDDomicilio INT PRIMARY KEY,
DireccionAnterior NVARCHAR(50),
DireccionActual NVARCHAR(50)
);


CREATE TABLE Contacto (
IDContacto INT PRIMARY KEY,
TelefonoConvencional VARCHAR(12),
Email NVARCHAR(30),
Celular NVARCHAR(15)
);

CREATE TABLE Bienes (
IDBienes INT PRIMARY KEY,
Nombre_Bien VARCHAR (50),
Tipo VARCHAR(50) CHECK (Tipo IN ('mueble', 'inmueble')),
);

CREATE TABLE HistorialMigratorio (
IDHistorialMigratorio INT PRIMARY KEY,
UltimaEntrada NVARCHAR(15) NOT NULL,
UltimaSalida NVARCHAR(15) NOT NULL
);

CREATE TABLE Educacion (
IDEdu INT PRIMARY KEY,
NivelDeEstudios VARCHAR(50) CHECK (NivelDeEstudios IN ('basico', 'bachiller', 'tercer nivel', 'cuarto nivel')),
LugarDeObtencion NVARCHAR(50),
);

CREATE TABLE Conocidos (
IDCon INT PRIMARY KEY,
IDInfPers INT,
NombreConocido NVARCHAR(50),
Parentezco VARCHAR(50) CHECK (Parentezco IN ('amigo', 'familiar')),
FOREIGN KEY (IDInfPers) REFERENCES InfPersonal(IDInfPers)
);


-- Inserción de datos en la tabla InfPersonal
INSERT INTO InfPersonal (IDInfPers, Cedula, Nombre, Apellido, FechaNacimiento, EstadoCivil, Genero)
VALUES
(101, 1723456789, 'Juan', 'Pérez', '1990-01-15', 'soltero', 'masculino'),
(102, 1809876543, 'María', 'Gómez', '1985-06-20', 'casado', 'femenino'),
(103, 1701234567, 'Luis', 'Martínez', '1992-03-10', 'soltero', 'masculino'),
(104, 1712345678, 'Ana', 'Rojas', '1988-07-25', 'viudo', 'femenino'),
(105, 1908765432, 'Carlos', 'Torres', '1995-12-05', 'casado', 'masculino');

-- Inserción de datos en la tabla Empleo
INSERT INTO Empleo (IDEmpleo, TrabajoActual, TrabajoAnterior)
VALUES
(201, 'Analista de Sistemas', 'Asistente Técnico'),
(202, 'Docente', 'Coordinador Académico'),
(203, 'Ingeniero Civil', 'Residente de Obra'),
(204, 'Médico General', 'Interno Hospitalario'),
(205, 'Contador', 'Auxiliar Contable');

-- Inserción de datos en la tabla Domicilio
INSERT INTO Domicilio (IDDomicilio, DireccionAnterior, DireccionActual)
VALUES
(301, 'Av. Amazonas y Naciones Unidas', 'Av. 6 de Diciembre y Gaspar de Villarroel'),
(302, 'Calle García Moreno y Olmedo', 'Calle Venezuela y Rocafuerte'),
(303, 'Av. Occidental y Diego de Vásquez', 'Av. 10 de Agosto y Rumipamba'),
(304, 'Calle Los Cipreses y El Inca', 'Calle Los Rosales y Eloy Alfaro'),
(305, 'Av. Panamericana Norte y Carapungo', 'Av. Simón Bolívar y Pifo');

-- Inserción de datos en la tabla Contacto
INSERT INTO Contacto (IDContacto, TelefonoConvencional, Email, Celular)
VALUES
(401, '022345678', 'juan.perez@gmail.com', '0987654321'),
(402, '023456789', 'maria.gomez@hotmail.com', '0998765432'),
(403, '024567890', 'luis.martinez@yahoo.com', '0976543210'),
(404, '021234567', 'ana.rojas@outlook.com', '0965432109'),
(405, '025678901', 'carlos.torres@gmail.com', '0954321098');

-- Inserción de datos en la tabla Bienes
INSERT INTO Bienes (IDBienes, Nombre_Bien, Tipo)
VALUES
(501, 'Escritorio', 'mueble'),
(502, 'Casa en Quito', 'inmueble'),
(503, 'Sofá', 'mueble'),
(504, 'Departamento en Guayaquil', 'inmueble'),
(505, 'Cama', 'mueble');

-- Inserción de datos en la tabla HistorialMigratorio
INSERT INTO HistorialMigratorio (IDHistorialMigratorio, UltimaEntrada, UltimaSalida)
VALUES
(501, '2023-10-15', '2023-10-20'),
(502, '2023-09-01', '2023-09-15'),
(503, '2023-11-05', '2023-11-10'),
(504, '2023-08-20', '2023-08-30'),
(505, '2023-12-01', '2023-12-05');

-- Inserción de datos en la tabla Educacion
INSERT INTO Educacion (IDEdu, NivelDeEstudios, LugarDeObtencion)
VALUES
(601, 'basico', 'Unidad Educativa Quito'),
(602, 'bachiller', 'Colegio Nacional Mejia'),
(603, 'tercer nivel', 'Universidad Central'),
(604, 'cuarto nivel', 'Escuela Politecnica Nacional'),
(605, 'bachiller', 'Colegio La Salle');

-- Inserción de datos en la tabla Conocidos
INSERT INTO Conocidos (IDCon, IDInfPers, NombreConocido, Parentezco)
VALUES
(701, 101, 'Pedro López', 'amigo'),
(702, 102, 'Lucía Sánchez', 'familiar'),
(703, 103, 'Carlos Díaz', 'amigo'),
(704, 104, 'Ana Vargas', 'familiar'),
(705, 105, 'José Gómez', 'amigo');

SELECT * FROM InfPersonal
SELECT * FROM Empleo
SELECT * FROM Domicilio
SELECT * FROM Contacto
SELECT * FROM Bienes
SELECT * FROM HistorialMigratorio
SELECT * FROM Educacion
SELECT * FROM Conocidos
