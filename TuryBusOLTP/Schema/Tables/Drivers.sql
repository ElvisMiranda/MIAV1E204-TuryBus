CREATE TABLE Drivers (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_drivers PRIMARY KEY,
    dni NVARCHAR(20) NOT NULL,
    name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20) NOT NULL,
    address NVARCHAR(255) NOT NULL
     [rowversion]  [timestamp]         NOT NULL
);
GO

ALTER TABLE Drivers ADD CONSTRAINT UQ_drivers_dni UNIQUE (dni);
