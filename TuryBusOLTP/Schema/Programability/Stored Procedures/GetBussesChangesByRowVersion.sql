CREATE PROCEDURE [dbo].[GetBussesChangesByRowVersion]
(
	@startRow BIGINT,
	@endRow BIGINT
)
AS
BEGIN
	  SELECT b.id
		    ,b.license_plate
		    ,b.model
		    ,b.manufacturer
		    ,b.seat_count
			,d.dni
			,d.name
			,d.phone
			,d.address
			,i.date
			,i.diagnosis
			,r.type
			,r.time_spent
			,r.comment
	  FROM Busses b
	  INNER JOIN Drivers d ON b.driver_id = d.id
	  INNER JOIN Inspections i ON b.id = i.bus_id
	  INNER JOIN Repairs r ON i.id = r.inspection_id
	  WHERE (b.rowversion > CONVERT(ROWVERSION,@startRow) 
	  AND b.rowversion <= CONVERT(ROWVERSION,@endRow))
	  OR (d.rowversion > CONVERT(ROWVERSION,@startRow)
	  AND d.rowversion <= CONVERT(ROWVERSION,@endRow))
	  OR (i.rowversion > CONVERT(ROWVERSION,@startRow)
	  AND i.rowversion <= CONVERT(ROWVERSION,@endRow))
	  OR (r.rowversion > CONVERT(ROWVERSION,@startRow)
	  AND r.rowversion <= CONVERT(ROWVERSION,@endRow))
END
GO