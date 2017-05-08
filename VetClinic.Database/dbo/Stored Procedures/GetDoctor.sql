CREATE PROCEDURE [dbo].[GetDoctor]
AS
BEGIN
	SET NOCOUNT ON;
    SELECT [DoctorId] ,[ClinicId] ,[FirstName] ,[LastName] ,[Email]
	FROM [dbo].[Doctor]
END