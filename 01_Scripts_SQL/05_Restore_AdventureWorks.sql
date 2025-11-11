-- Restauration de la base AdventureWorks2022
-- Préparation TP2
-- Tout dans C:\MonProjet_DW\

USE master;
GO

-- Chemin du backup
DECLARE @BackupPath NVARCHAR(500) = 'C:\MonProjet_DW\05_Backups\AdventureWorks2022.bak';

PRINT 'Restauration en cours...';
PRINT 'Fichier source: ' + @BackupPath;
GO

-- Restaurer la base (TOUT dans C:\MonProjet_DW\)
RESTORE DATABASE AdventureWorks2022
FROM DISK = 'C:\MonProjet_DW\05_Backups\AdventureWorks2022.bak'
WITH 
    MOVE 'AdventureWorks2022' TO 'C:\MonProjet_DW\AdventureWorks2022.mdf',
    MOVE 'AdventureWorks2022_log' TO 'C:\MonProjet_DW\AdventureWorks2022_log.ldf',
    REPLACE,
    STATS = 10;
GO

PRINT '========================================';
PRINT 'AdventureWorks2022 restaurée avec succès !';
PRINT 'Fichiers créés dans C:\MonProjet_DW\';
PRINT '========================================';
GO

-- Vérifier les tables
USE AdventureWorks2022;
GO

SELECT 
    SCHEMA_NAME(schema_id) + '.' + name AS TableName,
    create_date AS DateCreation
FROM sys.tables
ORDER BY TableName;
GO
