CREATE PROCEDURE [dbo].[AddAddress]
	 @Street nvarchar(200)
	,@City nvarchar(200)
	,@State nvarchar(2)
	,@Zip nvarchar(5)
	,@AddressId int out
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Address]
    ([Street]  ,[City] ,[State] ,[Zip]	) VALUES
	 (@Street  ,@City  ,@State  ,@Zip	)
	 set @AddressId = @@IDENTITY
END