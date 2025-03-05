CREATE TABLE FactRepairs (
    repair_id INT PRIMARY KEY IDENTITY(1,1),
    bus_sk INT NOT NULL,
    date_Key INT NOT NULL,
    repair_sk INT NOT NULL,
    total_time_spent INT NOT NULL, -- Minutos
    comments NVARCHAR(500)
);
GO

ALTER TABLE FactRepairs ADD CONSTRAINT FK_factRepairs_dimBusses FOREIGN KEY (bus_sk) REFERENCES DimBusses(bus_sk)
GO

ALTER TABLE FactRepairs ADD CONSTRAINT FK_factRepairs_dimDate FOREIGN KEY (date_Key) REFERENCES DimDate(date_Key)
GO

ALTER TABLE FactRepairs ADD CONSTRAINT FK_factRepairs_dimRepairs FOREIGN KEY (repair_sk) REFERENCES DimRepairs(repair_sk)
GO