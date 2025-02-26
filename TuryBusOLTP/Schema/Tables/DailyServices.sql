CREATE TABLE DailyServices (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_dailyServices PRIMARY KEY,
    route_id INT NOT NULL,
	bus_id INT NOT NULL,
    departure_time TIME NOT NULL, -- Hora de salida
	arrival_time TIME NOT NULL, -- Hora de llegada prevista
    is_holiday bit NOT NULL DEFAULT 0 -- Días de operación (flag 1 | 0)
);
GO

ALTER TABLE DailyServices ADD CONSTRAINT FK_dailyServices_routes FOREIGN KEY(route_id) REFERENCES Routes (id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE DailyServices ADD CONSTRAINT FK_dailyServices_busses FOREIGN KEY(bus_id) REFERENCES Busses (id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

