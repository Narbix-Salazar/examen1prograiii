-- Crear la base de datos
CREATE DATABASE gestion_reciclaje;
GO

-- Usar la base de datos
USE gestion_reciclaje;
GO

-- Crear la tabla de usuarios
CREATE TABLE Usuarios (
    UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
    Cedula NVARCHAR(50) NOT NULL UNIQUE,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL,
    Correo NVARCHAR(100) NOT NULL,
    Contrasena NVARCHAR(100) NOT NULL
);
GO

-- Crear la tabla de materiales
CREATE TABLE Materiales (
    MaterialID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL UNIQUE,
    Puntos INT NOT NULL
);
GO

-- Insertar datos iniciales en la tabla de materiales
INSERT INTO Materiales (Nombre, Puntos) VALUES 
('Plastico', 5),
('Vidrio', 4),
('Aluminio', 3),
('Papel', 2),
('Carton', 2);
GO

-- Crear la función escalar para obtener los puntos de un material
CREATE FUNCTION dbo.GetPuntos(@MaterialID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Puntos INT;
    SELECT @Puntos = Puntos FROM Materiales WHERE MaterialID = @MaterialID;
    RETURN @Puntos;
END;
GO

-- Crear la tabla de reciclaje sin columna calculada
CREATE TABLE Reciclaje (
    ReciclajeID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID INT NOT NULL,
    MaterialID INT NOT NULL,
    Cantidad INT NOT NULL,
    FechaReciclaje DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (MaterialID) REFERENCES Materiales(MaterialID)
);
GO

-- Consulta para ver el conteo total de puntos obtenidos por cada usuario
SELECT 
    U.Cedula,
    U.Nombre,
    U.Apellido,
    SUM(R.Cantidad * dbo.GetPuntos(R.MaterialID)) AS TotalPuntos
FROM 
    Usuarios U
JOIN 
    Reciclaje R ON U.UsuarioID = R.UsuarioID
GROUP BY 
    U.Cedula, U.Nombre, U.Apellido;
GO
