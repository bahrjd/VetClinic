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


INSERT INTO [dbo].[Address]
([Street]                 ,[City]       ,[State] ,[Zip]		) VALUES
 ('123 Main St'			  ,'Scottsdale' ,'AZ'    ,'85255'	)
,('2770 Doubletree Rd'	  ,'Scottsdale' ,'AZ'    ,'85255'	)
,('1440 Mountain View Ln' ,'Scottsdale' ,'AZ'    ,'85255'	)
,('14430 N 83rd Ave'	  ,'Scottsdale' ,'AZ'    ,'85255'	)
,('1220 Shea Blvd'		  ,'Scottsdale' ,'AZ'    ,'85255'	)
,('1660 N Scottsdale Rd'  ,'Scottsdale' ,'AZ'    ,'85255'	)
GO

INSERT INTO [dbo].[Clinic]
([AddressId] ,[Name]           ,[Hours]			) VALUES
 (1          ,'Birds N Beasts' ,'10AM to 5PM'	)
,(2          ,'Pets N Stuff'   ,'8AM to 7PM'	)
,(3          ,'The Last Walk'  ,'11AM to 2PM'	)
GO

INSERT INTO [dbo].[Doctor]
([ClinicId]  ,[FirstName] ,[LastName] ,[Email]						) VALUES
 (1          ,'John'      ,'Smith'	  ,'john.smith@gmail.com'		)
,(2          ,'Mary'      ,'Johnson'  ,'mary.johnson@yahoo.com'		)
,(3          ,'Nancy'     ,'Jones'	  ,'nancy.jones@hotmail.com'	)
GO

INSERT INTO [dbo].[Patient]
([AddressId]  ,[Name]      ,[Species] ,[DOB]						) VALUES
 (4          ,'Killer'	   ,'cat'     ,'1980-01-01 00:00:00.000'	)
,(5          ,'Pinkie Pie' ,'pony'    ,'1995-02-02 00:00:00.000'	)
,(6          ,'Nemo'	   ,'fish'    ,'2015-03-03 00:00:00.000'	)
GO