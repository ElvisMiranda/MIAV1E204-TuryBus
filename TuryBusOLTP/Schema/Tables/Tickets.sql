CREATE TABLE Tickets (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_tickets PRIMARY KEY,
    passenger_id INT NOT NULL,
    service_id INT NOT NULL,
    travel_date DATE NOT NULL, -- Fecha de viaje
    rowversion timestamp  NOT NULL
);
GO

ALTER TABLE Tickets ADD CONSTRAINT FK_tickets_passengers FOREIGN KEY(passenger_id) REFERENCES Passengers(id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE Tickets ADD CONSTRAINT FK_tickets_dailyServices FOREIGN KEY(service_id) REFERENCES DailyServices(id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO