CREATE TABLE Busses (
    id INT PRIMARY KEY IDENTITY(1,1),
	driver_id INT NOT NULL,
    license_plate NVARCHAR(20) UNIQUE NOT NULL,
    model NVARCHAR(50) NOT NULL,
    manufacturer NVARCHAR(50) NOT NULL,
    seat_count INT NOT NULL, -- Número de plazas
	FOREIGN KEY (driver_id) REFERENCES Drivers(id)
);