/*
Post-Deployment Script Template
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.
 Use SQLCMD syntax to include a file in the post-deployment script.
 Example:      :r .\myfile.sql
 Use SQLCMD syntax to reference a variable in the post-deployment script.
 Example:      :setvar TableName MyTable
               SELECT * FROM [$(TableName)]
--------------------------------------------------------------------------------------
*/

-- Verificar si no existe una entrada en PackageConfig para la tabla 'Bus'
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
              WHERE [TableName] = 'Bus')
BEGIN
    INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Bus', 0)
END
GO

-- Verificar si no existe una entrada en PackageConfig para la tabla 'Route'
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
              WHERE [TableName] = 'Route')
BEGIN
    INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Route', 0)
END
GO

-- Verificar si no existe una entrada en PackageConfig para la tabla 'Stop'
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
              WHERE [TableName] = 'Stop')
BEGIN
    INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Stop', 0)
END
GO

-- Verificar si no existe una entrada en PackageConfig para la tabla 'Services'
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
              WHERE [TableName] = 'Services')
BEGIN
    INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Services', 0)
END
GO

-- Verificar si no existe una entrada en PackageConfig para la tabla 'Ticket'
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
              WHERE [TableName] = 'Ticket')
BEGIN
    INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Ticket', 0)
END
GO

---###########################

GO

-- Verificar si no existen fechas en DimDate y llenarlas
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimDate])
BEGIN
    BEGIN TRAN 
        DECLARE @startdate DATE = '2020-01-01',
                @enddate   DATE = '2025-01-01';
        DECLARE @datelist TABLE(FullDate DATE);

    -- Si no se especifica @startdate, obtener la primera fecha de DimDate
    IF @startdate IS NULL
    BEGIN
        SELECT TOP 1 
            @startdate = FullDate
        FROM dbo.DimDate 
        ORDER BY DateKey ASC;
    END

    -- Insertar fechas desde @startdate hasta @enddate
    WHILE (@startdate <= @enddate)
    BEGIN 
        INSERT INTO @datelist(FullDate)
        SELECT @startdate;

        SET @startdate = DATEADD(dd,1,@startdate);
    END

    -- Insertar las fechas en DimDate
    INSERT INTO dbo.DimDate (DateKey, FullDate, DayNumberOfWeek, DayNameOfWeek, 
                             DayNumberOfMonth, DayNumberOfYear, WeekNumberOfYear, 
                             [MonthName], MonthNumberOfYear, CalendarQuarter, 
                             CalendarYear, CalendarSemester)
    SELECT 
        DateKey = CONVERT(INT, CONVERT(VARCHAR, dl.FullDate, 112)),
        FullDate = dl.FullDate,
        DayNumberOfWeek = DATEPART(weekday, dl.FullDate),  -- Cambié 'dw' por 'weekday' para mayor claridad
        DayNameOfWeek = DATENAME(WEEKDAY, dl.FullDate),
        DayNumberOfMonth = DATEPART(day, dl.FullDate),
        DayNumberOfYear = DATEPART(dy, dl.FullDate),
        WeekNumberOfYear = DATEPART(wk, dl.FullDate),  -- Corregí el nombre de la columna 'FUllDate'
        [MonthName] = DATENAME(MONTH, dl.FullDate),
        MonthNumberOfYear = MONTH(dl.FullDate),
        CalendarQuarter = DATEPART(quarter, dl.FullDate),  -- Cambié 'qq' por 'quarter' para mayor claridad
        CalendarYear = YEAR(dl.FullDate),
        CalendarSemester = CASE 
            WHEN DATEPART(quarter, dl.FullDate) IN (1, 2) THEN 1
            WHEN DATEPART(quarter, dl.FullDate) IN (3, 4) THEN 2
        END
    FROM @datelist dl
    LEFT OUTER JOIN dbo.DimDate dd ON (dl.FullDate = dd.FullDate)
    WHERE dd.FullDate IS NULL;

    COMMIT TRAN;
END
GO
