﻿CREATE TABLE DimPassenger (
    PassengerSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimPassenger PRIMARY KEY,
    PassengerID INT NOT NULL,
    Dni NVARCHAR(20) NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(20) NOT NULL,
);
GO