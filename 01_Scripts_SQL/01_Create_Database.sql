-- Script de création des databases
-- Auteur: Votre nom
-- Date: 2025-10-28

USE master;
GO

-- Créer database Staging
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Staging')
BEGIN
    CREATE DATABASE Staging;
    PRINT 'Database Staging créée avec succès';
END
GO

-- Créer database DW_Project
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DW_Project')
BEGIN
    CREATE DATABASE DW_Project;
    PRINT 'Database DW_Project créée avec succès';
END
GO
