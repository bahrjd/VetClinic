CREATE PROCEDURE [dbo].[GetPatients]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [PatientId] ,[AddressId] ,[Name] ,[Species] ,[DOB]
	FROM [dbo].[Patient]
END