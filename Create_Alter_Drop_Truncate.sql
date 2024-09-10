-- CREATE DATABASE via Query

CREATE DATABASE TestDb;

-- List all databases in SQL Server:
SELECT name
FROM master.sys.databases
ORDER BY name;

-- List all databases via stored procedure sp_database
EXEC sp_databases;

-- Create a table
CREATE TABLE dbo.offices
(
    office_id INT PRIMARY KEY IDENTITY,
    office_name NVARCHAR(40) NOT NULL,
    office NVARCHAR(255) NOT NULL,
    phone VARCHAR(20),
);

CREATE TABLE offices_v1
(
    of_id INT PRIMARY KEY IDENTITY,

)

-- Read data from a table
SELECT * FROM dbo.offices;
SELECT * FROM offices_v1;

-- ALTER Command
ALTER TABLE dbo.offices
ADD landline VARCHAR(20);

-- Rename a column using Stored Procedure
EXEC sp_rename 'offices.landline', 'offcies.land';

-- Read data from a table
SELECT * FROM dbo.offices;

-- Remove a column fromm a table
ALTER TABLE dbo.offices
DROP COLUMN [offcies.land];

-- delete all rows one by one from dbo.offices
DELETE FROM dbo.offices;

-- Read data from a table
SELECT * FROM dbo.offices;

-- drop a table
DROP TABLE IF EXISTS dbo.offices;

-- Create & Truncate from a table
-- Create a table
CREATE TABLE customer_groups (
    group_id INT PRIMARY KEY IDENTITY(1, 1), -- Here IDENTITY(1,1) means - start the value from 1, auto increment by 1
    group_name VARCHAR(50) NOT NULL
);

-- insert values into the table
INSERT INTO customer_groups(group_name)
VALUES
    ('Inter Company'),
    ('Third Party'),
    ('One Time');

-- Display data in the table
SELECT * FROM customer_groups;

-- Truncate the table
TRUNCATE TABLE customer_groups;

-- Display data in the table
SELECT * FROM customer_groups;