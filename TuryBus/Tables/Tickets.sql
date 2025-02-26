CREATE TABLE Tickets (
    id INT PRIMARY KEY IDENTITY(1,1),
    passenger_id INT NOT NULL,
    service_id INT NOT NULL,
    travel_date DATE NOT NULL, -- Fecha de viaje
    FOREIGN KEY (passenger_id) REFERENCES Passengers(id),
    FOREIGN KEY (service_id) REFERENCES DailyServices(id)
);