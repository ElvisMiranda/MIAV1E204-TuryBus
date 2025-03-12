CREATE PROCEDURE [dbo].[DW_MergeDimPassenger]
AS
BEGIN

	UPDATE ds
		SET 
			ds.[dni] = s.[dni]
			, ds.[name] = s.[name]
			, ds.[phone] = s.[phone]

	FROM [dbo].[DimPassenger] ds
	INNER JOIN [staging].[Passenger] s ON ds.PassengerSK = s.PassengerSK

END
GO