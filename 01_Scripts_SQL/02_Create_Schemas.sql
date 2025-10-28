-- Création des dimensions
-- TP1 - LightAdventureWorksDW
-- Date: 2025-10-28

USE LightAdventureWorksDW;
GO

-- ===========================================
-- DIMENSION 1: Customers
-- ===========================================
CREATE TABLE dbo.Customers (
    CustomerKey INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    CustomerAlternateKey INT NOT NULL,
    FullName NVARCHAR(150) NULL,
    Address NVARCHAR(150) NULL,
    EmailAddress NVARCHAR(50) NULL,
    City NVARCHAR(30) NULL,
    StateProvince NVARCHAR(50) NULL,
    CountryRegion NVARCHAR(50) NULL
);
GO

PRINT 'Table Customers créée avec succès';
GO

-- ===========================================
-- DIMENSION 2: Products
-- ===========================================
CREATE TABLE dbo.Products (
    ProductKey INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ProductName NVARCHAR(50) NULL,
    Color NVARCHAR(15) NULL,
    Size NVARCHAR(50) NULL,
    SubcategoryName NVARCHAR(50) NULL,
    CategoryName NVARCHAR(50) NULL
);
GO

PRINT 'Table Products créée avec succès';
GO

-- ===========================================
-- DIMENSION 3: Dates
-- ===========================================
CREATE TABLE dbo.Dates (
    DateKey INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    FullDate DATE NOT NULL,
    MonthNumberName NVARCHAR(15) NULL,
    CalendarQuarter TINYINT NULL,
    CalendarYear SMALLINT NULL
);
GO

PRINT 'Table Dates créée avec succès';
GO