-- Table of Repairs
CREATE TABLE Repairs (
    id INT PRIMARY KEY IDENTITY(1,1),
    inspection_id INT NOT NULL,
    type NVARCHAR(100) NOT NULL, -- Tipo de reparación
    time_spent INT NOT NULL, -- Tiempo empleado en minutos
    comment NVARCHAR(255),
    FOREIGN KEY (inspection_id) REFERENCES Inspections(id)
);