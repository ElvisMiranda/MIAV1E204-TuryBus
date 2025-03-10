CREATE TABLE DimBus (
    BusSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimBus PRIMARY KEY,
    BusID INT NOT NULL,
    LicensePlate NVARCHAR(20) NOT NULL,
    Model NVARCHAR(100) NOT NULL,
    Manufacturer NVARCHAR(50) NOT NULL,
    SeatCount INT NOT NULL,
    DriverDni NVARCHAR(20) NOT NULL,
    DriverName NVARCHAR(100) NOT NULL,
    DriverPhone NVARCHAR(20) NOT NULL,
    DriverAddress NVARCHAR(255) NOT NULL,
    InspectionDate DATE NOT NULL,
    InspectionDiagnosis NVARCHAR(255) NOT NULL,
    RepairType NVARCHAR(100) NOT NULL,
    RepairTimeSpent INT NOT NULL,
    RepairComment NVARCHAR(255)
);
GO