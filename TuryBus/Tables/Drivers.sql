CREATE TABLE Drivers (
    id INT PRIMARY KEY IDENTITY(1,1),
    dni NVARCHAR(20) UNIQUE NOT NULL,
    name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20) NOT NULL,
    address NVARCHAR(255) NOT NULL
);
-- Table of tourist routes
CREATE TABLE Routes (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(100) NOT NULL, -- Descripción de la ruta
	distance DECIMAL(10,2) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
-- Table of passengers
CREATE TABLE Passengers (
    id INT PRIMARY KEY IDENTITY(1,1),
    dni NVARCHAR(20) UNIQUE NOT NULL,
    name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20) NOT NULL
);
