CREATE DATABASE DbRegistro
GO
USE DbRegistro
GO

CREATE TABLE Ciudades(
IdCiudad INT PRIMARY KEY IDENTITY,
Nombre NVARCHAR (60) not null,
Estado BIT DEFAULT 1
)
GO

CREATE TABLE Personas(
Id INT PRIMARY KEY IDENTITY,
Nombre NVARCHAR(40) not null,
Apellido NVARCHAR(40) not null,
IdCiudad INT FOREIGN KEY REFERENCES Ciudades(IdCiudad),
Activo BIT DEFAULT 1
)
GO

/*Consultas de Insertar*/
INSERT INTO Ciudades(Nombre)
	VALUES
	('Masaya'),('Granada'),('Jinotepe'),('Managua'),('León')
GO

INSERT INTO Personas(Nombre, Apellido, IdCiudad)
	VALUES
	('Belen', 'Acuña', 4),
	('Erick', 'Martinez', 4),
	('Sergio', 'Rivas', 1),
	('Alfredo', 'Martinez', 4),
	('Justin', 'Sandigo', 5)
GO

/*CRULD*/
/*Visualizar datos*/
SELECT * FROM Ciudades c
GO
SELECT * FROM Personas p
GO

--PARA OCULTAR LOS CAMPOS VERDADEROS Y DARLES OTRO NOMBRE, HAY QUE PRESERVAR LA INTEGRIDAD DE LOS DATOS
SELECT IdCiudad AS 'Codigo', Nombre AS 'Ciudad', Estado AS 'est' FROM Ciudades
GO

--INERJOIN PARA MOSTRAR EN LA COLUMNA CIUDAD LOS NOMBRES DE LAS CIUDADES
SELECT Personas.Id AS 'Codigo', Personas.Nombre + ' ' + Personas.Apellido AS 'Nombre Completo', Ciudades.Nombre AS Ciudad 
FROM Personas INNER JOIN Ciudades ON Personas.IdCiudad = Ciudades.IdCiudad
GO


/*Crear y utilizar variabels*/
/**InfoUtil
SI a @nombre le asignamos un texto 'Justin', y luego ejecutamos el SELECT, nos va a buscar a justin en toda la tabla Personas
SI a @nombre le asignamos un texto 'jus%' poniendole mod al final, nos buscara todos los registros en Personas que inicien con jus
SI a @nombre le asignamos un texto '%u%' poniendole mod al inicio y final, nos buscara todos los registros en Personas con la letra u
*/
DECLARE @nombre NVARCHAR (40)
SET @nombre = '%e%'

SELECT * FROM Personas WHERE Nombre LIKE @nombre
GO