CREATE PROCEDURE [dbo].[AddClinic] 
	 @AddressId int
	,@Name nvarchar(200)
	,@Hours nvarchar(200)
	,@ClinicId int out
AS
BEGIN
	INSERT INTO [dbo].[Clinic]
	([AddressId] ,[Name] ,[Hours]	) VALUES
	(@AddressId  ,@Name  ,@Hours	)
	SET @ClinicId = @@IDENTITY
END