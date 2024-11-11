CREATE DATABASE BaseDeDatosDeContacto
USE BaseDeDatosDeContacto;

--TABLA INFORMACION PERSONAL

CREATE TABLE EstadoCivil(
IDEstadoCivil VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(10) NOT NULL
);

CREATE TABLE Genero(
IDGenero VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(10) NOT NULL
);

CREATE TABLE InfPersonal (
IDInfPers INT PRIMARY KEY,
Cedula INT NOT NULL,
Nombre NVARCHAR(50) NOT NULL,
FechaNacimiento DATE,
EstadoCivil VARCHAR (10),
Genero VARCHAR (10),
FOREIGN KEY (EstadoCivil) REFERENCES EstadoCivil(IDEstadoCivil),
FOREIGN KEY (Genero) REFERENCES Genero(IDGenero)
);

--TABLA EMPLEO
CREATE TABLE Empleo (
IDEmpleo VARCHAR(10) PRIMARY KEY,
TrabajoActual VARCHAR(50),
TrabajoAnterior VARCHAR(50) NOT NULL
);

--TABLA DOMICILIO
CREATE TABLE Domicilio (
IDDomicilio VARCHAR(10) PRIMARY KEY,
DireccionAnterior NVARCHAR(50) NOT NULL,
DireccionActual NVARCHAR(50)
);

--TABLA CONTACTO
CREATE TABLE Contacto (
IDContacto VARCHAR(10) PRIMARY KEY,
TelefonoConvencional VARCHAR(12),
Email NVARCHAR(30) NOT NULL,
Celular NVARCHAR(15) NOT NULL
);

--TABLA BIENES INMUEBLES
CREATE TABLE BienesInmuebles (
IDBienesInm VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(15),
Direccion NVARCHAR(20)
);

--TABLA BIENES MUEBLES
CREATE TABLE TipoBienesMuebles (
ID_Tipo_Bienes_Muebles VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(25)
);

CREATE TABLE BienesMuebles (
IDBienesMue VARCHAR(10) PRIMARY KEY,
Placa NVARCHAR(10),
Tipo VARCHAR(10),
FOREIGN KEY (Tipo) REFERENCES TipoBienesMuebles(ID_Tipo_Bienes_Muebles)
);

--TABLA HISTORIAL MIGRATORIO
CREATE TABLE HistorialMigratorio (
IDHistorialMigratorio VARCHAR(10) PRIMARY KEY,
UltimaEntrada NVARCHAR(15) NOT NULL,
UltimaSalida NVARCHAR(15) NOT NULL
);

--TABLA EDUCACION
CREATE TABLE NivelEstudios (
IDNivEst VARCHAR(10) PRIMARY KEY,
Tipo VARCHAR(15) NOT NULL
);

CREATE TABLE Educacion (
IDEdu VARCHAR(10) PRIMARY KEY,
NivelDeEstudios VARCHAR(10) NOT NULL,
LugarDeObtencion NVARCHAR(20) NOT NULL,
FOREIGN KEY (NivelDeEstudios) REFERENCES NivelEstudios(IDNivEst)
);

--TABLA AMIGOS

CREATE TABLE NombreAmigos (
IDNombreAmigos VARCHAR(10) PRIMARY KEY,
NombreAmigos NVARCHAR(50) NOT NULL
);

--aqui creamos la tabla intermedia
CREATE TABLE Amigos (
IDAmigos VARCHAR (10) PRIMARY KEY,
Persona INT NOT NULL,
Amigos VARCHAR (10),
FOREIGN KEY (Persona) REFERENCES InfPersonal(IDInfPers),
FOREIGN KEY (Amigos) REFERENCES NombreAmigos(IDNombreAmigos)
);

SELECT * FROM Amigos

--TABLA FAMILIARES

CREATE TABLE NombreFamiliares (
IDNombreFamiliares VARCHAR(10) PRIMARY KEY,
NombreFamiliares NVARCHAR(50),
);

--aqui creamos la segunda y ultima tabla intermedia
CREATE TABLE Familiares (
IDFamiliares VARCHAR(10) PRIMARY KEY,
Persona INT NOT NULL,
Familiares VARCHAR(10) NOT NULL,
Parentezco VARCHAR(15) NOT NULL,
FOREIGN KEY (Persona) REFERENCES InfPersonal(IDInfPers),
FOREIGN KEY (Familiares) REFERENCES NombreFamiliares(IDNombreFamiliares),
);

CREATE TABLE Relaciones (
IDInfPersonal INT FOREIGN KEY REFERENCES InfPersonal (IDInfPers),
IDEmpleo VARCHAR(10) FOREIGN KEY REFERENCES Empleo (IDEmpleo),
IDDomicilio VARCHAR(10) FOREIGN KEY REFERENCES Domicilio (IDDomicilio),
IDContacto VARCHAR(10) FOREIGN KEY REFERENCES Contacto (IDContacto),
IDBienesInm VARCHAR(10) FOREIGN KEY REFERENCES BienesInmuebles (IDBienesInm),
IDBienesMue VARCHAR(10) FOREIGN KEY REFERENCES BienesMuebles (IDBienesMue),
IDHistorialMigratorio VARCHAR(10) FOREIGN KEY REFERENCES HistorialMigratorio (IDHistorialMigratorio),
IDEdu VARCHAR(10) FOREIGN KEY REFERENCES Educacion (IDEdu),
IDAmigos VARCHAR(10) FOREIGN KEY REFERENCES Amigos (IDAmigos),
IDFamiliares VARCHAR(10) FOREIGN KEY REFERENCES Familiares (IDFamiliares),
IDNivEst VARCHAR(10) FOREIGN KEY REFERENCES NivelEstudios (IDNivEst),
IDGenero VARCHAR(10) FOREIGN KEY REFERENCES Genero (IDGenero),
IDEstadoCivil VARCHAR(10) FOREIGN KEY REFERENCES EstadoCivil (IDEstadoCivil),
);
