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

INSERT INTO [dbo].[Clinic]
([AddressId] ,[Name]           ,[Hours]			) VALUES
 (1          ,'Birds N Beasts' ,'10AM to 5PM'	)
,(2          ,'Pets N Stuff'   ,'8AM to 7PM'	)
,(3          ,'The Last Walk'  ,'11AM to 2PM'	)
GO