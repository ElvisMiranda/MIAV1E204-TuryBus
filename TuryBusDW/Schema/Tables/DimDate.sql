CREATE TABLE DimDate (
    date_Key int NOT NULL CONSTRAINT PK_DimDate PRIMARY KEY,
    full_date DATE NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    day INT NOT NULL
);

