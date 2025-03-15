CREATE PROCEDURE [dbo].[DW_MergeServicios]
AS
BEGIN
    UPDATE dc
    SET     
        ticket_id = sc.ticket_id,
	    dc.[StopSK]=sc.[StopSK],
        dc.[PassengerSK]=sc.[PassengerSK],
        dc.[RouteSK]=sc.[RouteSK],
        dc.[BusSK]=sc.[BusSK],
        dc.[DateKey]=sc.[DateKey],
        dc.[DepartureTime]=sc.[DepartureTime],
        dc.[ArrivalTime]=sc.[ArrivalTime],
        dc.[IsHoliday]=sc.[IsHoliday],
        dc.[DuracionHrs_Ticket] = sc.[DuracionHrs_Ticket],
        dc.[cantTickets]=sc.[cantTickets],
        dc.[ImporteTotal]=sc.[ImporteTotal]
    FROM [dbo].FactServices dc
    INNER JOIN [staging].Services sc ON (dc.ServicioSK = sc.ServicioSK)
END;
GO