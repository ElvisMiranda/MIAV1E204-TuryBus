﻿CREATE TABLE Drivers (
    id INT PRIMARY KEY IDENTITY(1,1),
    dni NVARCHAR(20) UNIQUE NOT NULL,
    name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20) NOT NULL,
    address NVARCHAR(255) NOT NULL
);
