CREATE TABLE Routes (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_routes PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(100) NOT NULL, -- Descripción de la ruta
	distance DECIMAL(10,2) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
GO
