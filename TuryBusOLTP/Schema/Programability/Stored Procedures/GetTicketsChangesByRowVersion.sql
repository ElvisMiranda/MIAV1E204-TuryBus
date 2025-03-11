CREATE PROCEDURE [dbo].[GetTicketsChangesByRowVersion_v2]
(
	@startRow BIGINT,
	@endRow BIGINT
)
AS
BEGIN
	  SELECT t.id
		    ,t.travel_date
		    ,p.dni
		    ,p.name
		    ,p.phone
	  FROM Tickets t
	  INNER JOIN Passengers p ON t.passenger_id = p.id
	  WHERE (t.rowversion > CONVERT(ROWVERSION,@startRow) 
	  AND t.rowversion <= CONVERT(ROWVERSION,@endRow))
	  OR (p.rowversion > CONVERT(ROWVERSION,@startRow)
	  AND p.rowversion <= CONVERT(ROWVERSION,@endRow))
END
GO

