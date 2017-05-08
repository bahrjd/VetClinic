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

INSERT INTO [dbo].[Patient]
([AddressId]  ,[Name]      ,[Species] ,[DOB]						) VALUES
 (4          ,'Killer'	   ,'cat'     ,'1980-01-01 00:00:00.000'	)
,(5          ,'Pinkie Pie' ,'pony'    ,'1995-02-02 00:00:00.000'	)
,(6          ,'Nemo'	   ,'fish'    ,'2015-03-03 00:00:00.000'	)
GO