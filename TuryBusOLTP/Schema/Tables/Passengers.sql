CREATE TABLE Passengers (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_passengers PRIMARY KEY,
    dni NVARCHAR(20) NOT NULL,
    name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20) NOT NULL
     [rowversion]  [timestamp]         NOT NULL
);
GO

ALTER TABLE Passengers ADD CONSTRAINT UQ_passengers_dni UNIQUE (dni);
