
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/25/2017 09:12:07
-- Generated from EDMX file: C:\Users\jayweb\GIT Avril 2017\SGSprojectAvril2017\Sge.persistance\Data\SGS_db.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SGSproject_db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CoursFormationsCours]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CoursFormations] DROP CONSTRAINT [FK_CoursFormationsCours];
GO
IF OBJECT_ID(N'[dbo].[FK_CoursFormationsFormations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CoursFormations] DROP CONSTRAINT [FK_CoursFormationsFormations];
GO
IF OBJECT_ID(N'[dbo].[FK_InscriptionsSessions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inscriptions] DROP CONSTRAINT [FK_InscriptionsSessions];
GO
IF OBJECT_ID(N'[dbo].[FK_InscriptionsEtudiants]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inscriptions] DROP CONSTRAINT [FK_InscriptionsEtudiants];
GO
IF OBJECT_ID(N'[dbo].[FK_SessionsCours]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sessions1] DROP CONSTRAINT [FK_SessionsCours];
GO
IF OBJECT_ID(N'[dbo].[FK_SessionsEnseignants]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sessions1] DROP CONSTRAINT [FK_SessionsEnseignants];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Formations1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Formations1];
GO
IF OBJECT_ID(N'[dbo].[Cours]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cours];
GO
IF OBJECT_ID(N'[dbo].[Enseignants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Enseignants];
GO
IF OBJECT_ID(N'[dbo].[Etudiants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Etudiants];
GO
IF OBJECT_ID(N'[dbo].[Sessions1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sessions1];
GO
IF OBJECT_ID(N'[dbo].[CoursFormations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CoursFormations];
GO
IF OBJECT_ID(N'[dbo].[Inscriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inscriptions];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Formations1'
CREATE TABLE [dbo].[Formations1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nom] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cours'
CREATE TABLE [dbo].[Cours] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Titre] nvarchar(max)  NOT NULL,
    [Description] nvarchar(300)  NULL
);
GO

-- Creating table 'Enseignants'
CREATE TABLE [dbo].[Enseignants] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nom] nvarchar(max)  NOT NULL,
    [Prenom] nvarchar(max)  NOT NULL,
    [Titre] nvarchar(max)  NULL,
    [Bio] nvarchar(300)  NULL,
    [Rue] nvarchar(max)  NOT NULL,
    [Npa] nvarchar(max)  NOT NULL,
    [Localite] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Etudiants'
CREATE TABLE [dbo].[Etudiants] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nom] nvarchar(max)  NOT NULL,
    [Prenom] nvarchar(max)  NOT NULL,
    [Rue] nvarchar(max)  NOT NULL,
    [Npa] nvarchar(max)  NOT NULL,
    [Localite] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Sessions1'
CREATE TABLE [dbo].[Sessions1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MaxInscription] int  NOT NULL,
    [AnneeAcademique] int  NOT NULL,
    [JourCours] nvarchar(max)  NOT NULL,
    [HeureCours] datetime  NOT NULL,
    [DateDebutCours] datetime  NOT NULL,
    [DateFinCours] datetime  NOT NULL,
    [CoursId] int  NOT NULL,
    [EnseignantsId] int  NOT NULL
);
GO

-- Creating table 'CoursFormations'
CREATE TABLE [dbo].[CoursFormations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CoursId] int  NOT NULL,
    [FormationsId] int  NOT NULL
);
GO

-- Creating table 'Inscriptions'
CREATE TABLE [dbo].[Inscriptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SessionsId] int  NOT NULL,
    [EtudiantsId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Formations1'
ALTER TABLE [dbo].[Formations1]
ADD CONSTRAINT [PK_Formations1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cours'
ALTER TABLE [dbo].[Cours]
ADD CONSTRAINT [PK_Cours]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Enseignants'
ALTER TABLE [dbo].[Enseignants]
ADD CONSTRAINT [PK_Enseignants]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Etudiants'
ALTER TABLE [dbo].[Etudiants]
ADD CONSTRAINT [PK_Etudiants]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sessions1'
ALTER TABLE [dbo].[Sessions1]
ADD CONSTRAINT [PK_Sessions1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CoursFormations'
ALTER TABLE [dbo].[CoursFormations]
ADD CONSTRAINT [PK_CoursFormations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Inscriptions'
ALTER TABLE [dbo].[Inscriptions]
ADD CONSTRAINT [PK_Inscriptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CoursId] in table 'CoursFormations'
ALTER TABLE [dbo].[CoursFormations]
ADD CONSTRAINT [FK_CoursFormationsCours]
    FOREIGN KEY ([CoursId])
    REFERENCES [dbo].[Cours]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CoursFormationsCours'
CREATE INDEX [IX_FK_CoursFormationsCours]
ON [dbo].[CoursFormations]
    ([CoursId]);
GO

-- Creating foreign key on [FormationsId] in table 'CoursFormations'
ALTER TABLE [dbo].[CoursFormations]
ADD CONSTRAINT [FK_CoursFormationsFormations]
    FOREIGN KEY ([FormationsId])
    REFERENCES [dbo].[Formations1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CoursFormationsFormations'
CREATE INDEX [IX_FK_CoursFormationsFormations]
ON [dbo].[CoursFormations]
    ([FormationsId]);
GO

-- Creating foreign key on [SessionsId] in table 'Inscriptions'
ALTER TABLE [dbo].[Inscriptions]
ADD CONSTRAINT [FK_InscriptionsSessions]
    FOREIGN KEY ([SessionsId])
    REFERENCES [dbo].[Sessions1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InscriptionsSessions'
CREATE INDEX [IX_FK_InscriptionsSessions]
ON [dbo].[Inscriptions]
    ([SessionsId]);
GO

-- Creating foreign key on [EtudiantsId] in table 'Inscriptions'
ALTER TABLE [dbo].[Inscriptions]
ADD CONSTRAINT [FK_InscriptionsEtudiants]
    FOREIGN KEY ([EtudiantsId])
    REFERENCES [dbo].[Etudiants]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InscriptionsEtudiants'
CREATE INDEX [IX_FK_InscriptionsEtudiants]
ON [dbo].[Inscriptions]
    ([EtudiantsId]);
GO

-- Creating foreign key on [CoursId] in table 'Sessions1'
ALTER TABLE [dbo].[Sessions1]
ADD CONSTRAINT [FK_SessionsCours]
    FOREIGN KEY ([CoursId])
    REFERENCES [dbo].[Cours]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SessionsCours'
CREATE INDEX [IX_FK_SessionsCours]
ON [dbo].[Sessions1]
    ([CoursId]);
GO

-- Creating foreign key on [EnseignantsId] in table 'Sessions1'
ALTER TABLE [dbo].[Sessions1]
ADD CONSTRAINT [FK_SessionsEnseignants]
    FOREIGN KEY ([EnseignantsId])
    REFERENCES [dbo].[Enseignants]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SessionsEnseignants'
CREATE INDEX [IX_FK_SessionsEnseignants]
ON [dbo].[Sessions1]
    ([EnseignantsId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------