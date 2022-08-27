USE master
GO

/* Creating a new login*/

CREATE LOGIN Admin1
WITH PASSWORD = 'Admin12345',
DEFAULT_DATABASE=[master]
GO

/* Creating our database*/

CREATE DATABASE [StudentPortal]
GO

/* Creating our tables */

Use [StudentPortal]
GO

CREATE TABLE Student(
student_id int PRIMARY KEY identity(1,1),
student_name varchar(50) not null,
student_address varchar(50) not null,
student_email varchar(50) not null,
student_password varchar(20) not null,
)

GO

INSERT INTO Student(student_name, student_address, student_email, student_password)
VALUES('Gabriel','6474 Pine Street','example@domain.com','apple_bees'),
('James','6474 Pine Street','example2@domain.com','secure123'),
('Gomez','6474 Pine Street','example3@domain.com','ice_cream'),
('Theo','6474 Pine Street','example4@domain.com','pop_tart')

GO

CREATE TABLE Administrator(
admin_id int PRIMARY KEY identity(1,1),
admin_name varchar(50) not null,
password varchar(50) not null,
contact nvarchar(20) not null,
)

GO

INSERT INTO Administrator(admin_name,password,contact)
VALUES('jake','password','082343435345'),
('mike','password','082343435345'),
('lopez','password','082343435345'),
('anthony','password','082343435345')

GO

CREATE TABLE Register(
register_id int PRIMARY KEY identity(1,1),
student_name varchar(50) not null,
student_address varchar(50) not null,
student_email varchar(50) not null,
student_password varchar(20) not null,
course_name varchar(20) not null
)

GO

INSERT INTO Register(student_name, student_address, student_email, student_password, course_name)
VALUES('Gabriel','6474 Pine Street','example@domain.com','apple_bees','PRG 3x1'),
('James','6474 Pine Street','example2@domain.com','secure123','DBD 3x1'),
('Gomez','6474 Pine Street','example3@domain.com','ice_cream','WPR 3x1'),
('Theo','6474 Pine Street','example4@domain.com','pop_tart','SEN 3x1')

GO

/* Granting access to our database */

DECLARE @dbname VARCHAR(50)   
DECLARE @statement NVARCHAR(max)

DECLARE db_cursor CURSOR 
LOCAL FAST_FORWARD
FOR  
SELECT name
FROM MASTER.dbo.sysdatabases
WHERE name IN ('StudentPortal')  
OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @dbname  
WHILE @@FETCH_STATUS = 0  
BEGIN  

SELECT @statement = 'use '+@dbname +';'+ 'CREATE USER Admin1
FOR LOGIN Admin1; EXEC sp_addrolemember N''db_datareader'', 
Admin1;EXEC sp_addrolemember N''db_datawriter'', Admin1'

exec sp_executesql @statement

FETCH NEXT FROM db_cursor INTO @dbname  
END  
CLOSE db_cursor  
DEALLOCATE db_cursor 
GO


