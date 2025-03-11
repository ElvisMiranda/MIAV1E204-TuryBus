CREATE PROCEDURE [dbo].[sp_GetDailyKmByBusAndDriver]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		b.BusSK AS bus
		, b.DriverName AS driver,
		SUM(r.distance) AS total_km
	FROM FactServices fs
	JOIN DimBus b ON fs.BusSK = b.BusSK
	JOIN DimRoute r ON fs.RouteSK = r.RouteSK
	GROUP BY b.BusSK, b.DriverName
END