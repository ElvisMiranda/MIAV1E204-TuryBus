CREATE PROCEDURE [dbo].[GetPassengerChangesByRowVersion]
(
	@startRow BIGINT,
	@endRow BIGINT
)
AS
BEGIN
	  SELECT 
	  [id]
	  ,[dni]
      ,[name]
      ,[phone]
     
	  FROM Passengers b
	  WHERE (b.rowversion > CONVERT(ROWVERSION,@startRow) 
	  AND b.rowversion <= CONVERT(ROWVERSION,@endRow)
	  )
	  
END
GO