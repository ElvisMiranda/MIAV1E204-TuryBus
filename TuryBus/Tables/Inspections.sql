CREATE TABLE Inspections (
    id INT PRIMARY KEY IDENTITY(1,1),
    bus_id INT NOT NULL,
    [date] DATE NOT NULL, -- Fecha de inspeccion
    diagnosis NVARCHAR(255) NOT NULL, -- Diagnóstico
    --FOREIGN KEY (bus_id) REFERENCES Busses(id)
);