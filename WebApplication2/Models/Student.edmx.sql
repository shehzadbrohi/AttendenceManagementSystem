
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/16/2017 09:42:24
-- Generated from EDMX file: D:\WebApplication2\WebApplication2\Models\Student.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [student];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [BatchId] int  NOT NULL
);
GO

-- Creating table 'Batches'
CREATE TABLE [dbo].[Batches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Batches'
ALTER TABLE [dbo].[Batches]
ADD CONSTRAINT [PK_Batches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BatchId] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_BatchStudent]
    FOREIGN KEY ([BatchId])
    REFERENCES [dbo].[Batches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BatchStudent'
CREATE INDEX [IX_FK_BatchStudent]
ON [dbo].[Students]
    ([BatchId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------