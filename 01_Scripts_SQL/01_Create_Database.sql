USE master; 
GO

IF DB_ID('LightAdventureWorksDW') IS NOT NULL 
    DROP DATABASE LightAdventureWorksDW; 
GO 

CREATE DATABASE LightAdventureWorksDW 
ON PRIMARY 
(
    NAME = N'LightAdventureWorksDW', 
    FILENAME = N'C:\MonProjet_DW\LightAdventureWorksDW.mdf', 
    SIZE = 307200KB,
    FILEGROWTH = 10240KB
) 
LOG ON 
(
    NAME = N'LightAdventureWorksDW_log', 
    FILENAME = N'C:\MonProjet_DW\LightAdventureWorksDW_log.ldf', 
    SIZE = 51200KB,
    FILEGROWTH = 10%
); 
GO 

ALTER DATABASE LightAdventureWorksDW SET RECOVERY SIMPLE WITH NO_WAIT; 
GO