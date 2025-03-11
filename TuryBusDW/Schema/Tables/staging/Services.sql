CREATE TABLE staging.Services (
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
