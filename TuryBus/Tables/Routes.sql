CREATE TABLE Routes (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(100) NOT NULL, -- Descripción de la ruta
	distance DECIMAL(10,2) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
