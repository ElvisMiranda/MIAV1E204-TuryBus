CREATE TABLE [staging].[bus](
	[BusSK] [int] NOT NULL,
	[LicensePlate] [nvarchar](20) NOT NULL,
	[Model] [nvarchar](100) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[SeatCount] [int] NOT NULL,
	[DriverDni] [nvarchar](20) NOT NULL,
	[DriverName] [nvarchar](100) NOT NULL,
	[DriverPhone] [nvarchar](20) NOT NULL,
	[DriverAddress] [nvarchar](255) NOT NULL,
	[InspectionDate] [date] NOT NULL,
	[InspectionDiagnosis] [nvarchar](255) NOT NULL,
	[RepairType] [nvarchar](100) NOT NULL,
	[RepairTimeSpent] [int] NOT NULL,
	[RepairComment] [nvarchar](255) NULL
	)
