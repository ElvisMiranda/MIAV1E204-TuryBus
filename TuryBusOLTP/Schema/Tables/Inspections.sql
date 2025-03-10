CREATE TABLE Inspections (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_inspections PRIMARY KEY,
    bus_id INT NOT NULL,
    [date] DATE NOT NULL, -- Fecha de inspeccion
    diagnosis NVARCHAR(255) NOT NULL, -- Diagnóstico
    rowversion  timestamp  NOT NULL
);
GO

ALTER TABLE Inspections ADD CONSTRAINT FK_inspections_busses FOREIGN KEY(bus_id) REFERENCES Busses (id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO