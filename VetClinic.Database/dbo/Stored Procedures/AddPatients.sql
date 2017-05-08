CREATE PROCEDURE [dbo].[AddPatients] 
	 @AddressId int
	,@Name nvarchar(200)
	,@Species nvarchar(200)
	,@DOB datetime
	,@PatientId int out
AS
BEGIN
INSERT INTO [dbo].[Patient]
	([AddressId] ,[Name] ,[Species] ,[DOB]	) VALUES
	(@AddressId  ,@Name  ,@Species  ,@DOB	)
	set @PatientId = @@IDENTITY
END