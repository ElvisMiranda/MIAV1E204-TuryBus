CREATE PROCEDURE [dbo].[DW_MergeDimBus]
AS
BEGIN
    UPDATE ds
    SET 
       
	ds.LicensePlate = sc.LicensePlate,
	ds.Model= sc.Model,
	ds.Manufacturer= sc.Manufacturer, 
	ds.SeatCount=sc.SeatCount,
	ds.DriverDni=sc.DriverDni,
	ds.DriverName=sc.DriverName,
	ds.DriverPhone=sc.DriverPhone,
	ds.DriverAddress= sc.DriverAddress,
	ds.InspectionDate= sc.InspectionDate,
	ds.InspectionDiagnosis= sc.InspectionDiagnosis,
	ds.RepairType=sc.RepairType,
	ds.RepairTimeSpent=sc.RepairTimeSpent,
	ds.RepairComment = sc.RepairComment

    FROM [dbo].[DimBus] ds
    INNER JOIN [staging].[Bus] sc ON ds.BusSK = sc.BusSK;
END
GO
