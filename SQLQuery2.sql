INSERT INTO InfPersonal (IDInfPers, Cedula, Nombre, FechaNacimiento) VALUES
(1, 12345678, 'Carlos Perez', '1985-05-12'),
(2, 23456789, 'Ana Gomez', '1990-11-03'),
(3, 34567890, 'Juan Ramirez', '1982-02-25'),
(4, 45678901, 'Maria Lopez', '1993-03-12'),
(5, 56789012, 'Pedro Martinez', '1995-06-01'),
(6, 67890123, 'Laura Fernandez', '1988-10-22'),
(7, 78901234, 'Jose Garcia', '1992-04-18'),
(8, 89012345, 'Sofia Alvarez', '1994-01-10'),
(9, 90123456, 'Ricardo Torres', '1987-12-05'),
(10, 10234567, 'Elena Herrera', '1991-07-01');
SELECT * FROM InfPersonal;
INSERT INTO Empleo (IDEmpleo, TrabajoAnterior, TrabajoActual) VALUES
('EMP001', 'Vendedor', 'Gerente de Ventas'),
('EMP002', 'Asistente Administrativo', 'Coordinadora de Recursos Humanos'),
('EMP003', 'Cajero', 'Supervisor de Tienda'),
('EMP004', 'Recepcionista', 'Asistente Ejecutiva'),
('EMP005', 'Operador de Produccion', 'Jefe de Operaciones'),
('EMP006', 'Diseñadora Grafica', 'Directora de Arte'),
('EMP007', 'Analista de Datos', 'Cientifico de Datos'),
('EMP008', 'Desarrolladora Web Junior', 'Desarrolladora Web Senior'),
('EMP009', 'Contador', 'Jefe de Finanzas'),
('EMP010', 'Maestra de Primaria', 'Coordinadora Academica');
SELECT * FROM Empleo;
INSERT INTO Domicilio (IDDomicilio, DireccionAnterior, DireccionActual) VALUES
('DOM001', 'Calle 10 #45-20, Ciudad A', 'Avenida 5 #12-30, Ciudad B'),
('DOM002', 'Calle 22 #33-12, Ciudad C', 'Carrera 7 #28-15, Ciudad D'),
('DOM003', 'Avenida 3 #60-50, Ciudad E', 'Calle 4 #20-18, Ciudad F'),
('DOM004', 'Carrera 15 #10-20, Ciudad G', 'Avenida 9 #32-40, Ciudad H'),
('DOM005', 'Calle 8 #5-30, Ciudad I', 'Calle 12 #8-22, Ciudad J'),
('DOM006', 'Avenida 11 #22-16, Ciudad K', 'Carrera 1 #10-11, Ciudad L'),
('DOM007', 'Carrera 6 #45-12, Ciudad M', 'Calle 7 #33-44, Ciudad N'),
('DOM008', 'Avenida 13 #9-27, Ciudad O', 'Avenida 2 #6-15, Ciudad P'),
('DOM009', 'Calle 18 #3-50, Ciudad Q', 'Calle 5 #12-20, Ciudad R'),
('DOM010', 'Carrera 10 #55-30, Ciudad S', 'Calle 25 #8-33, Ciudad T');
SELECT * FROM Domicilio;
INSERT INTO Contacto (IDContacto, TelefonoConvencional, Email, Celular) VALUES
('CON001', '555-1234', 'carlos@gmail.com', '300-123-4567'),
('CON002', '555-5678', 'ana@hotmail.com', '300-234-5678'),
('CON003', '555-9012', 'juan@yahoo.com', '300-345-6789'),
('CON004', '555-3456', 'maria@gmail.com', '300-456-7890'),
('CON005', '555-7890', 'pedro@outlook.com', '300-567-8901'),
('CON006', '555-2345', 'laura@gmail.com', '300-678-9012'),
('CON007', '555-6789', 'jose@hotmail.com', '300-789-0123'),
('CON008', '555-0123', 'sofia@yahoo.com', '300-890-1234'),
('CON009', '555-4567', 'ricardo@gmail.com', '300-901-2345'),
('CON010', '555-8901', 'elena@outlook.com', '300-012-3456');
SELECT * FROM Contacto;
INSERT INTO BienesInmuebles (IDBienesInm, Tipo, Direccion) VALUES
('BI001', 'Casa', 'Calle 10 #45-20'),
('BI002', 'Apartamento', 'Avenida 5 #12-30'),
('BI003', 'Oficina', 'Calle 22 #33-12'),
('BI004', 'Local', 'Carrera 7 #28-15'),
('BI005', 'Casa', 'Avenida 3 #60-50'),
('BI006', 'Apartamento', 'Calle 4 #20-18'),
('BI007', 'Oficina', 'Carrera 15 #10-20'),
('BI008', 'Local', 'Avenida 9 #32-40'),
('BI009', 'Casa', 'Calle 8 #5-30'),
('BI010', 'Apartamento', 'Calle 12 #8-22');
INSERT INTO BienesMuebles (IDBienesMue, Tipo, Placa) VALUES
('BM001', 'Carro', 'ABC1234'),
('BM002', 'Moto', 'MOT5678'),
('BM003', 'Camioneta', 'CAM9012'),
('BM004', 'Carro', 'CAR3456'),
('BM005', 'Moto', 'MOT7890'),
('BM006', 'Cami�n', 'TRK2345'),
('BM007', 'Carro', 'CAR6789'),
('BM008', 'Bicicleta', 'BIC1234'),
('BM009', 'Carro', 'CAR8901'),
('BM010', 'Moto', 'MOT3456');
INSERT INTO HistorialMigratorio (IDHistorialMigratorio, UltimaEntrada,
UltimaSalida) VALUES
('HM001', '2024-05-12', '2024-07-15'),
('HM002', '2023-11-03', '2024-01-10'),
('HM003', '2024-02-25', '2024-06-17'),
('HM004', '2024-03-12', '2024-08-05'),
('HM005', '2024-06-01', '2024-09-20'),
('HM006', '2023-10-22', '2024-02-14'),
('HM007', '2024-04-18', '2024-07-30'),
('HM008', '2024-01-10', '2024-03-25'),
('HM009', '2023-12-05', '2024-04-02'),
('HM010', '2024-07-01', '2024-09-15');
INSERT INTO Educacion (IDEdu, NivelDeEstudios, LugarDeObtencion) VALUES
('EDU001', 'Licenciatura', 'Universidad A'),
('EDU002', 'Maestria', 'Universidad B'),
('EDU003', 'Doctorado', 'Universidad C'),
('EDU004', 'Licenciatura', 'Universidad D'),
('EDU005', 'Maestria', 'Universidad E'),
('EDU006', 'Licenciatura', 'Universidad F'),
('EDU007', 'Maestria', 'Universidad G'),
('EDU008', 'Licenciatura', 'Universidad H'),
('EDU009', 'Doctorado', 'Universidad I'),
('EDU010', 'Licenciatura', 'Universidad J');
INSERT INTO Amigos (IDAmigos, Amigos) VALUES
('AM001', 'Carlos Perez'),
('AM002', 'Ana Gomez'),
('AM003', 'Juan Ramirez'),
('AM004', 'Maria Lopez'),
('AM005', 'Pedro Martinez'),
('AM006', 'Laura Fernandez'),
('AM007', 'Jose Garcia'),
('AM008', 'Sofia Alvarez'),
('AM009', 'Ricardo Torres'),
('AM010', 'Elena Herrera');
INSERT INTO Familiares (IDFamiliares, Familiares, Parentezco) VALUES
('FA001', 'Carlos Perez', 'Padre'),
('FA002', 'Ana Gomez', 'Madre'),
('FA003', 'Juan Ramirez', 'Hermano'),
('FA004', 'Maria Lopez', 'Hermana'),
('FA005', 'Pedro Martinez', 'Tio'),
('FA006', 'Laura Fernandez', 'Tia'),
('FA007', 'Jose Garcia', 'Abuelo'),
('FA008', 'Sofia Alvarez', 'Abuela'),
('FA009', 'Ricardo Torres', 'Primo'),
('FA010', 'Elena Herrera', 'Prima');
INSERT INTO NivelEstudios (IDNivEst, Tipo) VALUES
('NE001', 'Primaria'),
('NE002', 'Secundaria'),
('NE003', 'Licenciatura'),
('NE004', 'Maestria'),
('NE005', 'Doctorado'),
('NE006', 'Tecnico'),
('NE007', 'Bachillerato'),
('NE008', 'Postgrado'),
('NE009', 'Diplomado'),
('NE010', 'Especializacion');
INSERT INTO Genero (IDGenero, Tipo) VALUES
('GE001', 'Masculino'),
('GE002', 'Femenino'),
('GE003', 'NoBinario'),
('GE004', 'Masculino'),
('GE005', 'Femenino'),
('GE006', 'Masculino'),
('GE007', 'Femenino'),
('GE008', 'NoBinario'),
('GE009', 'Masculino'),
('GE010', 'Femenino');
INSERT INTO EstadoCivil (IDEstadoCivil, Tipo) VALUES
('EC001', 'Soltero'),
('EC002', 'Casado'),
('EC003', 'Divorciado'),
('EC004', 'Viudo'),
('EC005', 'Soltero'),
('EC006', 'Casado'),
('EC007', 'Divorciado'),
('EC008', 'Viudo'),
('EC009', 'Casado'),
('EC010', 'Soltero');
INSERT INTO Relaciones (IDInfPersonal, IDEmpleo, IDDomicilio, IDContacto, IDBienesInm,
IDBienesMue, IDHistorialMigratorio, IDEdu, IDAmigos, IDFamiliares, IDNivEst, IDGenero, IDEstadoCivil) VALUES
(1, 'EMP001', 'DOM001', 'CON001', 'BI001', 'BM001', 'GE001' , 'AM001'),
(2, 'EMP002', 'DOM002', 'CON002', 'BI002', 'BM002', 'GE002' , 'AM002'),
(3, 'EMP003', 'DOM003', 'CON003', 'BI003', 'BM003', 'GE003' , 'AM003'),
(4, 'EMP004', 'DOM004', 'CON004', 'BI004', 'BM004', 'GE004' , 'AM004'),
(5, 'EMP005', 'DOM005', 'CON005', 'BI005', 'BM005', 'GE005' , 'AM005');



SELECT * FROM Relaciones;