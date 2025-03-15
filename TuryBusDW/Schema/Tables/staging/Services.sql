CREATE TABLE staging.Services (
    [ServicioSK] [int] NOT NULL,
	[service_id] [int] NOT NULL,
	[ticket_id] [int] NOT NULL,
	[StopSK] [int] NOT NULL,
	[PassengerSK] [int] NOT NULL,
	[RouteSK] [int] NOT NULL,
	[BusSK] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[DepartureTime] [time](7) NOT NULL,
	[ArrivalTime] [time](7) NOT NULL,
	[IsHoliday] [bit] NOT NULL,
	[DuracionHrs_Ticket] [int] NOT NULL,
	[cantTickets] [int] NOT NULL,
	[ImporteTotal] [decimal](10, 2) NOT NULL

);
GO
