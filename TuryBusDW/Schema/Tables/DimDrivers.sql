﻿CREATE TABLE DimDrivers (
    driver_sk INT IDENTITY(1,1) CONSTRAINT PK_dimDrivers PRIMARY KEY,
    driver_id INT NOT NULL,
    dni NVARCHAR(20) NOT NULL UNIQUE,
    name NVARCHAR(255) NOT NULL,
    phone NVARCHAR(20) NOT NULL,
    address NVARCHAR(255) NOT NULL
);