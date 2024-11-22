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
IDEmpleo VARCHAR(10) PRIMARY KEY,
TrabajoActual VARCHAR(50),
TrabajoAnterior VARCHAR(50)
);

CREATE TABLE Domicilio (
IDDomicilio VARCHAR(10) PRIMARY KEY,
DireccionAnterior NVARCHAR(50),
DireccionActual NVARCHAR(50)
);

CREATE TABLE Contacto (
IDContacto VARCHAR(10) PRIMARY KEY,
TelefonoConvencional VARCHAR(12),
Email NVARCHAR(30),
Celular NVARCHAR(15)
);

CREATE TABLE BienesInmuebles (
IDBienesInm VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(15),
Direccion NVARCHAR(20)
);

CREATE TABLE BienesMuebles (
IDBienesMue VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(50) CHECK (Tipo IN ('automoviles', 'motocicletas', 'camiones')),
Placa NVARCHAR(10),
);

CREATE TABLE HistorialMigratorio (
IDHistorialMigratorio VARCHAR(10) PRIMARY KEY,
UltimaEntrada NVARCHAR(15) NOT NULL,
UltimaSalida NVARCHAR(15) NOT NULL
);

CREATE TABLE Educacion (
IDEdu VARCHAR(10) PRIMARY KEY,
NivelDeEstudios VARCHAR(10) CHECK (NivelDeEstudios IN ('basico', 'bachiller', 'tercer nivel', 'cuarto nivel')),
LugarDeObtencion NVARCHAR(20),
);
