CREATE PROCEDURE [dbo].[GetStopsChangesByRowVersion]
(
	@startRow BIGINT,
	@endRow BIGINT
)
AS
BEGIN
	  SELECT s.id
		    ,s.arrival_time
		    ,s.stop_duration
		    ,p.name
		    ,a.description
	  FROM Stops s
	  INNER JOIN Places p ON s.place_id = p.id
	  INNER JOIN Activities a ON a.id = s.activity_id
	  WHERE (s.rowversion > CONVERT(ROWVERSION,@startRow) 
	  AND s.rowversion <= CONVERT(ROWVERSION,@endRow))
	  OR (p.rowversion > CONVERT(ROWVERSION,@startRow)
	  AND p.rowversion <= CONVERT(ROWVERSION,@endRow))
	  OR (a.rowversion > CONVERT(ROWVERSION,@startRow)
	  AND a.rowversion <= CONVERT(ROWVERSION,@endRow))
END
GO
