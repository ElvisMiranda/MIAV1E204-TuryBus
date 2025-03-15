CREATE TABLE [dbo].[FactServices](
	[ServicioSK] [int] IDENTITY(1,1) NOT NULL,
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
	[ImporteTotal] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicioSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactServices] ADD  DEFAULT ((0)) FOR [IsHoliday]
GO

ALTER TABLE [dbo].[FactServices]  WITH CHECK ADD  CONSTRAINT [FK_factServices_dimBus] FOREIGN KEY([BusSK])
REFERENCES [dbo].[DimBus] ([BusSK])
GO

ALTER TABLE [dbo].[FactServices] CHECK CONSTRAINT [FK_factServices_dimBus]
GO

ALTER TABLE [dbo].[FactServices]  WITH CHECK ADD  CONSTRAINT [FK_factServices_dimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactServices] CHECK CONSTRAINT [FK_factServices_dimDate]
GO

ALTER TABLE [dbo].[FactServices]  WITH CHECK ADD  CONSTRAINT [FK_factServices_dimPassenger] FOREIGN KEY([PassengerSK])
REFERENCES [dbo].[DimPassenger] ([PassengerSK])
GO

ALTER TABLE [dbo].[FactServices] CHECK CONSTRAINT [FK_factServices_dimPassenger]
GO

ALTER TABLE [dbo].[FactServices]  WITH CHECK ADD  CONSTRAINT [FK_factServices_dimRoute] FOREIGN KEY([RouteSK])
REFERENCES [dbo].[DimRoute] ([RouteSK])
GO

ALTER TABLE [dbo].[FactServices] CHECK CONSTRAINT [FK_factServices_dimRoute]
GO

ALTER TABLE [dbo].[FactServices]  WITH CHECK ADD  CONSTRAINT [FK_factServices_dimStop] FOREIGN KEY([StopSK])
REFERENCES [dbo].[DimStop] ([StopSK])
GO

ALTER TABLE [dbo].[FactServices] CHECK CONSTRAINT [FK_factServices_dimStop]
GO