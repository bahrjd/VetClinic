CREATE PROCEDURE [dbo].[GetAddresses] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [AddressId] ,[Street] ,[City] ,[State] ,[Zip]
	FROM [dbo].[Address]
END