CREATE TABLE FactServices (
    ServiceID INT NOT NULL,
    StopSK INT NOT NULL,
    TicketSK INT NOT NULL,
    RouteSK INT NOT NULL,
    BusSK INT NOT NULL,
    DateKey INT NOT NULL,
    DepartureTime TIME NOT NULL,
    ArrivalTime TIME NOT NULL,
    IsHoliday BIT NOT NULL DEFAULT 0    
);
GO

ALTER TABLE FactServices ADD CONSTRAINT FK_factServices_dimStop FOREIGN KEY (StopSK) REFERENCES DimStop(StopSK)
GO

ALTER TABLE FactServices ADD CONSTRAINT FK_factServices_dimTicket FOREIGN KEY (TicketSK) REFERENCES DimTicket(TicketSK)
GO

ALTER TABLE FactServices ADD CONSTRAINT FK_factServices_dimRoute FOREIGN KEY (RouteSK) REFERENCES DimRoute(RouteSK)
GO

ALTER TABLE FactServices ADD CONSTRAINT FK_factServices_dimBus FOREIGN KEY (BusSK) REFERENCES DimBus(BusSK)
GO

ALTER TABLE FactServices ADD CONSTRAINT FK_factServices_dimDate FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey)
GO