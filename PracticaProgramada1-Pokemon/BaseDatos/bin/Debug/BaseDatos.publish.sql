﻿/*
Deployment script for Pokemon

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Pokemon"
:setvar DefaultFilePrefix "Pokemon"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 8873b9de-f641-436f-9b3a-c2743d12152a is skipped, element [dbo].[PokemonxEquipos].[Id] (SqlSimpleColumn) will not be renamed to IdPokemon';


GO
PRINT N'Rename refactoring operation with key 64d23998-d657-4839-af11-e2b872b02eae is skipped, element [dbo].[Equipos].[Id] (SqlSimpleColumn) will not be renamed to IdEquipo';


GO
PRINT N'Creating Table [dbo].[Entrenadores]...';


GO
CREATE TABLE [dbo].[Entrenadores] (
    [Id]     UNIQUEIDENTIFIER NOT NULL,
    [Nombre] VARBINARY (MAX)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating Table [dbo].[Equipos]...';


GO
CREATE TABLE [dbo].[Equipos] (
    [IdEquipo]     UNIQUEIDENTIFIER NOT NULL,
    [IdEntrenador] UNIQUEIDENTIFIER NOT NULL,
    [Nombre]       VARBINARY (MAX)  NOT NULL,
    PRIMARY KEY CLUSTERED ([IdEquipo] ASC)
);


GO
PRINT N'Creating Table [dbo].[Pokemon]...';


GO
CREATE TABLE [dbo].[Pokemon] (
    [Id]     UNIQUEIDENTIFIER NOT NULL,
    [Numero] INT              NOT NULL,
    [Nivel]  INT              NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating Table [dbo].[PokemonxEquipos]...';


GO
CREATE TABLE [dbo].[PokemonxEquipos] (
    [IdPokemon] UNIQUEIDENTIFIER NOT NULL,
    [IdEquipo]  UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPokemon] ASC)
);


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '8873b9de-f641-436f-9b3a-c2743d12152a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('8873b9de-f641-436f-9b3a-c2743d12152a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '64d23998-d657-4839-af11-e2b872b02eae')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('64d23998-d657-4839-af11-e2b872b02eae')

GO

GO
PRINT N'Update complete.';


GO
