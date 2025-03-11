CREATE PROCEDURE [dbo].[sp_GetTotalHoursByUser]
AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
        fs.PassengerSK AS passenger,
        SUM(DATEDIFF(MINUTE, fs.DepartureTime, fs.ArrivalTime)) / 60 AS total_hours
    FROM FactServices fs
    JOIN DimPassenger p ON fs.PassengerSK = p.PassengerSK
    GROUP BY fs.PassengerSK;
END