-- Table of stops along the route
CREATE TABLE Stops (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_stops PRIMARY KEY,
    service_id INT NOT NULL,
    place_id INT NOT NULL,
    activity_id INT NOT NULL, -- Actividad a realizar
	arrival_time DATETIME NOT NULL, -- Hora de llegada
    stop_duration INT DEFAULT 0, -- Duración de la parada en minutos
    rowversion  timestamp  NOT NULL
);
GO

ALTER TABLE Stops ADD CONSTRAINT FK_stops_dailyServices FOREIGN KEY(service_id) REFERENCES DailyServices(id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE Stops ADD CONSTRAINT FK_stops_places FOREIGN KEY(place_id) REFERENCES Places(id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE Stops ADD CONSTRAINT FK_stops_activities FOREIGN KEY(activity_id) REFERENCES Activities(id)
ON UPDATE CASCADE
ON DELETE CASCADE
GO