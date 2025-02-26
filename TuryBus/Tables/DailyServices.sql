CREATE TABLE DailyServices (
    id INT PRIMARY KEY IDENTITY(1,1),
    route_id INT NOT NULL,
	bus_id INT NOT NULL,
    departure_time TIME NOT NULL, -- Hora de salida
	arrival_time TIME NOT NULL, -- Hora de llegada prevista
    is_holiday bit NOT NULL DEFAULT 0, -- Días de operación (flag 1 | 0)
    FOREIGN KEY (route_id) REFERENCES Routes(id),
	FOREIGN KEY (bus_id) REFERENCES Busses(id)
);

