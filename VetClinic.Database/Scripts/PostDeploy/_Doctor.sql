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

INSERT INTO [dbo].[Doctor]
([ClinicId]  ,[FirstName] ,[LastName] ,[Email]						) VALUES
 (1          ,'John'      ,'Smith'	  ,'john.smith@gmail.com'		)
,(2          ,'Mary'      ,'Johnson'  ,'mary.johnson@yahoo.com'		)
,(3          ,'Nancy'     ,'Jones'	  ,'nancy.jones@hotmail.com'	)
GO