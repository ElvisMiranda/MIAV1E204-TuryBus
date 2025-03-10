CREATE TABLE DimPlaces (
    place_sk INT IDENTITY(1,1) CONSTRAINT PK_dimPlaces PRIMARY KEY,
    place_id INT NOT NULL,
    name NVARCHAR(255) NOT NULL
);
