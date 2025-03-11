CREATE PROCEDURE [dbo].[GetRoutesChangesByRowVersion_v2]
(
	@startRow BIGINT,
	@endRow BIGINT
)
AS
BEGIN
	  SELECT id
		    ,name
		    ,description
		    ,distance
		    ,price
	  FROM Routes
	  WHERE rowversion > CONVERT(ROWVERSION,@startRow) 
	  AND rowversion <= CONVERT(ROWVERSION,@endRow)
END
GO
