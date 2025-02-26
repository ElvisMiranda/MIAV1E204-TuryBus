-- Table of Repairs
CREATE TABLE Repairs (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_repairs PRIMARY KEY,
    inspection_id INT NOT NULL,
    type NVARCHAR(100) NOT NULL, -- Tipo de reparación
    time_spent INT NOT NULL, -- Tiempo empleado en minutos
    comment NVARCHAR(255)
);
GO

ALTER TABLE Repairs ADD CONSTRAINT FK_repairs_inspections FOREIGN KEY(inspection_id) REFERENCES Inspections (id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO