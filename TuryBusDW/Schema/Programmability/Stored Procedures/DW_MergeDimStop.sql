CREATE PROCEDURE [dbo].[DW_MergeDimStop]
AS
BEGIN

	UPDATE ds
		SET 
			ds.PlaceName = s.PlaceName
			, ds.ActivityDescription = s.ActivityDescription
			, ds.ArrivalTime = s.ArrivalTime
			, ds.StopDuration = s.StopDuration
	FROM [dbo].[DimStop] ds
	INNER JOIN [staging].[Stop] s ON ds.StopSK = s.StopSK

END
GO