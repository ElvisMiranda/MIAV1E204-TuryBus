﻿CREATE TABLE DimBusses (
    bus_sk INT IDENTITY(1,1) CONSTRAINT PK_dimBusses PRIMARY KEY,
    bus_id INT NOT NULL,
    license_plate NVARCHAR(20) NOT NULL UNIQUE,
    model NVARCHAR(100) NOT NULL,
    manufacturer NVARCHAR(50) NOT NULL,
    seat_count INT NOT NULL
);