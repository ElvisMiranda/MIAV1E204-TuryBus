-- Table of stops along the route
CREATE TABLE Stops (
    id INT PRIMARY KEY IDENTITY(1,1),
    service_id INT NOT NULL,
    place_id INT NOT NULL,
    activity_id INT NOT NULL, -- Actividad a realizar
	arrival_time DATETIME NOT NULL, -- Hora de llegada
    stop_duration INT, -- Duración de la parada en minutos
    FOREIGN KEY (service_id) REFERENCES DailyServices(id),
    FOREIGN KEY (place_id) REFERENCES Places(id),
	FOREIGN KEY (activity_id) REFERENCES Activities(id)
);