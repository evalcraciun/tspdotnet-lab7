
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/01/2020 17:11:50
-- Generated from EDMX file: C:\Users\Ciprian Craciun\source\repos\Proiect2-ObjectWCF\MyPhotosWCF\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Proiect2];
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

-- Creating table 'Folders'
CREATE TABLE [dbo].[Folders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [File_FileId] int  NOT NULL
);
GO

-- Creating table 'Files'
CREATE TABLE [dbo].[Files] (
    [FileId] int IDENTITY(1,1) NOT NULL,
    [FileName] nvarchar(max)  NOT NULL,
    [FileDesc] nvarchar(max)  NOT NULL,
    [FileType] nvarchar(max)  NOT NULL,
    [FileSize] nvarchar(max)  NOT NULL,
    [FilePath] nvarchar(max)  NOT NULL,
    [FileTags] nvarchar(max)  NOT NULL,
    [FolderId] int  NOT NULL,
    [FileDate] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Folders'
ALTER TABLE [dbo].[Folders]
ADD CONSTRAINT [PK_Folders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [FileId] in table 'Files'
ALTER TABLE [dbo].[Files]
ADD CONSTRAINT [PK_Files]
    PRIMARY KEY CLUSTERED ([FileId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [File_FileId] in table 'Folders'
ALTER TABLE [dbo].[Folders]
ADD CONSTRAINT [FK_FolderFile]
    FOREIGN KEY ([File_FileId])
    REFERENCES [dbo].[Files]
        ([FileId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FolderFile'
CREATE INDEX [IX_FK_FolderFile]
ON [dbo].[Folders]
    ([File_FileId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------