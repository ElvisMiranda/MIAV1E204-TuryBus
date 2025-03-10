CREATE TABLE FactStops (
    stop_id INT PRIMARY KEY IDENTITY(1,1),
    service_id INT NOT NULL,
    place_sk INT NOT NULL,
    date_Key INT NOT NULL,
    activity NVARCHAR(255),
    total_stop_duration INT NOT NULL -- Minutos
);
GO

ALTER TABLE FactStops ADD CONSTRAINT FK_factStops_factServices FOREIGN KEY (service_id) REFERENCES FactServices(service_id)
GO

ALTER TABLE FactStops ADD CONSTRAINT FK_factStops_dimPlaces FOREIGN KEY (place_sk) REFERENCES DimPlaces(place_sk)
GO

ALTER TABLE FactStops ADD CONSTRAINT FK_factStops_dimDate FOREIGN KEY (date_Key) REFERENCES DimDate(date_Key)
GO