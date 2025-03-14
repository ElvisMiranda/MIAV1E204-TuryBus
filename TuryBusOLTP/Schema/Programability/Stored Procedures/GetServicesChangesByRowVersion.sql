CREATE PROCEDURE [dbo].[GetServicesChangesByRowVersion]
(
   @startRow BIGINT,
   @endRow BIGINT
)
AS
BEGIN

	SELECT 
    ds.id AS service_id,
    t.id AS ticket_id,
    ds.route_id,
    ds.bus_id,
    t.passenger_id,
    e.id AS stop_id, -- son las paradas
    CONVERT(INT,
        REPLACE(
            CONVERT(CHAR(4), DATEPART(YEAR, t.[travel_date])) +
            CASE 
                WHEN DATEPART(MONTH, t.[travel_date]) < 10 
                    THEN '0' + CONVERT(CHAR(2), DATEPART(MONTH, t.[travel_date]))
                ELSE CONVERT(CHAR(2), DATEPART(MONTH, t.[travel_date]))
            END +
            CASE 
                WHEN DATEPART(DAY, t.[travel_date]) < 10 
                    THEN '0' + CONVERT(CHAR(2), DATEPART(DAY, t.[travel_date]))
                ELSE CONVERT(CHAR(2), DATEPART(DAY, t.[travel_date]))
            END
        , ' ', '')  -- Aquí estamos eliminando los espacios
    ) AS TicketDateKey,
    t.travel_date AS FechaTicket,
    ds.departure_time AS HoraSalida,
    ds.arrival_time AS HoraLLegada,
    ds.is_holiday, --- 1: Indica que el día en cuestión es un día festivo, 0: Indica que el día no es un día festivo.
    COUNT(t.id) AS cantTickets
FROM DailyServices ds
JOIN Routes r ON ds.route_id = r.id -- rutas
JOIN Tickets t ON ds.id = t.service_id -- boletos
JOIN Passengers p ON t.passenger_id = p.id
JOIN [Stops] e ON ds.id = e.service_id -- paradas
WHERE 
    (ds.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND ds.[rowversion] <= CONVERT(ROWVERSION, @endRow))
    OR (t.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND t.[rowversion] <= CONVERT(ROWVERSION, @endRow))
    OR (p.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND p.[rowversion] <= CONVERT(ROWVERSION, @endRow))
    OR (e.[rowversion] > CONVERT(ROWVERSION, @startRow) 
        AND e.[rowversion] <= CONVERT(ROWVERSION, @endRow))

GROUP BY 
    ds.id,
    t.id,
    ds.route_id,
    ds.bus_id,
    t.passenger_id,
    t.travel_date,
    ds.departure_time,
    ds.arrival_time,
    ds.is_holiday,
    e.id,
    CONVERT(INT,
        REPLACE(
            CONVERT(CHAR(4), DATEPART(YEAR, t.[travel_date])) +
            CASE 
                WHEN DATEPART(MONTH, t.[travel_date]) < 10 
                    THEN '0' + CONVERT(CHAR(2), DATEPART(MONTH, t.[travel_date]))
                ELSE CONVERT(CHAR(2), DATEPART(MONTH, t.[travel_date]))
            END +
            CASE 
                WHEN DATEPART(DAY, t.[travel_date]) < 10 
                    THEN '0' + CONVERT(CHAR(2), DATEPART(DAY, t.[travel_date]))
                ELSE CONVERT(CHAR(2), DATEPART(DAY, t.[travel_date]))
            END
        , ' ', '')  -- Eliminamos los espacios aquí también
    );

END