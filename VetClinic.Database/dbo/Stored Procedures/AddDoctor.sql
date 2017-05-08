CREATE PROCEDURE [dbo].[AddDoctor] 
	 @clinicId int
	,@firstName nvarchar(200)
	,@lastName nvarchar(200)
	,@email nvarchar(200)
	,@doctorId int out
AS
BEGIN
	SET NOCOUNT ON;
    INSERT INTO [dbo].[Doctor]
    ([ClinicId] ,[FirstName] ,[LastName] ,[Email]	) VALUES
    (@clinicId  ,@firstName  ,@lastName  ,@email		)
	SET @DoctorId = @@IDENTITY
END