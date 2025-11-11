-- Création de la table de faits InternetSales
-- TP1 - LightAdventureWorksDW - Section III

USE LightAdventureWorksDW;
GO

-- ===========================================
-- TABLE DE FAITS: InternetSales
-- ===========================================
CREATE TABLE dbo.InternetSales (
    InternetSalesKey INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    CustomerKey INT NOT NULL,
    ProductKey INT NOT NULL,
    DateKey INT NOT NULL,
    OrderQuantity SMALLINT NOT NULL DEFAULT 0,
    SalesAmount MONEY NOT NULL DEFAULT 0
);
GO

PRINT 'Table de faits InternetSales créée avec succès';
GO

-- ===========================================
-- FOREIGN KEYS (Clés étrangères)
-- ===========================================
-- Lien avec dimension Customers
ALTER TABLE dbo.InternetSales ADD CONSTRAINT
    FK_InternetSales_Customers FOREIGN KEY(CustomerKey)
    REFERENCES dbo.Customers (CustomerKey);
GO

-- Lien avec dimension Products
ALTER TABLE dbo.InternetSales ADD CONSTRAINT
    FK_InternetSales_Products FOREIGN KEY(ProductKey)
    REFERENCES dbo.Products (ProductKey);
GO

-- Lien avec dimension Dates
ALTER TABLE dbo.InternetSales ADD CONSTRAINT
    FK_InternetSales_Dates FOREIGN KEY(DateKey)
    REFERENCES dbo.Dates (DateKey);
GO

PRINT 'Contraintes de clés étrangères ajoutées avec succès';
PRINT 'Data Warehouse LightAdventureWorksDW créé avec succès !';
GO