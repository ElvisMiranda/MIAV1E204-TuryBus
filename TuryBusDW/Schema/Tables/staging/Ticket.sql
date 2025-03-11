CREATE TABLE staging.ticket (
    TicketSK INT NOT NULL,
    PassengerDni NVARCHAR(20) NOT NULL,
    PassengerName NVARCHAR(100) NOT NULL,
    PassengerPhone NVARCHAR(20) NOT NULL,
    TravelDate DATE NOT NULL
);
GO