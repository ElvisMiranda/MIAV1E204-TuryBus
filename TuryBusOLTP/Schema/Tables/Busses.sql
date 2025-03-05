CREATE TABLE Busses (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_busses PRIMARY KEY,
	driver_id INT NOT NULL,
    license_plate NVARCHAR(20) NOT NULL,
    model NVARCHAR(50) NOT NULL,
    manufacturer NVARCHAR(50) NOT NULL,
    seat_count INT NOT NULL -- Número de plazas
);
GO

ALTER TABLE Busses ADD CONSTRAINT FK_busses_drivers FOREIGN KEY (driver_id) REFERENCES Drivers(id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE Busses ADD CONSTRAINT UQ_busses_licensePlate UNIQUE (license_plate);
