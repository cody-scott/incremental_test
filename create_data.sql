IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'TestDB')
  BEGIN
    CREATE DATABASE TestDB;
END
GO

USE TestDB
GO

DROP TABLE IF EXISTS dbo.tst
GO

create table dbo.tst (
	ID BIGINT,
	DT DATETIME2
)
GO


INSERT INTO dbo.tst (ID, DT)
VALUES
(1, '2020-01-01'),
(2, '2023-01-01'),
(3, GETDATE());
GO

SELECT * FROM TestDB.dbo.tst
GO
