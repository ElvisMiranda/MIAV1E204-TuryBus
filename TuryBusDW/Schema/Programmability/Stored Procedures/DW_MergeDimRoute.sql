CREATE PROCEDURE [dbo].[DW_MergeDimRoute]
AS
BEGIN
    UPDATE ds
    SET 
     ds.[Name]=sc.[Name],
      ds.[Description]=sc.[Description],
      ds.Distance=sc.Distance,
      ds.Price=sc.Price


    FROM [dbo].[DimRoute] ds
    INNER JOIN [staging].[Route] sc ON ds.RouteSK = sc.RouteSK;
END
GO