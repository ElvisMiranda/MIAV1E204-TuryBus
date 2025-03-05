CREATE TABLE DimRoutes (
    route_sk INT IDENTITY(1,1) CONSTRAINT PK_dimRoutes PRIMARY KEY,
    route_id INT NOT NULL,
    name NVARCHAR(255) NOT NULL,
    description NVARCHAR(100) NOT NULL, -- Descripción de la ruta
    distance DECIMAL(10,2) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

