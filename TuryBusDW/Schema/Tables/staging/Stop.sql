CREATE TABLE staging.stop (
    StopSK INT NOT NULL,
    PlaceName NVARCHAR(100) NOT NULL,
    ActivityDescription NVARCHAR(100) NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    StopDuration INT DEFAULT 0
);
GO