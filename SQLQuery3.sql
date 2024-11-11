SELECT Nombre, Cedula FROM InfPersonal;
SELECT Tipo, Direccion FROM BienesInmuebles;
SELECT Tipo FROM BienesMuebles;
SELECT Tipo FROM EstadoCivil;
SELECT DISTINCT Tipo FROM NivelEstudios;
SELECT DireccionActual FROM Domicilio;

SELECT InfPersonal.Nombre, Amigos.Amigos AS NombreAmigo
FROM InfPersonal
JOIN Amigos ON InfPersonal.IDInfPers = Amigos.IDAmigos;

SELECT D.DireccionAnterior, E.TrabajoActual
FROM Domicilio D
LEFT JOIN Empleo E ON IDDomicilio = E.IDEmpleo

SELECT r.IDInfPersonal, e.IDEmpleo, d.IDDomicilio, c.IDContacto
From Relaciones r 
JOIN Empleo e ON r.IDEmpleo = e.IDEmpleo
JOIN Domicilio d ON r.IDDomicilio = d.IDDomicilio
JOIN Contacto c ON r.IDContacto = c.IDContacto
WHERE r.IDInfPersonal = 1;
