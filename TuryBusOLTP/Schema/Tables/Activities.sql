CREATE TABLE Activities (
    id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_activities PRIMARY KEY,
    description NVARCHAR(100), -- Actividad a realizar
);

