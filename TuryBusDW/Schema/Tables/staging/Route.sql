CREATE TABLE staging.route (
    RouteSK INT NOT NULL,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(100) NOT NULL,
    Distance DECIMAL(10,2) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
GO