GO

CREATE PROCEDURE [dbo].[GetServicesChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow BIGINT
)
AS
BEGIN
    SELECT 
        [route_id],
        [bus_id],
        [departure_time],
        [arrival_time],
        [is_holiday],
        ori.passenger_id,
        ori.id as ticket_id,
        -- Convertir la fecha a formato YYYYMMDD (INT)
        ServiceDateKey = CONVERT(INT,
            CONVERT(CHAR(4), DATEPART(YEAR, ori.[travel_date])) +
            CASE 
                WHEN DATEPART(MONTH, ori.[travel_date]) < 10 
                    THEN '0' + CONVERT(CHAR(2), DATEPART(MONTH, ori.[travel_date]))
                ELSE CONVERT(CHAR(2), DATEPART(MONTH, ori.[travel_date]))
            END +
            CASE 
                WHEN DATEPART(DAY, ori.[travel_date]) < 10 
                    THEN '0' + CONVERT(CHAR(2), DATEPART(DAY, ori.[travel_date]))
                ELSE CONVERT(CHAR(2), DATEPART(DAY, ori.[travel_date]))
            END
        )
  
    FROM [dbo].[DailyServices] ord
    INNER JOIN [dbo].[Tickets] ori 
        ON ord.id = ori.service_id
    WHERE 
        (ord.[rowversion] > CONVERT(ROWVERSION,@startRow) 
			AND ord.[rowversion] <= CONVERT(ROWVERSION,@endRow)
		)
	OR (ori.[rowversion] > CONVERT(ROWVERSION,@startRow) 
			AND ori.[rowversion] <= CONVERT(ROWVERSION,@endRow)
	)
END
GO
