CREATE TABLE staging.stop (
    StopSK INT NOT NULL,
    PlaceName VARCHAR(100),
    ActivityDescription VARCHAR(50) NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    StopDuration INT DEFAULT 0
);
GO