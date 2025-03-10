CREATE TABLE DimPassengers (
    passenger_sk INT IDENTITY(1,1) CONSTRAINT PK_dimPassengers PRIMARY KEY,
    passenger_id INT NOT NULL,
    dni NVARCHAR(20) NOT NULL UNIQUE,
    name NVARCHAR(255) NOT NULL,
    phone NVARCHAR(20) NOT NULL
);
