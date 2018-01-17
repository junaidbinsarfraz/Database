
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/17/2018 11:16:39
-- Generated from EDMX file: C:\Users\junaid\documents\visual studio 2015\Projects\Database\Database.Repository\DB\MovieDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Movies];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_tblActorRole_tblRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblActorRole] DROP CONSTRAINT [FK_tblActorRole_tblRole];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMusic$Episode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMusic] DROP CONSTRAINT [FK_tblEpisodeMusic$Episode];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMusic$Music]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMusic] DROP CONSTRAINT [FK_tblEpisodeMusic$Music];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPerson$Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPerson] DROP CONSTRAINT [FK_tblPerson$Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPerson$Composer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPerson] DROP CONSTRAINT [FK_tblPerson$Composer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPerson$Director]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPerson] DROP CONSTRAINT [FK_tblPerson$Director];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPerson$Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPerson] DROP CONSTRAINT [FK_tblPerson$Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPerson$Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPerson] DROP CONSTRAINT [FK_tblPerson$Users];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeries$Media]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeries] DROP CONSTRAINT [FK_tblTVSeries$Media];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersInRoles_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [FK_UsersInRoles_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersInRoles_UsersRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [FK_UsersInRoles_UsersRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_tblActorRole$ActorActor_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblActorRole] DROP CONSTRAINT [FK_tblActorRole$ActorActor_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisode$DirectorEpisode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisode] DROP CONSTRAINT [FK_tblEpisode$DirectorEpisode];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisode$ParentalRatingEpisode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisode] DROP CONSTRAINT [FK_tblEpisode$ParentalRatingEpisode];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisode$TVSeriesEpisode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisode] DROP CONSTRAINT [FK_tblEpisode$TVSeriesEpisode];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeActor$ActorEpisode_Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeActor] DROP CONSTRAINT [FK_tblEpisodeActor$ActorEpisode_Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeActor$EpisodeEpisode_Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeActor] DROP CONSTRAINT [FK_tblEpisodeActor$EpisodeEpisode_Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeGenre$EpisodeEpisode_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeGenre] DROP CONSTRAINT [FK_tblEpisodeGenre$EpisodeEpisode_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeGenre$GenreEpisode_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeGenre] DROP CONSTRAINT [FK_tblEpisodeGenre$GenreEpisode_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaAudio$AudioEpisode_Media_Audio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaAudio] DROP CONSTRAINT [FK_tblEpisodeMediaAudio$AudioEpisode_Media_Audio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaAudio$EpisodeEpisode_Media_Audio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaAudio] DROP CONSTRAINT [FK_tblEpisodeMediaAudio$EpisodeEpisode_Media_Audio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaAudio$MediaEpisode_Media_Audio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaAudio] DROP CONSTRAINT [FK_tblEpisodeMediaAudio$MediaEpisode_Media_Audio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaCodec$CodecEpisode_Media_Codec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaCodec] DROP CONSTRAINT [FK_tblEpisodeMediaCodec$CodecEpisode_Media_Codec];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaCodec$EpisodeEpisode_Media_Codec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaCodec] DROP CONSTRAINT [FK_tblEpisodeMediaCodec$EpisodeEpisode_Media_Codec];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaCodec$MediaEpisode_Media_Codec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaCodec] DROP CONSTRAINT [FK_tblEpisodeMediaCodec$MediaEpisode_Media_Codec];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaReleaseType$EpisodeEpisode_Media_ReleaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaReleaseType] DROP CONSTRAINT [FK_tblEpisodeMediaReleaseType$EpisodeEpisode_Media_ReleaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaReleaseType$MediaEpisode_Media_ReleaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaReleaseType] DROP CONSTRAINT [FK_tblEpisodeMediaReleaseType$MediaEpisode_Media_ReleaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaReleaseType$ReleaseTypeEpisode_Media_ReleaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaReleaseType] DROP CONSTRAINT [FK_tblEpisodeMediaReleaseType$ReleaseTypeEpisode_Media_ReleaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaResolution$EpisodeEpisode_Media_Resolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaResolution] DROP CONSTRAINT [FK_tblEpisodeMediaResolution$EpisodeEpisode_Media_Resolution];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaResolution$MediaEpisode_Media_Resolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaResolution] DROP CONSTRAINT [FK_tblEpisodeMediaResolution$MediaEpisode_Media_Resolution];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaResolution$ResolutionEpisode_Media_Resolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaResolution] DROP CONSTRAINT [FK_tblEpisodeMediaResolution$ResolutionEpisode_Media_Resolution];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaSpecials$EpisodeEpisode_Media_Specials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaSpecials] DROP CONSTRAINT [FK_tblEpisodeMediaSpecials$EpisodeEpisode_Media_Specials];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaSpecials$MediaEpisode_Media_Specials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaSpecials] DROP CONSTRAINT [FK_tblEpisodeMediaSpecials$MediaEpisode_Media_Specials];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeMediaSpecials$SpecialsEpisode_Media_Specials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeMediaSpecials] DROP CONSTRAINT [FK_tblEpisodeMediaSpecials$SpecialsEpisode_Media_Specials];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeNetwork$EpisodeEpisode_Network]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeNetwork] DROP CONSTRAINT [FK_tblEpisodeNetwork$EpisodeEpisode_Network];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeNetwork$NetworkEpisode_Network]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeNetwork] DROP CONSTRAINT [FK_tblEpisodeNetwork$NetworkEpisode_Network];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeProducer$EpisodeEpisode_Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeProducer] DROP CONSTRAINT [FK_tblEpisodeProducer$EpisodeEpisode_Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeProducer$ProducerEpisode_Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeProducer] DROP CONSTRAINT [FK_tblEpisodeProducer$ProducerEpisode_Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeStudio$EpisodeEpisode_Studio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeStudio] DROP CONSTRAINT [FK_tblEpisodeStudio$EpisodeEpisode_Studio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblEpisodeStudio$StudioEpisode_Studio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblEpisodeStudio] DROP CONSTRAINT [FK_tblEpisodeStudio$StudioEpisode_Studio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$DirectorMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$DirectorMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$ParentalRatingMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$ParentalRatingMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$tblAudiotblMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$tblAudiotblMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$tblCodectblMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$tblCodectblMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$tblMediatblMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$tblMediatblMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$tblReleaseTypetblMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$tblReleaseTypetblMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$tblResolutiontblMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$tblResolutiontblMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovie$tblSpecialstblMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovie] DROP CONSTRAINT [FK_tblMovie$tblSpecialstblMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieActor$ActorMovie_Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieActor] DROP CONSTRAINT [FK_tblMovieActor$ActorMovie_Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieActor$MovieMovie_Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieActor] DROP CONSTRAINT [FK_tblMovieActor$MovieMovie_Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieGenre$GenreMovie_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieGenre] DROP CONSTRAINT [FK_tblMovieGenre$GenreMovie_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieGenre$MovieMovie_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieGenre] DROP CONSTRAINT [FK_tblMovieGenre$MovieMovie_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieMusic$Movie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieMusic] DROP CONSTRAINT [FK_tblMovieMusic$Movie];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieMusic$Music]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieMusic] DROP CONSTRAINT [FK_tblMovieMusic$Music];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieProducer$MovieMovie_Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieProducer] DROP CONSTRAINT [FK_tblMovieProducer$MovieMovie_Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieProducer$ProducerMovie_Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieProducer] DROP CONSTRAINT [FK_tblMovieProducer$ProducerMovie_Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieStudio$MovieMovie_Studio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieStudio] DROP CONSTRAINT [FK_tblMovieStudio$MovieMovie_Studio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMovieStudio$StudioMovie_Studio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMovieStudio] DROP CONSTRAINT [FK_tblMovieStudio$StudioMovie_Studio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMusicComposer$Composer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMusicComposer] DROP CONSTRAINT [FK_tblMusicComposer$Composer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblMusicComposer$Music]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblMusicComposer] DROP CONSTRAINT [FK_tblMusicComposer$Music];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeries$ParentalRatingTVSeries]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeries] DROP CONSTRAINT [FK_tblTVSeries$ParentalRatingTVSeries];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesActor$ActorTVSeries_Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesActor] DROP CONSTRAINT [FK_tblTVSeriesActor$ActorTVSeries_Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesActor$TVSeriesTVSeries_Actor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesActor] DROP CONSTRAINT [FK_tblTVSeriesActor$TVSeriesTVSeries_Actor];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesDirector$DirectorTVSeries_Director]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesDirector] DROP CONSTRAINT [FK_tblTVSeriesDirector$DirectorTVSeries_Director];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesDirector$TVSeriesTVSeries_Director]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesDirector] DROP CONSTRAINT [FK_tblTVSeriesDirector$TVSeriesTVSeries_Director];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesGenre$GenreTVSeries_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesGenre] DROP CONSTRAINT [FK_tblTVSeriesGenre$GenreTVSeries_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesGenre$TVSeriesTVSeries_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesGenre] DROP CONSTRAINT [FK_tblTVSeriesGenre$TVSeriesTVSeries_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaAudio$AudioTVSeries_Media_Audio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaAudio] DROP CONSTRAINT [FK_tblTVSeriesMediaAudio$AudioTVSeries_Media_Audio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaAudio$MediaTVSeries_Media_Audio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaAudio] DROP CONSTRAINT [FK_tblTVSeriesMediaAudio$MediaTVSeries_Media_Audio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaAudio$TVSeriesTVSeries_Media_Audio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaAudio] DROP CONSTRAINT [FK_tblTVSeriesMediaAudio$TVSeriesTVSeries_Media_Audio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaCodec$CodecTVSeries_Media_Codec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaCodec] DROP CONSTRAINT [FK_tblTVSeriesMediaCodec$CodecTVSeries_Media_Codec];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaCodec$MediaTVSeries_Media_Codec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaCodec] DROP CONSTRAINT [FK_tblTVSeriesMediaCodec$MediaTVSeries_Media_Codec];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaCodec$TVSeriesTVSeries_Media_Codec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaCodec] DROP CONSTRAINT [FK_tblTVSeriesMediaCodec$TVSeriesTVSeries_Media_Codec];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaReleaseType$MediaTVSeries_Media_ReleaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaReleaseType] DROP CONSTRAINT [FK_tblTVSeriesMediaReleaseType$MediaTVSeries_Media_ReleaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaReleaseType$ReleaseTypeTVSeries_Media_ReleaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaReleaseType] DROP CONSTRAINT [FK_tblTVSeriesMediaReleaseType$ReleaseTypeTVSeries_Media_ReleaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaReleaseType$TVSeriesTVSeries_Media_ReleaseType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaReleaseType] DROP CONSTRAINT [FK_tblTVSeriesMediaReleaseType$TVSeriesTVSeries_Media_ReleaseType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaResolution$MediaTVSeries_Media_Resolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaResolution] DROP CONSTRAINT [FK_tblTVSeriesMediaResolution$MediaTVSeries_Media_Resolution];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaResolution$ResolutionTVSeries_Media_Resolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaResolution] DROP CONSTRAINT [FK_tblTVSeriesMediaResolution$ResolutionTVSeries_Media_Resolution];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaResolution$TVSeriesTVSeries_Media_Resolution]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaResolution] DROP CONSTRAINT [FK_tblTVSeriesMediaResolution$TVSeriesTVSeries_Media_Resolution];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaSpecials$MediaTVSeries_Media_Specials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaSpecials] DROP CONSTRAINT [FK_tblTVSeriesMediaSpecials$MediaTVSeries_Media_Specials];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaSpecials$SpecialsTVSeries_Media_Specials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaSpecials] DROP CONSTRAINT [FK_tblTVSeriesMediaSpecials$SpecialsTVSeries_Media_Specials];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMediaSpecials$TVSeriesTVSeries_Media_Specials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMediaSpecials] DROP CONSTRAINT [FK_tblTVSeriesMediaSpecials$TVSeriesTVSeries_Media_Specials];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMusic$Music]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMusic] DROP CONSTRAINT [FK_tblTVSeriesMusic$Music];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesMusic$TVSeries]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesMusic] DROP CONSTRAINT [FK_tblTVSeriesMusic$TVSeries];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesNetwork$NetworkTVSeries_Network]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesNetwork] DROP CONSTRAINT [FK_tblTVSeriesNetwork$NetworkTVSeries_Network];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesNetwork$TVSeriesTVSeries_Network]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesNetwork] DROP CONSTRAINT [FK_tblTVSeriesNetwork$TVSeriesTVSeries_Network];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesProducer$ProducerTVSeries_Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesProducer] DROP CONSTRAINT [FK_tblTVSeriesProducer$ProducerTVSeries_Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesProducer$TVSeriesTVSeries_Producer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesProducer] DROP CONSTRAINT [FK_tblTVSeriesProducer$TVSeriesTVSeries_Producer];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesStudio$StudioTVSeries_Studio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesStudio] DROP CONSTRAINT [FK_tblTVSeriesStudio$StudioTVSeries_Studio];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTVSeriesStudio$TVSeriesTVSeries_Studio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTVSeriesStudio] DROP CONSTRAINT [FK_tblTVSeriesStudio$TVSeriesTVSeries_Studio];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[tblActor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblActor];
GO
IF OBJECT_ID(N'[dbo].[tblActorRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblActorRole];
GO
IF OBJECT_ID(N'[dbo].[tblAudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblAudio];
GO
IF OBJECT_ID(N'[dbo].[tblCodec]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblCodec];
GO
IF OBJECT_ID(N'[dbo].[tblComposer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblComposer];
GO
IF OBJECT_ID(N'[dbo].[tblDirector]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblDirector];
GO
IF OBJECT_ID(N'[dbo].[tblEpisode]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisode];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeActor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeActor];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeGenre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeGenre];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeMediaAudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeMediaAudio];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeMediaCodec]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeMediaCodec];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeMediaReleaseType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeMediaReleaseType];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeMediaResolution]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeMediaResolution];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeMediaSpecials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeMediaSpecials];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeMusic]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeMusic];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeNetwork]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeNetwork];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeProducer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeProducer];
GO
IF OBJECT_ID(N'[dbo].[tblEpisodeStudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblEpisodeStudio];
GO
IF OBJECT_ID(N'[dbo].[tblGenre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblGenre];
GO
IF OBJECT_ID(N'[dbo].[tblMedia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMedia];
GO
IF OBJECT_ID(N'[dbo].[tblMovie]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMovie];
GO
IF OBJECT_ID(N'[dbo].[tblMovieActor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMovieActor];
GO
IF OBJECT_ID(N'[dbo].[tblMovieGenre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMovieGenre];
GO
IF OBJECT_ID(N'[dbo].[tblMovieMusic]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMovieMusic];
GO
IF OBJECT_ID(N'[dbo].[tblMovieProducer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMovieProducer];
GO
IF OBJECT_ID(N'[dbo].[tblMovieStudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMovieStudio];
GO
IF OBJECT_ID(N'[dbo].[tblMusic]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMusic];
GO
IF OBJECT_ID(N'[dbo].[tblMusicComposer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMusicComposer];
GO
IF OBJECT_ID(N'[dbo].[tblNetwork]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblNetwork];
GO
IF OBJECT_ID(N'[dbo].[tblParentalRating]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblParentalRating];
GO
IF OBJECT_ID(N'[dbo].[tblPerson]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblPerson];
GO
IF OBJECT_ID(N'[dbo].[tblProducer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblProducer];
GO
IF OBJECT_ID(N'[dbo].[tblReleaseType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblReleaseType];
GO
IF OBJECT_ID(N'[dbo].[tblResolution]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblResolution];
GO
IF OBJECT_ID(N'[dbo].[tblRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblRole];
GO
IF OBJECT_ID(N'[dbo].[tblSpecials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblSpecials];
GO
IF OBJECT_ID(N'[dbo].[tblStudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblStudio];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeries];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesActor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesActor];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesDirector]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesDirector];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesGenre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesGenre];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesMediaAudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesMediaAudio];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesMediaCodec]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesMediaCodec];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesMediaReleaseType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesMediaReleaseType];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesMediaResolution]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesMediaResolution];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesMediaSpecials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesMediaSpecials];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesMusic]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesMusic];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesNetwork]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesNetwork];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesProducer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesProducer];
GO
IF OBJECT_ID(N'[dbo].[tblTVSeriesStudio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTVSeriesStudio];
GO
IF OBJECT_ID(N'[dbo].[UserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRoles];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[UsersInRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsersInRoles];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryActors]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryActors];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryAudios]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryAudios];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryCodecs]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryCodecs];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryDirectors]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryDirectors];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryGenres]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryGenres];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryMedias]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryMedias];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryParentalRatings]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryParentalRatings];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryReleaseTypes]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryReleaseTypes];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qryResolutions]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qryResolutions];
GO
IF OBJECT_ID(N'[MoviesModelStoreContainer].[qrySpecials]', 'U') IS NOT NULL
    DROP TABLE [MoviesModelStoreContainer].[qrySpecials];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'tblActors'
CREATE TABLE [dbo].[tblActors] (
    [ID_Actor] bigint IDENTITY(1,1) NOT NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblAudios'
CREATE TABLE [dbo].[tblAudios] (
    [ID_Audio] bigint IDENTITY(1,1) NOT NULL,
    [Audio] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblCodecs'
CREATE TABLE [dbo].[tblCodecs] (
    [ID_Codec] bigint IDENTITY(1,1) NOT NULL,
    [Codec] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblComposers'
CREATE TABLE [dbo].[tblComposers] (
    [ID_Composer] bigint  NOT NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblDirectors'
CREATE TABLE [dbo].[tblDirectors] (
    [ID_Director] bigint IDENTITY(1,1) NOT NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblEpisodes'
CREATE TABLE [dbo].[tblEpisodes] (
    [ID_Episode] bigint IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Length] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [Number] int  NULL,
    [ID_TVSeries] bigint  NULL,
    [ReleaseYear] int  NULL,
    [Wished] bit  NULL,
    [Watched] bit  NULL,
    [Poster] nvarchar(max)  NULL,
    [ID_Director] bigint  NULL,
    [ID_ParentalRating] bigint  NULL,
    [IMDBLink] nvarchar(max)  NULL,
    [RottenTomatoesLink] nvarchar(max)  NULL,
    [HDREnabled] bit  NULL,
    [C3D] bit  NULL,
    [ReDownload] bit  NULL,
    [Comments] nvarchar(max)  NULL,
    [Subtitles] bit  NULL,
    [Language] nvarchar(max)  NULL,
    [Country] nvarchar(max)  NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblEpisodeMediaAudios'
CREATE TABLE [dbo].[tblEpisodeMediaAudios] (
    [FK_Episode] bigint  NOT NULL,
    [FK_Media] bigint  NOT NULL,
    [FK_Audio] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeMediaCodecs'
CREATE TABLE [dbo].[tblEpisodeMediaCodecs] (
    [FK_Episode] bigint  NOT NULL,
    [FK_Media] bigint  NOT NULL,
    [FK_Codec] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeMediaReleaseTypes'
CREATE TABLE [dbo].[tblEpisodeMediaReleaseTypes] (
    [FK_Episode] bigint  NOT NULL,
    [FK_Media] bigint  NOT NULL,
    [FK_ReleaseType] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeMediaResolutions'
CREATE TABLE [dbo].[tblEpisodeMediaResolutions] (
    [FK_Episode] bigint  NOT NULL,
    [FK_Media] bigint  NOT NULL,
    [FK_Resolution] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeMediaSpecials'
CREATE TABLE [dbo].[tblEpisodeMediaSpecials] (
    [FK_Episode] bigint  NOT NULL,
    [FK_Media] bigint  NOT NULL,
    [FK_Specials] bigint  NOT NULL
);
GO

-- Creating table 'tblGenres'
CREATE TABLE [dbo].[tblGenres] (
    [ID_Genre] bigint IDENTITY(1,1) NOT NULL,
    [Genre] nvarchar(max)  NOT NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblMedias'
CREATE TABLE [dbo].[tblMedias] (
    [ID_Media] bigint IDENTITY(1,1) NOT NULL,
    [Media] nvarchar(max)  NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblMovies'
CREATE TABLE [dbo].[tblMovies] (
    [ID_Movie] bigint IDENTITY(1,1) NOT NULL,
    [CollectionNumber] int  NULL,
    [Title] nvarchar(max)  NULL,
    [ReleaseYear] int  NULL,
    [Length] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [Watched] bit  NULL,
    [Wished] bit  NULL,
    [Country] nvarchar(max)  NULL,
    [FK_ParentalRating] bigint  NULL,
    [Language] nvarchar(max)  NULL,
    [Subtitles] bit  NULL,
    [FK_Director] bigint  NULL,
    [IMDBLink] nvarchar(max)  NULL,
    [RottenTomatoesLink] nvarchar(max)  NULL,
    [HDREnabled] bit  NULL,
    [C3D] bit  NULL,
    [ReDownload] bit  NULL,
    [Comments] nvarchar(max)  NULL,
    [Size] int  NULL,
    [FK_Media] bigint  NULL,
    [FK_Resolution] bigint  NULL,
    [FK_ReleaseType] bigint  NULL,
    [FK_Codec] bigint  NULL,
    [FK_Audio] bigint  NULL,
    [FK_Specials] bigint  NULL,
    [FK_UserID] int  NULL
);
GO

-- Creating table 'tblMusics'
CREATE TABLE [dbo].[tblMusics] (
    [ID_Music] bigint  NOT NULL,
    [Release_Date] datetime  NULL,
    [Title] varchar(250)  NULL,
    [Length] varchar(50)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblNetworks'
CREATE TABLE [dbo].[tblNetworks] (
    [ID_Network] bigint IDENTITY(1,1) NOT NULL,
    [Network] nvarchar(max)  NULL,
    [Logo] nvarchar(255)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblParentalRatings'
CREATE TABLE [dbo].[tblParentalRatings] (
    [ID_ParentalRating] bigint IDENTITY(1,1) NOT NULL,
    [Rating] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblPersons'
CREATE TABLE [dbo].[tblPersons] (
    [ID_Person] bigint IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(max)  NULL,
    [FirstName] nvarchar(max)  NULL,
    [Natinality] nvarchar(max)  NULL,
    [DOB] datetime  NULL,
    [Picture] varbinary(max)  NULL
);
GO

-- Creating table 'tblProducers'
CREATE TABLE [dbo].[tblProducers] (
    [ID_Producer] bigint IDENTITY(1,1) NOT NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblReleaseTypes'
CREATE TABLE [dbo].[tblReleaseTypes] (
    [ID_ReleaseType] bigint IDENTITY(1,1) NOT NULL,
    [ReleaseType] nvarchar(max)  NULL,
    [Label] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblResolutions'
CREATE TABLE [dbo].[tblResolutions] (
    [ID_Resolution] bigint IDENTITY(1,1) NOT NULL,
    [Resolution] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblRoles'
CREATE TABLE [dbo].[tblRoles] (
    [ID_Role] bigint IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(max)  NULL,
    [FirstName] nvarchar(max)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblSpecials'
CREATE TABLE [dbo].[tblSpecials] (
    [ID_Specials] bigint IDENTITY(1,1) NOT NULL,
    [Speciality] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblStudios'
CREATE TABLE [dbo].[tblStudios] (
    [ID_Studio] bigint IDENTITY(1,1) NOT NULL,
    [Studio] nvarchar(max)  NULL,
    [Logo] varbinary(max)  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblTVSeries'
CREATE TABLE [dbo].[tblTVSeries] (
    [ID_TVSeries] bigint IDENTITY(1,1) NOT NULL,
    [SeriesName] nvarchar(max)  NULL,
    [EpisodeCount] int  NULL,
    [ReleaseYear] int  NULL,
    [Description] nvarchar(max)  NULL,
    [Wished] bit  NULL,
    [Country] nvarchar(max)  NULL,
    [ID_ParentalRating] bigint  NULL,
    [Language] nvarchar(max)  NULL,
    [IMDBLink] nvarchar(max)  NULL,
    [RottenTomatoesLink] nvarchar(max)  NULL,
    [HDREnabled] bit  NULL,
    [C3D] bit  NULL,
    [ReDownload] bit  NULL,
    [Comments] nvarchar(max)  NULL,
    [Watched] bit  NULL,
    [Poster] varbinary(max)  NULL,
    [Size] nvarchar(50)  NULL,
    [Length] nvarchar(50)  NULL,
    [Subtitles] nvarchar(max)  NULL,
    [FK_Media] bigint  NULL,
    [FK_UserID] bigint  NULL
);
GO

-- Creating table 'tblTVSeriesMediaAudios'
CREATE TABLE [dbo].[tblTVSeriesMediaAudios] (
    [ID_TVSeries] bigint  NOT NULL,
    [ID_Media] bigint  NOT NULL,
    [ID_Audio] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesMediaCodecs'
CREATE TABLE [dbo].[tblTVSeriesMediaCodecs] (
    [ID_TVSeries] bigint  NOT NULL,
    [ID_Media] bigint  NOT NULL,
    [ID_Codec] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesMediaReleaseTypes'
CREATE TABLE [dbo].[tblTVSeriesMediaReleaseTypes] (
    [ID_TVSeries] bigint  NOT NULL,
    [ID_Media] bigint  NOT NULL,
    [ID_ReleaseType] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesMediaResolutions'
CREATE TABLE [dbo].[tblTVSeriesMediaResolutions] (
    [ID_TVSeries] bigint  NOT NULL,
    [ID_Media] bigint  NOT NULL,
    [ID_Resolution] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesMediaSpecials'
CREATE TABLE [dbo].[tblTVSeriesMediaSpecials] (
    [ID_TVSeries] bigint  NOT NULL,
    [ID_Media] bigint  NOT NULL,
    [ID_Specials] bigint  NOT NULL
);
GO

-- Creating table 'UserRoles'
CREATE TABLE [dbo].[UserRoles] (
    [RoleID] bigint IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(max)  NULL,
    [Discription] nvarchar(max)  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] bigint IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [MobileAlias] nvarchar(16)  NULL,
    [IsAnonymous] bit  NOT NULL,
    [LastActivityDate] datetime  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [PasswordSalt] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NULL,
    [IsApproved] bit  NOT NULL,
    [CreateDate] datetime  NOT NULL,
    [Comment] nvarchar(max)  NULL,
    [FK_Person] bigint  NULL
);
GO

-- Creating table 'qryActors'
CREATE TABLE [dbo].[qryActors] (
    [ID_Actor] int IDENTITY(1,1) NOT NULL,
    [tblActor] nvarchar(max)  NULL
);
GO

-- Creating table 'qryAudios'
CREATE TABLE [dbo].[qryAudios] (
    [ID_Audio] int IDENTITY(1,1) NOT NULL,
    [Audio] nvarchar(max)  NULL
);
GO

-- Creating table 'qryCodecs'
CREATE TABLE [dbo].[qryCodecs] (
    [ID_Codec] int IDENTITY(1,1) NOT NULL,
    [Codec] nvarchar(max)  NULL
);
GO

-- Creating table 'qryDirectors'
CREATE TABLE [dbo].[qryDirectors] (
    [ID_Director] int IDENTITY(1,1) NOT NULL,
    [tblDirector] nvarchar(max)  NULL
);
GO

-- Creating table 'qryGenres'
CREATE TABLE [dbo].[qryGenres] (
    [ID_Genre] int IDENTITY(1,1) NOT NULL,
    [Genre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'qryMedias'
CREATE TABLE [dbo].[qryMedias] (
    [ID_Media] int IDENTITY(1,1) NOT NULL,
    [Media] nvarchar(max)  NULL
);
GO

-- Creating table 'qryParentalRatings'
CREATE TABLE [dbo].[qryParentalRatings] (
    [ID_ParentalRating] int IDENTITY(1,1) NOT NULL,
    [Rating] nvarchar(max)  NULL
);
GO

-- Creating table 'qryReleaseTypes'
CREATE TABLE [dbo].[qryReleaseTypes] (
    [ID_ReleaseType] int IDENTITY(1,1) NOT NULL,
    [ReleaseType] nvarchar(max)  NULL
);
GO

-- Creating table 'qryResolutions'
CREATE TABLE [dbo].[qryResolutions] (
    [ID_Resolution] int IDENTITY(1,1) NOT NULL,
    [Resolution] nvarchar(max)  NULL
);
GO

-- Creating table 'qrySpecials'
CREATE TABLE [dbo].[qrySpecials] (
    [ID_Specials] int IDENTITY(1,1) NOT NULL,
    [Speciality] nvarchar(max)  NULL
);
GO

-- Creating table 'tblActorRole'
CREATE TABLE [dbo].[tblActorRole] (
    [tblRoles_ID_Role] bigint  NOT NULL,
    [tblActors_ID_Actor] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeActor'
CREATE TABLE [dbo].[tblEpisodeActor] (
    [tblActors_ID_Actor] bigint  NOT NULL,
    [tblEpisodes_ID_Episode] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeGenre'
CREATE TABLE [dbo].[tblEpisodeGenre] (
    [tblEpisodes_ID_Episode] bigint  NOT NULL,
    [tblGenres_ID_Genre] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeMusic'
CREATE TABLE [dbo].[tblEpisodeMusic] (
    [tblEpisodes_ID_Episode] bigint  NOT NULL,
    [tblMusics_ID_Music] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeNetwork'
CREATE TABLE [dbo].[tblEpisodeNetwork] (
    [tblEpisodes_ID_Episode] bigint  NOT NULL,
    [tblNetworks_ID_Network] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeProducer'
CREATE TABLE [dbo].[tblEpisodeProducer] (
    [tblEpisodes_ID_Episode] bigint  NOT NULL,
    [tblProducers_ID_Producer] bigint  NOT NULL
);
GO

-- Creating table 'tblEpisodeStudio'
CREATE TABLE [dbo].[tblEpisodeStudio] (
    [tblEpisodes_ID_Episode] bigint  NOT NULL,
    [tblStudios_ID_Studio] bigint  NOT NULL
);
GO

-- Creating table 'tblMovieActor'
CREATE TABLE [dbo].[tblMovieActor] (
    [tblActors_ID_Actor] bigint  NOT NULL,
    [tblMovies_ID_Movie] bigint  NOT NULL
);
GO

-- Creating table 'tblMovieGenre'
CREATE TABLE [dbo].[tblMovieGenre] (
    [tblGenres_ID_Genre] bigint  NOT NULL,
    [tblMovies_ID_Movie] bigint  NOT NULL
);
GO

-- Creating table 'tblMovieMusic'
CREATE TABLE [dbo].[tblMovieMusic] (
    [tblMovies_ID_Movie] bigint  NOT NULL,
    [tblMusics_ID_Music] bigint  NOT NULL
);
GO

-- Creating table 'tblMovieProducer'
CREATE TABLE [dbo].[tblMovieProducer] (
    [tblMovies_ID_Movie] bigint  NOT NULL,
    [tblProducers_ID_Producer] bigint  NOT NULL
);
GO

-- Creating table 'tblMovieStudio'
CREATE TABLE [dbo].[tblMovieStudio] (
    [tblMovies_ID_Movie] bigint  NOT NULL,
    [tblStudios_ID_Studio] bigint  NOT NULL
);
GO

-- Creating table 'tblMusicComposer'
CREATE TABLE [dbo].[tblMusicComposer] (
    [tblComposers_ID_Composer] bigint  NOT NULL,
    [tblMusics_ID_Music] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesActor'
CREATE TABLE [dbo].[tblTVSeriesActor] (
    [tblActors_ID_Actor] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesDirector'
CREATE TABLE [dbo].[tblTVSeriesDirector] (
    [tblDirectors_ID_Director] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesGenre'
CREATE TABLE [dbo].[tblTVSeriesGenre] (
    [tblGenres_ID_Genre] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesMusic'
CREATE TABLE [dbo].[tblTVSeriesMusic] (
    [tblMusics_ID_Music] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesNetwork'
CREATE TABLE [dbo].[tblTVSeriesNetwork] (
    [tblNetworks_ID_Network] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesProducer'
CREATE TABLE [dbo].[tblTVSeriesProducer] (
    [tblProducers_ID_Producer] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'tblTVSeriesStudio'
CREATE TABLE [dbo].[tblTVSeriesStudio] (
    [tblStudios_ID_Studio] bigint  NOT NULL,
    [tblTVSeries_ID_TVSeries] bigint  NOT NULL
);
GO

-- Creating table 'UsersInRoles'
CREATE TABLE [dbo].[UsersInRoles] (
    [Users_UserID] bigint  NOT NULL,
    [UserRoles_RoleID] bigint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID_Actor] in table 'tblActors'
ALTER TABLE [dbo].[tblActors]
ADD CONSTRAINT [PK_tblActors]
    PRIMARY KEY CLUSTERED ([ID_Actor] ASC);
GO

-- Creating primary key on [ID_Audio] in table 'tblAudios'
ALTER TABLE [dbo].[tblAudios]
ADD CONSTRAINT [PK_tblAudios]
    PRIMARY KEY CLUSTERED ([ID_Audio] ASC);
GO

-- Creating primary key on [ID_Codec] in table 'tblCodecs'
ALTER TABLE [dbo].[tblCodecs]
ADD CONSTRAINT [PK_tblCodecs]
    PRIMARY KEY CLUSTERED ([ID_Codec] ASC);
GO

-- Creating primary key on [ID_Composer] in table 'tblComposers'
ALTER TABLE [dbo].[tblComposers]
ADD CONSTRAINT [PK_tblComposers]
    PRIMARY KEY CLUSTERED ([ID_Composer] ASC);
GO

-- Creating primary key on [ID_Director] in table 'tblDirectors'
ALTER TABLE [dbo].[tblDirectors]
ADD CONSTRAINT [PK_tblDirectors]
    PRIMARY KEY CLUSTERED ([ID_Director] ASC);
GO

-- Creating primary key on [ID_Episode] in table 'tblEpisodes'
ALTER TABLE [dbo].[tblEpisodes]
ADD CONSTRAINT [PK_tblEpisodes]
    PRIMARY KEY CLUSTERED ([ID_Episode] ASC);
GO

-- Creating primary key on [FK_Episode], [FK_Media], [FK_Audio] in table 'tblEpisodeMediaAudios'
ALTER TABLE [dbo].[tblEpisodeMediaAudios]
ADD CONSTRAINT [PK_tblEpisodeMediaAudios]
    PRIMARY KEY CLUSTERED ([FK_Episode], [FK_Media], [FK_Audio] ASC);
GO

-- Creating primary key on [FK_Episode], [FK_Media], [FK_Codec] in table 'tblEpisodeMediaCodecs'
ALTER TABLE [dbo].[tblEpisodeMediaCodecs]
ADD CONSTRAINT [PK_tblEpisodeMediaCodecs]
    PRIMARY KEY CLUSTERED ([FK_Episode], [FK_Media], [FK_Codec] ASC);
GO

-- Creating primary key on [FK_Episode], [FK_Media], [FK_ReleaseType] in table 'tblEpisodeMediaReleaseTypes'
ALTER TABLE [dbo].[tblEpisodeMediaReleaseTypes]
ADD CONSTRAINT [PK_tblEpisodeMediaReleaseTypes]
    PRIMARY KEY CLUSTERED ([FK_Episode], [FK_Media], [FK_ReleaseType] ASC);
GO

-- Creating primary key on [FK_Episode], [FK_Media], [FK_Resolution] in table 'tblEpisodeMediaResolutions'
ALTER TABLE [dbo].[tblEpisodeMediaResolutions]
ADD CONSTRAINT [PK_tblEpisodeMediaResolutions]
    PRIMARY KEY CLUSTERED ([FK_Episode], [FK_Media], [FK_Resolution] ASC);
GO

-- Creating primary key on [FK_Episode], [FK_Media], [FK_Specials] in table 'tblEpisodeMediaSpecials'
ALTER TABLE [dbo].[tblEpisodeMediaSpecials]
ADD CONSTRAINT [PK_tblEpisodeMediaSpecials]
    PRIMARY KEY CLUSTERED ([FK_Episode], [FK_Media], [FK_Specials] ASC);
GO

-- Creating primary key on [ID_Genre] in table 'tblGenres'
ALTER TABLE [dbo].[tblGenres]
ADD CONSTRAINT [PK_tblGenres]
    PRIMARY KEY CLUSTERED ([ID_Genre] ASC);
GO

-- Creating primary key on [ID_Media] in table 'tblMedias'
ALTER TABLE [dbo].[tblMedias]
ADD CONSTRAINT [PK_tblMedias]
    PRIMARY KEY CLUSTERED ([ID_Media] ASC);
GO

-- Creating primary key on [ID_Movie] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [PK_tblMovies]
    PRIMARY KEY CLUSTERED ([ID_Movie] ASC);
GO

-- Creating primary key on [ID_Music] in table 'tblMusics'
ALTER TABLE [dbo].[tblMusics]
ADD CONSTRAINT [PK_tblMusics]
    PRIMARY KEY CLUSTERED ([ID_Music] ASC);
GO

-- Creating primary key on [ID_Network] in table 'tblNetworks'
ALTER TABLE [dbo].[tblNetworks]
ADD CONSTRAINT [PK_tblNetworks]
    PRIMARY KEY CLUSTERED ([ID_Network] ASC);
GO

-- Creating primary key on [ID_ParentalRating] in table 'tblParentalRatings'
ALTER TABLE [dbo].[tblParentalRatings]
ADD CONSTRAINT [PK_tblParentalRatings]
    PRIMARY KEY CLUSTERED ([ID_ParentalRating] ASC);
GO

-- Creating primary key on [ID_Person] in table 'tblPersons'
ALTER TABLE [dbo].[tblPersons]
ADD CONSTRAINT [PK_tblPersons]
    PRIMARY KEY CLUSTERED ([ID_Person] ASC);
GO

-- Creating primary key on [ID_Producer] in table 'tblProducers'
ALTER TABLE [dbo].[tblProducers]
ADD CONSTRAINT [PK_tblProducers]
    PRIMARY KEY CLUSTERED ([ID_Producer] ASC);
GO

-- Creating primary key on [ID_ReleaseType] in table 'tblReleaseTypes'
ALTER TABLE [dbo].[tblReleaseTypes]
ADD CONSTRAINT [PK_tblReleaseTypes]
    PRIMARY KEY CLUSTERED ([ID_ReleaseType] ASC);
GO

-- Creating primary key on [ID_Resolution] in table 'tblResolutions'
ALTER TABLE [dbo].[tblResolutions]
ADD CONSTRAINT [PK_tblResolutions]
    PRIMARY KEY CLUSTERED ([ID_Resolution] ASC);
GO

-- Creating primary key on [ID_Role] in table 'tblRoles'
ALTER TABLE [dbo].[tblRoles]
ADD CONSTRAINT [PK_tblRoles]
    PRIMARY KEY CLUSTERED ([ID_Role] ASC);
GO

-- Creating primary key on [ID_Specials] in table 'tblSpecials'
ALTER TABLE [dbo].[tblSpecials]
ADD CONSTRAINT [PK_tblSpecials]
    PRIMARY KEY CLUSTERED ([ID_Specials] ASC);
GO

-- Creating primary key on [ID_Studio] in table 'tblStudios'
ALTER TABLE [dbo].[tblStudios]
ADD CONSTRAINT [PK_tblStudios]
    PRIMARY KEY CLUSTERED ([ID_Studio] ASC);
GO

-- Creating primary key on [ID_TVSeries] in table 'tblTVSeries'
ALTER TABLE [dbo].[tblTVSeries]
ADD CONSTRAINT [PK_tblTVSeries]
    PRIMARY KEY CLUSTERED ([ID_TVSeries] ASC);
GO

-- Creating primary key on [ID_TVSeries], [ID_Media], [ID_Audio] in table 'tblTVSeriesMediaAudios'
ALTER TABLE [dbo].[tblTVSeriesMediaAudios]
ADD CONSTRAINT [PK_tblTVSeriesMediaAudios]
    PRIMARY KEY CLUSTERED ([ID_TVSeries], [ID_Media], [ID_Audio] ASC);
GO

-- Creating primary key on [ID_TVSeries], [ID_Media], [ID_Codec] in table 'tblTVSeriesMediaCodecs'
ALTER TABLE [dbo].[tblTVSeriesMediaCodecs]
ADD CONSTRAINT [PK_tblTVSeriesMediaCodecs]
    PRIMARY KEY CLUSTERED ([ID_TVSeries], [ID_Media], [ID_Codec] ASC);
GO

-- Creating primary key on [ID_TVSeries], [ID_Media], [ID_ReleaseType] in table 'tblTVSeriesMediaReleaseTypes'
ALTER TABLE [dbo].[tblTVSeriesMediaReleaseTypes]
ADD CONSTRAINT [PK_tblTVSeriesMediaReleaseTypes]
    PRIMARY KEY CLUSTERED ([ID_TVSeries], [ID_Media], [ID_ReleaseType] ASC);
GO

-- Creating primary key on [ID_TVSeries], [ID_Media], [ID_Resolution] in table 'tblTVSeriesMediaResolutions'
ALTER TABLE [dbo].[tblTVSeriesMediaResolutions]
ADD CONSTRAINT [PK_tblTVSeriesMediaResolutions]
    PRIMARY KEY CLUSTERED ([ID_TVSeries], [ID_Media], [ID_Resolution] ASC);
GO

-- Creating primary key on [ID_TVSeries], [ID_Media], [ID_Specials] in table 'tblTVSeriesMediaSpecials'
ALTER TABLE [dbo].[tblTVSeriesMediaSpecials]
ADD CONSTRAINT [PK_tblTVSeriesMediaSpecials]
    PRIMARY KEY CLUSTERED ([ID_TVSeries], [ID_Media], [ID_Specials] ASC);
GO

-- Creating primary key on [RoleID] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [PK_UserRoles]
    PRIMARY KEY CLUSTERED ([RoleID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [ID_Actor] in table 'qryActors'
ALTER TABLE [dbo].[qryActors]
ADD CONSTRAINT [PK_qryActors]
    PRIMARY KEY CLUSTERED ([ID_Actor] ASC);
GO

-- Creating primary key on [ID_Audio] in table 'qryAudios'
ALTER TABLE [dbo].[qryAudios]
ADD CONSTRAINT [PK_qryAudios]
    PRIMARY KEY CLUSTERED ([ID_Audio] ASC);
GO

-- Creating primary key on [ID_Codec] in table 'qryCodecs'
ALTER TABLE [dbo].[qryCodecs]
ADD CONSTRAINT [PK_qryCodecs]
    PRIMARY KEY CLUSTERED ([ID_Codec] ASC);
GO

-- Creating primary key on [ID_Director] in table 'qryDirectors'
ALTER TABLE [dbo].[qryDirectors]
ADD CONSTRAINT [PK_qryDirectors]
    PRIMARY KEY CLUSTERED ([ID_Director] ASC);
GO

-- Creating primary key on [ID_Genre], [Genre] in table 'qryGenres'
ALTER TABLE [dbo].[qryGenres]
ADD CONSTRAINT [PK_qryGenres]
    PRIMARY KEY CLUSTERED ([ID_Genre], [Genre] ASC);
GO

-- Creating primary key on [ID_Media] in table 'qryMedias'
ALTER TABLE [dbo].[qryMedias]
ADD CONSTRAINT [PK_qryMedias]
    PRIMARY KEY CLUSTERED ([ID_Media] ASC);
GO

-- Creating primary key on [ID_ParentalRating] in table 'qryParentalRatings'
ALTER TABLE [dbo].[qryParentalRatings]
ADD CONSTRAINT [PK_qryParentalRatings]
    PRIMARY KEY CLUSTERED ([ID_ParentalRating] ASC);
GO

-- Creating primary key on [ID_ReleaseType] in table 'qryReleaseTypes'
ALTER TABLE [dbo].[qryReleaseTypes]
ADD CONSTRAINT [PK_qryReleaseTypes]
    PRIMARY KEY CLUSTERED ([ID_ReleaseType] ASC);
GO

-- Creating primary key on [ID_Resolution] in table 'qryResolutions'
ALTER TABLE [dbo].[qryResolutions]
ADD CONSTRAINT [PK_qryResolutions]
    PRIMARY KEY CLUSTERED ([ID_Resolution] ASC);
GO

-- Creating primary key on [ID_Specials] in table 'qrySpecials'
ALTER TABLE [dbo].[qrySpecials]
ADD CONSTRAINT [PK_qrySpecials]
    PRIMARY KEY CLUSTERED ([ID_Specials] ASC);
GO

-- Creating primary key on [tblRoles_ID_Role], [tblActors_ID_Actor] in table 'tblActorRole'
ALTER TABLE [dbo].[tblActorRole]
ADD CONSTRAINT [PK_tblActorRole]
    PRIMARY KEY CLUSTERED ([tblRoles_ID_Role], [tblActors_ID_Actor] ASC);
GO

-- Creating primary key on [tblActors_ID_Actor], [tblEpisodes_ID_Episode] in table 'tblEpisodeActor'
ALTER TABLE [dbo].[tblEpisodeActor]
ADD CONSTRAINT [PK_tblEpisodeActor]
    PRIMARY KEY CLUSTERED ([tblActors_ID_Actor], [tblEpisodes_ID_Episode] ASC);
GO

-- Creating primary key on [tblEpisodes_ID_Episode], [tblGenres_ID_Genre] in table 'tblEpisodeGenre'
ALTER TABLE [dbo].[tblEpisodeGenre]
ADD CONSTRAINT [PK_tblEpisodeGenre]
    PRIMARY KEY CLUSTERED ([tblEpisodes_ID_Episode], [tblGenres_ID_Genre] ASC);
GO

-- Creating primary key on [tblEpisodes_ID_Episode], [tblMusics_ID_Music] in table 'tblEpisodeMusic'
ALTER TABLE [dbo].[tblEpisodeMusic]
ADD CONSTRAINT [PK_tblEpisodeMusic]
    PRIMARY KEY CLUSTERED ([tblEpisodes_ID_Episode], [tblMusics_ID_Music] ASC);
GO

-- Creating primary key on [tblEpisodes_ID_Episode], [tblNetworks_ID_Network] in table 'tblEpisodeNetwork'
ALTER TABLE [dbo].[tblEpisodeNetwork]
ADD CONSTRAINT [PK_tblEpisodeNetwork]
    PRIMARY KEY CLUSTERED ([tblEpisodes_ID_Episode], [tblNetworks_ID_Network] ASC);
GO

-- Creating primary key on [tblEpisodes_ID_Episode], [tblProducers_ID_Producer] in table 'tblEpisodeProducer'
ALTER TABLE [dbo].[tblEpisodeProducer]
ADD CONSTRAINT [PK_tblEpisodeProducer]
    PRIMARY KEY CLUSTERED ([tblEpisodes_ID_Episode], [tblProducers_ID_Producer] ASC);
GO

-- Creating primary key on [tblEpisodes_ID_Episode], [tblStudios_ID_Studio] in table 'tblEpisodeStudio'
ALTER TABLE [dbo].[tblEpisodeStudio]
ADD CONSTRAINT [PK_tblEpisodeStudio]
    PRIMARY KEY CLUSTERED ([tblEpisodes_ID_Episode], [tblStudios_ID_Studio] ASC);
GO

-- Creating primary key on [tblActors_ID_Actor], [tblMovies_ID_Movie] in table 'tblMovieActor'
ALTER TABLE [dbo].[tblMovieActor]
ADD CONSTRAINT [PK_tblMovieActor]
    PRIMARY KEY CLUSTERED ([tblActors_ID_Actor], [tblMovies_ID_Movie] ASC);
GO

-- Creating primary key on [tblGenres_ID_Genre], [tblMovies_ID_Movie] in table 'tblMovieGenre'
ALTER TABLE [dbo].[tblMovieGenre]
ADD CONSTRAINT [PK_tblMovieGenre]
    PRIMARY KEY CLUSTERED ([tblGenres_ID_Genre], [tblMovies_ID_Movie] ASC);
GO

-- Creating primary key on [tblMovies_ID_Movie], [tblMusics_ID_Music] in table 'tblMovieMusic'
ALTER TABLE [dbo].[tblMovieMusic]
ADD CONSTRAINT [PK_tblMovieMusic]
    PRIMARY KEY CLUSTERED ([tblMovies_ID_Movie], [tblMusics_ID_Music] ASC);
GO

-- Creating primary key on [tblMovies_ID_Movie], [tblProducers_ID_Producer] in table 'tblMovieProducer'
ALTER TABLE [dbo].[tblMovieProducer]
ADD CONSTRAINT [PK_tblMovieProducer]
    PRIMARY KEY CLUSTERED ([tblMovies_ID_Movie], [tblProducers_ID_Producer] ASC);
GO

-- Creating primary key on [tblMovies_ID_Movie], [tblStudios_ID_Studio] in table 'tblMovieStudio'
ALTER TABLE [dbo].[tblMovieStudio]
ADD CONSTRAINT [PK_tblMovieStudio]
    PRIMARY KEY CLUSTERED ([tblMovies_ID_Movie], [tblStudios_ID_Studio] ASC);
GO

-- Creating primary key on [tblComposers_ID_Composer], [tblMusics_ID_Music] in table 'tblMusicComposer'
ALTER TABLE [dbo].[tblMusicComposer]
ADD CONSTRAINT [PK_tblMusicComposer]
    PRIMARY KEY CLUSTERED ([tblComposers_ID_Composer], [tblMusics_ID_Music] ASC);
GO

-- Creating primary key on [tblActors_ID_Actor], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesActor'
ALTER TABLE [dbo].[tblTVSeriesActor]
ADD CONSTRAINT [PK_tblTVSeriesActor]
    PRIMARY KEY CLUSTERED ([tblActors_ID_Actor], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [tblDirectors_ID_Director], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesDirector'
ALTER TABLE [dbo].[tblTVSeriesDirector]
ADD CONSTRAINT [PK_tblTVSeriesDirector]
    PRIMARY KEY CLUSTERED ([tblDirectors_ID_Director], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [tblGenres_ID_Genre], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesGenre'
ALTER TABLE [dbo].[tblTVSeriesGenre]
ADD CONSTRAINT [PK_tblTVSeriesGenre]
    PRIMARY KEY CLUSTERED ([tblGenres_ID_Genre], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [tblMusics_ID_Music], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesMusic'
ALTER TABLE [dbo].[tblTVSeriesMusic]
ADD CONSTRAINT [PK_tblTVSeriesMusic]
    PRIMARY KEY CLUSTERED ([tblMusics_ID_Music], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [tblNetworks_ID_Network], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesNetwork'
ALTER TABLE [dbo].[tblTVSeriesNetwork]
ADD CONSTRAINT [PK_tblTVSeriesNetwork]
    PRIMARY KEY CLUSTERED ([tblNetworks_ID_Network], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [tblProducers_ID_Producer], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesProducer'
ALTER TABLE [dbo].[tblTVSeriesProducer]
ADD CONSTRAINT [PK_tblTVSeriesProducer]
    PRIMARY KEY CLUSTERED ([tblProducers_ID_Producer], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [tblStudios_ID_Studio], [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesStudio'
ALTER TABLE [dbo].[tblTVSeriesStudio]
ADD CONSTRAINT [PK_tblTVSeriesStudio]
    PRIMARY KEY CLUSTERED ([tblStudios_ID_Studio], [tblTVSeries_ID_TVSeries] ASC);
GO

-- Creating primary key on [Users_UserID], [UserRoles_RoleID] in table 'UsersInRoles'
ALTER TABLE [dbo].[UsersInRoles]
ADD CONSTRAINT [PK_UsersInRoles]
    PRIMARY KEY CLUSTERED ([Users_UserID], [UserRoles_RoleID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_Person] in table 'tblPersons'
ALTER TABLE [dbo].[tblPersons]
ADD CONSTRAINT [FK_tblPerson_Actor]
    FOREIGN KEY ([ID_Person])
    REFERENCES [dbo].[tblActors]
        ([ID_Actor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FK_Audio] in table 'tblEpisodeMediaAudios'
ALTER TABLE [dbo].[tblEpisodeMediaAudios]
ADD CONSTRAINT [FK_tblEpisodeMediaAudio_AudioEpisode_Media_Audio]
    FOREIGN KEY ([FK_Audio])
    REFERENCES [dbo].[tblAudios]
        ([ID_Audio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaAudio_AudioEpisode_Media_Audio'
CREATE INDEX [IX_FK_tblEpisodeMediaAudio_AudioEpisode_Media_Audio]
ON [dbo].[tblEpisodeMediaAudios]
    ([FK_Audio]);
GO

-- Creating foreign key on [FK_Audio] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_tblAudiotblMovie]
    FOREIGN KEY ([FK_Audio])
    REFERENCES [dbo].[tblAudios]
        ([ID_Audio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_tblAudiotblMovie'
CREATE INDEX [IX_FK_tblMovie_tblAudiotblMovie]
ON [dbo].[tblMovies]
    ([FK_Audio]);
GO

-- Creating foreign key on [ID_Audio] in table 'tblTVSeriesMediaAudios'
ALTER TABLE [dbo].[tblTVSeriesMediaAudios]
ADD CONSTRAINT [FK_tblTVSeriesMediaAudio_AudioTVSeries_Media_Audio]
    FOREIGN KEY ([ID_Audio])
    REFERENCES [dbo].[tblAudios]
        ([ID_Audio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaAudio_AudioTVSeries_Media_Audio'
CREATE INDEX [IX_FK_tblTVSeriesMediaAudio_AudioTVSeries_Media_Audio]
ON [dbo].[tblTVSeriesMediaAudios]
    ([ID_Audio]);
GO

-- Creating foreign key on [FK_Codec] in table 'tblEpisodeMediaCodecs'
ALTER TABLE [dbo].[tblEpisodeMediaCodecs]
ADD CONSTRAINT [FK_tblEpisodeMediaCodec_CodecEpisode_Media_Codec]
    FOREIGN KEY ([FK_Codec])
    REFERENCES [dbo].[tblCodecs]
        ([ID_Codec])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaCodec_CodecEpisode_Media_Codec'
CREATE INDEX [IX_FK_tblEpisodeMediaCodec_CodecEpisode_Media_Codec]
ON [dbo].[tblEpisodeMediaCodecs]
    ([FK_Codec]);
GO

-- Creating foreign key on [FK_Codec] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_tblCodectblMovie]
    FOREIGN KEY ([FK_Codec])
    REFERENCES [dbo].[tblCodecs]
        ([ID_Codec])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_tblCodectblMovie'
CREATE INDEX [IX_FK_tblMovie_tblCodectblMovie]
ON [dbo].[tblMovies]
    ([FK_Codec]);
GO

-- Creating foreign key on [ID_Codec] in table 'tblTVSeriesMediaCodecs'
ALTER TABLE [dbo].[tblTVSeriesMediaCodecs]
ADD CONSTRAINT [FK_tblTVSeriesMediaCodec_CodecTVSeries_Media_Codec]
    FOREIGN KEY ([ID_Codec])
    REFERENCES [dbo].[tblCodecs]
        ([ID_Codec])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaCodec_CodecTVSeries_Media_Codec'
CREATE INDEX [IX_FK_tblTVSeriesMediaCodec_CodecTVSeries_Media_Codec]
ON [dbo].[tblTVSeriesMediaCodecs]
    ([ID_Codec]);
GO

-- Creating foreign key on [ID_Person] in table 'tblPersons'
ALTER TABLE [dbo].[tblPersons]
ADD CONSTRAINT [FK_tblPerson_Composer]
    FOREIGN KEY ([ID_Person])
    REFERENCES [dbo].[tblComposers]
        ([ID_Composer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_Person] in table 'tblPersons'
ALTER TABLE [dbo].[tblPersons]
ADD CONSTRAINT [FK_tblPerson_Director]
    FOREIGN KEY ([ID_Person])
    REFERENCES [dbo].[tblDirectors]
        ([ID_Director])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_Director] in table 'tblEpisodes'
ALTER TABLE [dbo].[tblEpisodes]
ADD CONSTRAINT [FK_tblEpisode_DirectorEpisode]
    FOREIGN KEY ([ID_Director])
    REFERENCES [dbo].[tblDirectors]
        ([ID_Director])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisode_DirectorEpisode'
CREATE INDEX [IX_FK_tblEpisode_DirectorEpisode]
ON [dbo].[tblEpisodes]
    ([ID_Director]);
GO

-- Creating foreign key on [FK_Director] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_DirectorMovie]
    FOREIGN KEY ([FK_Director])
    REFERENCES [dbo].[tblDirectors]
        ([ID_Director])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_DirectorMovie'
CREATE INDEX [IX_FK_tblMovie_DirectorMovie]
ON [dbo].[tblMovies]
    ([FK_Director]);
GO

-- Creating foreign key on [ID_ParentalRating] in table 'tblEpisodes'
ALTER TABLE [dbo].[tblEpisodes]
ADD CONSTRAINT [FK_tblEpisode_ParentalRatingEpisode]
    FOREIGN KEY ([ID_ParentalRating])
    REFERENCES [dbo].[tblParentalRatings]
        ([ID_ParentalRating])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisode_ParentalRatingEpisode'
CREATE INDEX [IX_FK_tblEpisode_ParentalRatingEpisode]
ON [dbo].[tblEpisodes]
    ([ID_ParentalRating]);
GO

-- Creating foreign key on [ID_TVSeries] in table 'tblEpisodes'
ALTER TABLE [dbo].[tblEpisodes]
ADD CONSTRAINT [FK_tblEpisode_TVSeriesEpisode]
    FOREIGN KEY ([ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisode_TVSeriesEpisode'
CREATE INDEX [IX_FK_tblEpisode_TVSeriesEpisode]
ON [dbo].[tblEpisodes]
    ([ID_TVSeries]);
GO

-- Creating foreign key on [FK_Episode] in table 'tblEpisodeMediaAudios'
ALTER TABLE [dbo].[tblEpisodeMediaAudios]
ADD CONSTRAINT [FK_tblEpisodeMediaAudio_EpisodeEpisode_Media_Audio]
    FOREIGN KEY ([FK_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FK_Episode] in table 'tblEpisodeMediaCodecs'
ALTER TABLE [dbo].[tblEpisodeMediaCodecs]
ADD CONSTRAINT [FK_tblEpisodeMediaCodec_EpisodeEpisode_Media_Codec]
    FOREIGN KEY ([FK_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FK_Episode] in table 'tblEpisodeMediaReleaseTypes'
ALTER TABLE [dbo].[tblEpisodeMediaReleaseTypes]
ADD CONSTRAINT [FK_tblEpisodeMediaReleaseType_EpisodeEpisode_Media_ReleaseType]
    FOREIGN KEY ([FK_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FK_Episode] in table 'tblEpisodeMediaResolutions'
ALTER TABLE [dbo].[tblEpisodeMediaResolutions]
ADD CONSTRAINT [FK_tblEpisodeMediaResolution_EpisodeEpisode_Media_Resolution]
    FOREIGN KEY ([FK_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FK_Episode] in table 'tblEpisodeMediaSpecials'
ALTER TABLE [dbo].[tblEpisodeMediaSpecials]
ADD CONSTRAINT [FK_tblEpisodeMediaSpecials_EpisodeEpisode_Media_Specials]
    FOREIGN KEY ([FK_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FK_Media] in table 'tblEpisodeMediaAudios'
ALTER TABLE [dbo].[tblEpisodeMediaAudios]
ADD CONSTRAINT [FK_tblEpisodeMediaAudio_MediaEpisode_Media_Audio]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaAudio_MediaEpisode_Media_Audio'
CREATE INDEX [IX_FK_tblEpisodeMediaAudio_MediaEpisode_Media_Audio]
ON [dbo].[tblEpisodeMediaAudios]
    ([FK_Media]);
GO

-- Creating foreign key on [FK_Media] in table 'tblEpisodeMediaCodecs'
ALTER TABLE [dbo].[tblEpisodeMediaCodecs]
ADD CONSTRAINT [FK_tblEpisodeMediaCodec_MediaEpisode_Media_Codec]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaCodec_MediaEpisode_Media_Codec'
CREATE INDEX [IX_FK_tblEpisodeMediaCodec_MediaEpisode_Media_Codec]
ON [dbo].[tblEpisodeMediaCodecs]
    ([FK_Media]);
GO

-- Creating foreign key on [FK_Media] in table 'tblEpisodeMediaReleaseTypes'
ALTER TABLE [dbo].[tblEpisodeMediaReleaseTypes]
ADD CONSTRAINT [FK_tblEpisodeMediaReleaseType_MediaEpisode_Media_ReleaseType]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaReleaseType_MediaEpisode_Media_ReleaseType'
CREATE INDEX [IX_FK_tblEpisodeMediaReleaseType_MediaEpisode_Media_ReleaseType]
ON [dbo].[tblEpisodeMediaReleaseTypes]
    ([FK_Media]);
GO

-- Creating foreign key on [FK_ReleaseType] in table 'tblEpisodeMediaReleaseTypes'
ALTER TABLE [dbo].[tblEpisodeMediaReleaseTypes]
ADD CONSTRAINT [FK_tblEpisodeMediaReleaseType_ReleaseTypeEpisode_Media_ReleaseType]
    FOREIGN KEY ([FK_ReleaseType])
    REFERENCES [dbo].[tblReleaseTypes]
        ([ID_ReleaseType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaReleaseType_ReleaseTypeEpisode_Media_ReleaseType'
CREATE INDEX [IX_FK_tblEpisodeMediaReleaseType_ReleaseTypeEpisode_Media_ReleaseType]
ON [dbo].[tblEpisodeMediaReleaseTypes]
    ([FK_ReleaseType]);
GO

-- Creating foreign key on [FK_Media] in table 'tblEpisodeMediaResolutions'
ALTER TABLE [dbo].[tblEpisodeMediaResolutions]
ADD CONSTRAINT [FK_tblEpisodeMediaResolution_MediaEpisode_Media_Resolution]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaResolution_MediaEpisode_Media_Resolution'
CREATE INDEX [IX_FK_tblEpisodeMediaResolution_MediaEpisode_Media_Resolution]
ON [dbo].[tblEpisodeMediaResolutions]
    ([FK_Media]);
GO

-- Creating foreign key on [FK_Resolution] in table 'tblEpisodeMediaResolutions'
ALTER TABLE [dbo].[tblEpisodeMediaResolutions]
ADD CONSTRAINT [FK_tblEpisodeMediaResolution_ResolutionEpisode_Media_Resolution]
    FOREIGN KEY ([FK_Resolution])
    REFERENCES [dbo].[tblResolutions]
        ([ID_Resolution])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaResolution_ResolutionEpisode_Media_Resolution'
CREATE INDEX [IX_FK_tblEpisodeMediaResolution_ResolutionEpisode_Media_Resolution]
ON [dbo].[tblEpisodeMediaResolutions]
    ([FK_Resolution]);
GO

-- Creating foreign key on [FK_Media] in table 'tblEpisodeMediaSpecials'
ALTER TABLE [dbo].[tblEpisodeMediaSpecials]
ADD CONSTRAINT [FK_tblEpisodeMediaSpecials_MediaEpisode_Media_Specials]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaSpecials_MediaEpisode_Media_Specials'
CREATE INDEX [IX_FK_tblEpisodeMediaSpecials_MediaEpisode_Media_Specials]
ON [dbo].[tblEpisodeMediaSpecials]
    ([FK_Media]);
GO

-- Creating foreign key on [FK_Specials] in table 'tblEpisodeMediaSpecials'
ALTER TABLE [dbo].[tblEpisodeMediaSpecials]
ADD CONSTRAINT [FK_tblEpisodeMediaSpecials_SpecialsEpisode_Media_Specials]
    FOREIGN KEY ([FK_Specials])
    REFERENCES [dbo].[tblSpecials]
        ([ID_Specials])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMediaSpecials_SpecialsEpisode_Media_Specials'
CREATE INDEX [IX_FK_tblEpisodeMediaSpecials_SpecialsEpisode_Media_Specials]
ON [dbo].[tblEpisodeMediaSpecials]
    ([FK_Specials]);
GO

-- Creating foreign key on [FK_Media] in table 'tblTVSeries'
ALTER TABLE [dbo].[tblTVSeries]
ADD CONSTRAINT [FK_tblTVSeries_Media]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeries_Media'
CREATE INDEX [IX_FK_tblTVSeries_Media]
ON [dbo].[tblTVSeries]
    ([FK_Media]);
GO

-- Creating foreign key on [FK_Media] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_tblMediatblMovie]
    FOREIGN KEY ([FK_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_tblMediatblMovie'
CREATE INDEX [IX_FK_tblMovie_tblMediatblMovie]
ON [dbo].[tblMovies]
    ([FK_Media]);
GO

-- Creating foreign key on [ID_Media] in table 'tblTVSeriesMediaAudios'
ALTER TABLE [dbo].[tblTVSeriesMediaAudios]
ADD CONSTRAINT [FK_tblTVSeriesMediaAudio_MediaTVSeries_Media_Audio]
    FOREIGN KEY ([ID_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaAudio_MediaTVSeries_Media_Audio'
CREATE INDEX [IX_FK_tblTVSeriesMediaAudio_MediaTVSeries_Media_Audio]
ON [dbo].[tblTVSeriesMediaAudios]
    ([ID_Media]);
GO

-- Creating foreign key on [ID_Media] in table 'tblTVSeriesMediaCodecs'
ALTER TABLE [dbo].[tblTVSeriesMediaCodecs]
ADD CONSTRAINT [FK_tblTVSeriesMediaCodec_MediaTVSeries_Media_Codec]
    FOREIGN KEY ([ID_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaCodec_MediaTVSeries_Media_Codec'
CREATE INDEX [IX_FK_tblTVSeriesMediaCodec_MediaTVSeries_Media_Codec]
ON [dbo].[tblTVSeriesMediaCodecs]
    ([ID_Media]);
GO

-- Creating foreign key on [ID_Media] in table 'tblTVSeriesMediaReleaseTypes'
ALTER TABLE [dbo].[tblTVSeriesMediaReleaseTypes]
ADD CONSTRAINT [FK_tblTVSeriesMediaReleaseType_MediaTVSeries_Media_ReleaseType]
    FOREIGN KEY ([ID_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaReleaseType_MediaTVSeries_Media_ReleaseType'
CREATE INDEX [IX_FK_tblTVSeriesMediaReleaseType_MediaTVSeries_Media_ReleaseType]
ON [dbo].[tblTVSeriesMediaReleaseTypes]
    ([ID_Media]);
GO

-- Creating foreign key on [ID_Media] in table 'tblTVSeriesMediaResolutions'
ALTER TABLE [dbo].[tblTVSeriesMediaResolutions]
ADD CONSTRAINT [FK_tblTVSeriesMediaResolution_MediaTVSeries_Media_Resolution]
    FOREIGN KEY ([ID_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaResolution_MediaTVSeries_Media_Resolution'
CREATE INDEX [IX_FK_tblTVSeriesMediaResolution_MediaTVSeries_Media_Resolution]
ON [dbo].[tblTVSeriesMediaResolutions]
    ([ID_Media]);
GO

-- Creating foreign key on [ID_Media] in table 'tblTVSeriesMediaSpecials'
ALTER TABLE [dbo].[tblTVSeriesMediaSpecials]
ADD CONSTRAINT [FK_tblTVSeriesMediaSpecials_MediaTVSeries_Media_Specials]
    FOREIGN KEY ([ID_Media])
    REFERENCES [dbo].[tblMedias]
        ([ID_Media])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaSpecials_MediaTVSeries_Media_Specials'
CREATE INDEX [IX_FK_tblTVSeriesMediaSpecials_MediaTVSeries_Media_Specials]
ON [dbo].[tblTVSeriesMediaSpecials]
    ([ID_Media]);
GO

-- Creating foreign key on [FK_ParentalRating] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_ParentalRatingMovie]
    FOREIGN KEY ([FK_ParentalRating])
    REFERENCES [dbo].[tblParentalRatings]
        ([ID_ParentalRating])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_ParentalRatingMovie'
CREATE INDEX [IX_FK_tblMovie_ParentalRatingMovie]
ON [dbo].[tblMovies]
    ([FK_ParentalRating]);
GO

-- Creating foreign key on [FK_ReleaseType] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_tblReleaseTypetblMovie]
    FOREIGN KEY ([FK_ReleaseType])
    REFERENCES [dbo].[tblReleaseTypes]
        ([ID_ReleaseType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_tblReleaseTypetblMovie'
CREATE INDEX [IX_FK_tblMovie_tblReleaseTypetblMovie]
ON [dbo].[tblMovies]
    ([FK_ReleaseType]);
GO

-- Creating foreign key on [FK_Resolution] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_tblResolutiontblMovie]
    FOREIGN KEY ([FK_Resolution])
    REFERENCES [dbo].[tblResolutions]
        ([ID_Resolution])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_tblResolutiontblMovie'
CREATE INDEX [IX_FK_tblMovie_tblResolutiontblMovie]
ON [dbo].[tblMovies]
    ([FK_Resolution]);
GO

-- Creating foreign key on [FK_Specials] in table 'tblMovies'
ALTER TABLE [dbo].[tblMovies]
ADD CONSTRAINT [FK_tblMovie_tblSpecialstblMovie]
    FOREIGN KEY ([FK_Specials])
    REFERENCES [dbo].[tblSpecials]
        ([ID_Specials])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovie_tblSpecialstblMovie'
CREATE INDEX [IX_FK_tblMovie_tblSpecialstblMovie]
ON [dbo].[tblMovies]
    ([FK_Specials]);
GO

-- Creating foreign key on [ID_ParentalRating] in table 'tblTVSeries'
ALTER TABLE [dbo].[tblTVSeries]
ADD CONSTRAINT [FK_tblTVSeries_ParentalRatingTVSeries]
    FOREIGN KEY ([ID_ParentalRating])
    REFERENCES [dbo].[tblParentalRatings]
        ([ID_ParentalRating])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeries_ParentalRatingTVSeries'
CREATE INDEX [IX_FK_tblTVSeries_ParentalRatingTVSeries]
ON [dbo].[tblTVSeries]
    ([ID_ParentalRating]);
GO

-- Creating foreign key on [ID_Person] in table 'tblPersons'
ALTER TABLE [dbo].[tblPersons]
ADD CONSTRAINT [FK_tblPerson_Producer]
    FOREIGN KEY ([ID_Person])
    REFERENCES [dbo].[tblProducers]
        ([ID_Producer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_Person] in table 'tblPersons'
ALTER TABLE [dbo].[tblPersons]
ADD CONSTRAINT [FK_tblPerson_Users]
    FOREIGN KEY ([ID_Person])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_ReleaseType] in table 'tblTVSeriesMediaReleaseTypes'
ALTER TABLE [dbo].[tblTVSeriesMediaReleaseTypes]
ADD CONSTRAINT [FK_tblTVSeriesMediaReleaseType_ReleaseTypeTVSeries_Media_ReleaseType]
    FOREIGN KEY ([ID_ReleaseType])
    REFERENCES [dbo].[tblReleaseTypes]
        ([ID_ReleaseType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaReleaseType_ReleaseTypeTVSeries_Media_ReleaseType'
CREATE INDEX [IX_FK_tblTVSeriesMediaReleaseType_ReleaseTypeTVSeries_Media_ReleaseType]
ON [dbo].[tblTVSeriesMediaReleaseTypes]
    ([ID_ReleaseType]);
GO

-- Creating foreign key on [ID_Resolution] in table 'tblTVSeriesMediaResolutions'
ALTER TABLE [dbo].[tblTVSeriesMediaResolutions]
ADD CONSTRAINT [FK_tblTVSeriesMediaResolution_ResolutionTVSeries_Media_Resolution]
    FOREIGN KEY ([ID_Resolution])
    REFERENCES [dbo].[tblResolutions]
        ([ID_Resolution])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaResolution_ResolutionTVSeries_Media_Resolution'
CREATE INDEX [IX_FK_tblTVSeriesMediaResolution_ResolutionTVSeries_Media_Resolution]
ON [dbo].[tblTVSeriesMediaResolutions]
    ([ID_Resolution]);
GO

-- Creating foreign key on [ID_Specials] in table 'tblTVSeriesMediaSpecials'
ALTER TABLE [dbo].[tblTVSeriesMediaSpecials]
ADD CONSTRAINT [FK_tblTVSeriesMediaSpecials_SpecialsTVSeries_Media_Specials]
    FOREIGN KEY ([ID_Specials])
    REFERENCES [dbo].[tblSpecials]
        ([ID_Specials])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMediaSpecials_SpecialsTVSeries_Media_Specials'
CREATE INDEX [IX_FK_tblTVSeriesMediaSpecials_SpecialsTVSeries_Media_Specials]
ON [dbo].[tblTVSeriesMediaSpecials]
    ([ID_Specials]);
GO

-- Creating foreign key on [ID_TVSeries] in table 'tblTVSeriesMediaAudios'
ALTER TABLE [dbo].[tblTVSeriesMediaAudios]
ADD CONSTRAINT [FK_tblTVSeriesMediaAudio_TVSeriesTVSeries_Media_Audio]
    FOREIGN KEY ([ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_TVSeries] in table 'tblTVSeriesMediaCodecs'
ALTER TABLE [dbo].[tblTVSeriesMediaCodecs]
ADD CONSTRAINT [FK_tblTVSeriesMediaCodec_TVSeriesTVSeries_Media_Codec]
    FOREIGN KEY ([ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_TVSeries] in table 'tblTVSeriesMediaReleaseTypes'
ALTER TABLE [dbo].[tblTVSeriesMediaReleaseTypes]
ADD CONSTRAINT [FK_tblTVSeriesMediaReleaseType_TVSeriesTVSeries_Media_ReleaseType]
    FOREIGN KEY ([ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_TVSeries] in table 'tblTVSeriesMediaResolutions'
ALTER TABLE [dbo].[tblTVSeriesMediaResolutions]
ADD CONSTRAINT [FK_tblTVSeriesMediaResolution_TVSeriesTVSeries_Media_Resolution]
    FOREIGN KEY ([ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_TVSeries] in table 'tblTVSeriesMediaSpecials'
ALTER TABLE [dbo].[tblTVSeriesMediaSpecials]
ADD CONSTRAINT [FK_tblTVSeriesMediaSpecials_TVSeriesTVSeries_Media_Specials]
    FOREIGN KEY ([ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblRoles_ID_Role] in table 'tblActorRole'
ALTER TABLE [dbo].[tblActorRole]
ADD CONSTRAINT [FK_tblActorRole_tblRole]
    FOREIGN KEY ([tblRoles_ID_Role])
    REFERENCES [dbo].[tblRoles]
        ([ID_Role])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblActors_ID_Actor] in table 'tblActorRole'
ALTER TABLE [dbo].[tblActorRole]
ADD CONSTRAINT [FK_tblActorRole_tblActor]
    FOREIGN KEY ([tblActors_ID_Actor])
    REFERENCES [dbo].[tblActors]
        ([ID_Actor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblActorRole_tblActor'
CREATE INDEX [IX_FK_tblActorRole_tblActor]
ON [dbo].[tblActorRole]
    ([tblActors_ID_Actor]);
GO

-- Creating foreign key on [tblActors_ID_Actor] in table 'tblEpisodeActor'
ALTER TABLE [dbo].[tblEpisodeActor]
ADD CONSTRAINT [FK_tblEpisodeActor_tblActor]
    FOREIGN KEY ([tblActors_ID_Actor])
    REFERENCES [dbo].[tblActors]
        ([ID_Actor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblEpisodes_ID_Episode] in table 'tblEpisodeActor'
ALTER TABLE [dbo].[tblEpisodeActor]
ADD CONSTRAINT [FK_tblEpisodeActor_tblEpisode]
    FOREIGN KEY ([tblEpisodes_ID_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeActor_tblEpisode'
CREATE INDEX [IX_FK_tblEpisodeActor_tblEpisode]
ON [dbo].[tblEpisodeActor]
    ([tblEpisodes_ID_Episode]);
GO

-- Creating foreign key on [tblEpisodes_ID_Episode] in table 'tblEpisodeGenre'
ALTER TABLE [dbo].[tblEpisodeGenre]
ADD CONSTRAINT [FK_tblEpisodeGenre_tblEpisode]
    FOREIGN KEY ([tblEpisodes_ID_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblGenres_ID_Genre] in table 'tblEpisodeGenre'
ALTER TABLE [dbo].[tblEpisodeGenre]
ADD CONSTRAINT [FK_tblEpisodeGenre_tblGenre]
    FOREIGN KEY ([tblGenres_ID_Genre])
    REFERENCES [dbo].[tblGenres]
        ([ID_Genre])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeGenre_tblGenre'
CREATE INDEX [IX_FK_tblEpisodeGenre_tblGenre]
ON [dbo].[tblEpisodeGenre]
    ([tblGenres_ID_Genre]);
GO

-- Creating foreign key on [tblEpisodes_ID_Episode] in table 'tblEpisodeMusic'
ALTER TABLE [dbo].[tblEpisodeMusic]
ADD CONSTRAINT [FK_tblEpisodeMusic_tblEpisode]
    FOREIGN KEY ([tblEpisodes_ID_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblMusics_ID_Music] in table 'tblEpisodeMusic'
ALTER TABLE [dbo].[tblEpisodeMusic]
ADD CONSTRAINT [FK_tblEpisodeMusic_tblMusic]
    FOREIGN KEY ([tblMusics_ID_Music])
    REFERENCES [dbo].[tblMusics]
        ([ID_Music])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeMusic_tblMusic'
CREATE INDEX [IX_FK_tblEpisodeMusic_tblMusic]
ON [dbo].[tblEpisodeMusic]
    ([tblMusics_ID_Music]);
GO

-- Creating foreign key on [tblEpisodes_ID_Episode] in table 'tblEpisodeNetwork'
ALTER TABLE [dbo].[tblEpisodeNetwork]
ADD CONSTRAINT [FK_tblEpisodeNetwork_tblEpisode]
    FOREIGN KEY ([tblEpisodes_ID_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblNetworks_ID_Network] in table 'tblEpisodeNetwork'
ALTER TABLE [dbo].[tblEpisodeNetwork]
ADD CONSTRAINT [FK_tblEpisodeNetwork_tblNetwork]
    FOREIGN KEY ([tblNetworks_ID_Network])
    REFERENCES [dbo].[tblNetworks]
        ([ID_Network])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeNetwork_tblNetwork'
CREATE INDEX [IX_FK_tblEpisodeNetwork_tblNetwork]
ON [dbo].[tblEpisodeNetwork]
    ([tblNetworks_ID_Network]);
GO

-- Creating foreign key on [tblEpisodes_ID_Episode] in table 'tblEpisodeProducer'
ALTER TABLE [dbo].[tblEpisodeProducer]
ADD CONSTRAINT [FK_tblEpisodeProducer_tblEpisode]
    FOREIGN KEY ([tblEpisodes_ID_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblProducers_ID_Producer] in table 'tblEpisodeProducer'
ALTER TABLE [dbo].[tblEpisodeProducer]
ADD CONSTRAINT [FK_tblEpisodeProducer_tblProducer]
    FOREIGN KEY ([tblProducers_ID_Producer])
    REFERENCES [dbo].[tblProducers]
        ([ID_Producer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeProducer_tblProducer'
CREATE INDEX [IX_FK_tblEpisodeProducer_tblProducer]
ON [dbo].[tblEpisodeProducer]
    ([tblProducers_ID_Producer]);
GO

-- Creating foreign key on [tblEpisodes_ID_Episode] in table 'tblEpisodeStudio'
ALTER TABLE [dbo].[tblEpisodeStudio]
ADD CONSTRAINT [FK_tblEpisodeStudio_tblEpisode]
    FOREIGN KEY ([tblEpisodes_ID_Episode])
    REFERENCES [dbo].[tblEpisodes]
        ([ID_Episode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblStudios_ID_Studio] in table 'tblEpisodeStudio'
ALTER TABLE [dbo].[tblEpisodeStudio]
ADD CONSTRAINT [FK_tblEpisodeStudio_tblStudio]
    FOREIGN KEY ([tblStudios_ID_Studio])
    REFERENCES [dbo].[tblStudios]
        ([ID_Studio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblEpisodeStudio_tblStudio'
CREATE INDEX [IX_FK_tblEpisodeStudio_tblStudio]
ON [dbo].[tblEpisodeStudio]
    ([tblStudios_ID_Studio]);
GO

-- Creating foreign key on [tblActors_ID_Actor] in table 'tblMovieActor'
ALTER TABLE [dbo].[tblMovieActor]
ADD CONSTRAINT [FK_tblMovieActor_tblActor]
    FOREIGN KEY ([tblActors_ID_Actor])
    REFERENCES [dbo].[tblActors]
        ([ID_Actor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblMovies_ID_Movie] in table 'tblMovieActor'
ALTER TABLE [dbo].[tblMovieActor]
ADD CONSTRAINT [FK_tblMovieActor_tblMovie]
    FOREIGN KEY ([tblMovies_ID_Movie])
    REFERENCES [dbo].[tblMovies]
        ([ID_Movie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovieActor_tblMovie'
CREATE INDEX [IX_FK_tblMovieActor_tblMovie]
ON [dbo].[tblMovieActor]
    ([tblMovies_ID_Movie]);
GO

-- Creating foreign key on [tblGenres_ID_Genre] in table 'tblMovieGenre'
ALTER TABLE [dbo].[tblMovieGenre]
ADD CONSTRAINT [FK_tblMovieGenre_tblGenre]
    FOREIGN KEY ([tblGenres_ID_Genre])
    REFERENCES [dbo].[tblGenres]
        ([ID_Genre])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblMovies_ID_Movie] in table 'tblMovieGenre'
ALTER TABLE [dbo].[tblMovieGenre]
ADD CONSTRAINT [FK_tblMovieGenre_tblMovie]
    FOREIGN KEY ([tblMovies_ID_Movie])
    REFERENCES [dbo].[tblMovies]
        ([ID_Movie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovieGenre_tblMovie'
CREATE INDEX [IX_FK_tblMovieGenre_tblMovie]
ON [dbo].[tblMovieGenre]
    ([tblMovies_ID_Movie]);
GO

-- Creating foreign key on [tblMovies_ID_Movie] in table 'tblMovieMusic'
ALTER TABLE [dbo].[tblMovieMusic]
ADD CONSTRAINT [FK_tblMovieMusic_tblMovie]
    FOREIGN KEY ([tblMovies_ID_Movie])
    REFERENCES [dbo].[tblMovies]
        ([ID_Movie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblMusics_ID_Music] in table 'tblMovieMusic'
ALTER TABLE [dbo].[tblMovieMusic]
ADD CONSTRAINT [FK_tblMovieMusic_tblMusic]
    FOREIGN KEY ([tblMusics_ID_Music])
    REFERENCES [dbo].[tblMusics]
        ([ID_Music])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovieMusic_tblMusic'
CREATE INDEX [IX_FK_tblMovieMusic_tblMusic]
ON [dbo].[tblMovieMusic]
    ([tblMusics_ID_Music]);
GO

-- Creating foreign key on [tblMovies_ID_Movie] in table 'tblMovieProducer'
ALTER TABLE [dbo].[tblMovieProducer]
ADD CONSTRAINT [FK_tblMovieProducer_tblMovie]
    FOREIGN KEY ([tblMovies_ID_Movie])
    REFERENCES [dbo].[tblMovies]
        ([ID_Movie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblProducers_ID_Producer] in table 'tblMovieProducer'
ALTER TABLE [dbo].[tblMovieProducer]
ADD CONSTRAINT [FK_tblMovieProducer_tblProducer]
    FOREIGN KEY ([tblProducers_ID_Producer])
    REFERENCES [dbo].[tblProducers]
        ([ID_Producer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovieProducer_tblProducer'
CREATE INDEX [IX_FK_tblMovieProducer_tblProducer]
ON [dbo].[tblMovieProducer]
    ([tblProducers_ID_Producer]);
GO

-- Creating foreign key on [tblMovies_ID_Movie] in table 'tblMovieStudio'
ALTER TABLE [dbo].[tblMovieStudio]
ADD CONSTRAINT [FK_tblMovieStudio_tblMovie]
    FOREIGN KEY ([tblMovies_ID_Movie])
    REFERENCES [dbo].[tblMovies]
        ([ID_Movie])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblStudios_ID_Studio] in table 'tblMovieStudio'
ALTER TABLE [dbo].[tblMovieStudio]
ADD CONSTRAINT [FK_tblMovieStudio_tblStudio]
    FOREIGN KEY ([tblStudios_ID_Studio])
    REFERENCES [dbo].[tblStudios]
        ([ID_Studio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMovieStudio_tblStudio'
CREATE INDEX [IX_FK_tblMovieStudio_tblStudio]
ON [dbo].[tblMovieStudio]
    ([tblStudios_ID_Studio]);
GO

-- Creating foreign key on [tblComposers_ID_Composer] in table 'tblMusicComposer'
ALTER TABLE [dbo].[tblMusicComposer]
ADD CONSTRAINT [FK_tblMusicComposer_tblComposer]
    FOREIGN KEY ([tblComposers_ID_Composer])
    REFERENCES [dbo].[tblComposers]
        ([ID_Composer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblMusics_ID_Music] in table 'tblMusicComposer'
ALTER TABLE [dbo].[tblMusicComposer]
ADD CONSTRAINT [FK_tblMusicComposer_tblMusic]
    FOREIGN KEY ([tblMusics_ID_Music])
    REFERENCES [dbo].[tblMusics]
        ([ID_Music])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblMusicComposer_tblMusic'
CREATE INDEX [IX_FK_tblMusicComposer_tblMusic]
ON [dbo].[tblMusicComposer]
    ([tblMusics_ID_Music]);
GO

-- Creating foreign key on [tblActors_ID_Actor] in table 'tblTVSeriesActor'
ALTER TABLE [dbo].[tblTVSeriesActor]
ADD CONSTRAINT [FK_tblTVSeriesActor_tblActor]
    FOREIGN KEY ([tblActors_ID_Actor])
    REFERENCES [dbo].[tblActors]
        ([ID_Actor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesActor'
ALTER TABLE [dbo].[tblTVSeriesActor]
ADD CONSTRAINT [FK_tblTVSeriesActor_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesActor_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesActor_tblTVSeries]
ON [dbo].[tblTVSeriesActor]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [tblDirectors_ID_Director] in table 'tblTVSeriesDirector'
ALTER TABLE [dbo].[tblTVSeriesDirector]
ADD CONSTRAINT [FK_tblTVSeriesDirector_tblDirector]
    FOREIGN KEY ([tblDirectors_ID_Director])
    REFERENCES [dbo].[tblDirectors]
        ([ID_Director])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesDirector'
ALTER TABLE [dbo].[tblTVSeriesDirector]
ADD CONSTRAINT [FK_tblTVSeriesDirector_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesDirector_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesDirector_tblTVSeries]
ON [dbo].[tblTVSeriesDirector]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [tblGenres_ID_Genre] in table 'tblTVSeriesGenre'
ALTER TABLE [dbo].[tblTVSeriesGenre]
ADD CONSTRAINT [FK_tblTVSeriesGenre_tblGenre]
    FOREIGN KEY ([tblGenres_ID_Genre])
    REFERENCES [dbo].[tblGenres]
        ([ID_Genre])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesGenre'
ALTER TABLE [dbo].[tblTVSeriesGenre]
ADD CONSTRAINT [FK_tblTVSeriesGenre_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesGenre_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesGenre_tblTVSeries]
ON [dbo].[tblTVSeriesGenre]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [tblMusics_ID_Music] in table 'tblTVSeriesMusic'
ALTER TABLE [dbo].[tblTVSeriesMusic]
ADD CONSTRAINT [FK_tblTVSeriesMusic_tblMusic]
    FOREIGN KEY ([tblMusics_ID_Music])
    REFERENCES [dbo].[tblMusics]
        ([ID_Music])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesMusic'
ALTER TABLE [dbo].[tblTVSeriesMusic]
ADD CONSTRAINT [FK_tblTVSeriesMusic_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesMusic_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesMusic_tblTVSeries]
ON [dbo].[tblTVSeriesMusic]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [tblNetworks_ID_Network] in table 'tblTVSeriesNetwork'
ALTER TABLE [dbo].[tblTVSeriesNetwork]
ADD CONSTRAINT [FK_tblTVSeriesNetwork_tblNetwork]
    FOREIGN KEY ([tblNetworks_ID_Network])
    REFERENCES [dbo].[tblNetworks]
        ([ID_Network])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesNetwork'
ALTER TABLE [dbo].[tblTVSeriesNetwork]
ADD CONSTRAINT [FK_tblTVSeriesNetwork_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesNetwork_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesNetwork_tblTVSeries]
ON [dbo].[tblTVSeriesNetwork]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [tblProducers_ID_Producer] in table 'tblTVSeriesProducer'
ALTER TABLE [dbo].[tblTVSeriesProducer]
ADD CONSTRAINT [FK_tblTVSeriesProducer_tblProducer]
    FOREIGN KEY ([tblProducers_ID_Producer])
    REFERENCES [dbo].[tblProducers]
        ([ID_Producer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesProducer'
ALTER TABLE [dbo].[tblTVSeriesProducer]
ADD CONSTRAINT [FK_tblTVSeriesProducer_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesProducer_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesProducer_tblTVSeries]
ON [dbo].[tblTVSeriesProducer]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [tblStudios_ID_Studio] in table 'tblTVSeriesStudio'
ALTER TABLE [dbo].[tblTVSeriesStudio]
ADD CONSTRAINT [FK_tblTVSeriesStudio_tblStudio]
    FOREIGN KEY ([tblStudios_ID_Studio])
    REFERENCES [dbo].[tblStudios]
        ([ID_Studio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tblTVSeries_ID_TVSeries] in table 'tblTVSeriesStudio'
ALTER TABLE [dbo].[tblTVSeriesStudio]
ADD CONSTRAINT [FK_tblTVSeriesStudio_tblTVSeries]
    FOREIGN KEY ([tblTVSeries_ID_TVSeries])
    REFERENCES [dbo].[tblTVSeries]
        ([ID_TVSeries])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTVSeriesStudio_tblTVSeries'
CREATE INDEX [IX_FK_tblTVSeriesStudio_tblTVSeries]
ON [dbo].[tblTVSeriesStudio]
    ([tblTVSeries_ID_TVSeries]);
GO

-- Creating foreign key on [Users_UserID] in table 'UsersInRoles'
ALTER TABLE [dbo].[UsersInRoles]
ADD CONSTRAINT [FK_UsersInRoles_Users]
    FOREIGN KEY ([Users_UserID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserRoles_RoleID] in table 'UsersInRoles'
ALTER TABLE [dbo].[UsersInRoles]
ADD CONSTRAINT [FK_UsersInRoles_UserRoles]
    FOREIGN KEY ([UserRoles_RoleID])
    REFERENCES [dbo].[UserRoles]
        ([RoleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersInRoles_UserRoles'
CREATE INDEX [IX_FK_UsersInRoles_UserRoles]
ON [dbo].[UsersInRoles]
    ([UserRoles_RoleID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------