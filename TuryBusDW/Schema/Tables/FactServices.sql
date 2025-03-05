CREATE TABLE FactServices (
    service_id INT IDENTITY(1,1) CONSTRAINT PK_dimServices PRIMARY KEY,
    route_sk INT NOT NULL,
    bus_sk INT NOT NULL,
    driver_sk INT NOT NULL,
    passenger_sk INT NOT NULL,
    date_Key INT NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    total_passengers INT NOT NULL
);
