CREATE TABLE Places (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_places PRIMARY KEY,
    name NVARCHAR(100) NOT NULL
     [rowversion]  [timestamp]         NOT NULL
);
GO
