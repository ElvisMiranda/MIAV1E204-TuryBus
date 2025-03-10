CREATE TABLE DimRepairs (
    repair_sk INT IDENTITY(1,1) CONSTRAINT PK_dimRepairs PRIMARY KEY,
    repair_id INT NOT NULL,
    type NVARCHAR(100) NOT NULL, -- Tipo de reparación
    time_spent INT NOT NULL, -- Tiempo empleado en minutos
    comment NVARCHAR(255)
);