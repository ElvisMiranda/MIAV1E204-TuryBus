﻿CREATE TABLE DimRoute (
    RouteSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimRoute PRIMARY KEY,
    RouteID INT NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(100) NOT NULL,
    Distance DECIMAL(10,2) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
GO