CREATE PROCEDURE [dbo].[sp_GetAvgPassengersByRoute]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		r.RouteID AS route_id
		, r.name AS route_name
	   , COUNT(fs.ServiceID) / COUNT(DISTINCT fs.ServiceID) AS avg_passengers
	FROM FactServices fs
	JOIN DimRoute r ON fs.RouteSK = r.RouteSK
	GROUP BY r.RouteID, r.Name;
END;