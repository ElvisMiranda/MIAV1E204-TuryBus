﻿CREATE TABLE DimTicket (
    TicketSK INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimTicket PRIMARY KEY,
    TicketID INT NOT NULL,
    PassengerDni NVARCHAR(20) NOT NULL,
    PassengerName NVARCHAR(100) NOT NULL,
    PassengerPhone NVARCHAR(20) NOT NULL,
    TravelDate DATE NOT NULL
);
GO