CREATE PROCEDURE [dbo].[GetActivitiesChangesByRowVersion]
	@startRow BIGINT,
	@endRow BIGINT
AS
BEGIN
	SELECT id
		  ,description
		  ,rowversion
	  FROM Activities
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO
