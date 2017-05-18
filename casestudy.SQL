IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'HRS')
	DROP DATABASE [CASESTUDY]
GO

CREATE DATABASE [CASESTUDY]  
GO

use [CASESTUDY]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Skill_Category]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT FK_Skill_Category
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Employee_CivilStatus]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT FK_Employee_CivilStatus
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_AccentureDetails_Employee]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[AccentureDetails] DROP CONSTRAINT FK_AccentureDetails_Employee
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_AccentureDetails_Level]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[AccentureDetails] DROP CONSTRAINT FK_AccentureDetails_Level
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_UserRoles_Roles]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT FK_UserRoles_Roles
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_AccentureDetails_Specialty]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[AccentureDetails] DROP CONSTRAINT FK_AccentureDetails_Specialty
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_AccentureDetails_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[AccentureDetails] DROP CONSTRAINT FK_AccentureDetails_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_AccentureDetails_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[AccentureDetails] DROP CONSTRAINT FK_AccentureDetails_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Category_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Category] DROP CONSTRAINT FK_Category_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Category_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Category] DROP CONSTRAINT FK_Category_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_CivilStatus_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[CivilStatus] DROP CONSTRAINT FK_CivilStatus_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_CivilStatus_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[CivilStatus] DROP CONSTRAINT FK_CivilStatus_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Employee_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT FK_Employee_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Employee_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT FK_Employee_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Errors_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Errors] DROP CONSTRAINT FK_Errors_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Level_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Level] DROP CONSTRAINT FK_Level_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Level_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Level] DROP CONSTRAINT FK_Level_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Project_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Project] DROP CONSTRAINT FK_Project_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Project_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Project] DROP CONSTRAINT FK_Project_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Roles_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT FK_Roles_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Roles_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT FK_Roles_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Skill_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT FK_Skill_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Skill_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT FK_Skill_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Speciality_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Specialty] DROP CONSTRAINT FK_Speciality_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Speciality_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Specialty] DROP CONSTRAINT FK_Speciality_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_UserRoles_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT FK_UserRoles_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_UserRoles_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT FK_UserRoles_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_UserRoles_Users2]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT FK_UserRoles_Users2
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Users_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Users] DROP CONSTRAINT FK_Users_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Users_Users1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Users] DROP CONSTRAINT FK_Users_Users1
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spValidateUser]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spValidateUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AccentureDetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[AccentureDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Category]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Category]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CivilStatus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CivilStatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Employee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Employee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Errors]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Errors]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Level]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Level]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Project]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Project]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Roles]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Roles]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Skill]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Skill]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Specialty]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Specialty]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserRoles]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserRoles]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Users]
GO

CREATE TABLE [dbo].[AccentureDetails] (
	[EmployeeId] [int] NOT NULL ,
	[Email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[EnterpriseId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Level] [int] NULL ,
	[LMU] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[GMU] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DateHired] [datetime] NOT NULL ,
	[WorkGroup] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Specialty] [int] NULL ,
	[ServiceLine] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Status] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Category] (
	[CategoryId] [int] IDENTITY (1, 1) NOT NULL ,
	[CategoryName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CategoryDescription] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CivilStatus] (
	[StatusId] [int] IDENTITY (1, 1) NOT NULL ,
	[StatusDescription] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Employee] (
	[EmployeeId] [int] IDENTITY (1, 1) NOT NULL ,
	[FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[BirthDate] [datetime] NOT NULL ,
	[Age] AS (datediff(year,[BirthDate],getdate())) ,
	[Gender] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CivilStatus] [int] NULL ,
	[Religion] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SSNo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TinNo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Citizenship] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MobileNo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HomePhoneNo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Street1] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Street2] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[City] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[State] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ZipCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Country] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ProjectProfile] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SkillProfile] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EducBackGround] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Recognitions] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Errors] (
	[ErrorId] [int] IDENTITY (1, 1) NOT NULL ,
	[Message] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Source] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CustomMessage] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[StackTrace] [varchar] (3000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SeverityLevel] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CreatedBy] [int] NULL ,
	[CreatedDate] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Level] (
	[LevelId] [int] IDENTITY (1, 1) NOT NULL ,
	[LevelDescription] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Project] (
	[ProjId] [int] IDENTITY (1, 1) NOT NULL ,
	[ProjName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Client] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[StartDate] [datetime] NOT NULL ,
	[EndDate] [datetime] NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Roles] (
	[RoleId] [int] IDENTITY (1, 1) NOT NULL ,
	[RoleName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Skill] (
	[SkillId] [int] IDENTITY (1, 1) NOT NULL ,
	[SkillName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SkillDescription] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CategoryId] [int] NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Specialty] (
	[SpecialtyId] [int] IDENTITY (1, 1) NOT NULL ,
	[SpecialtyName] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserRoles] (
	[UserID] [int] NOT NULL ,
	[RoleID] [int] NOT NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Users] (
	[UserID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Password] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FirstName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LastName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CreatedBy] [int] NOT NULL ,
	[CreatedDate] [datetime] NOT NULL ,
	[LastModifiedBy] [int] NULL ,
	[LastModifiedDate] [datetime] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AccentureDetails] WITH NOCHECK ADD 
	CONSTRAINT [PK_AccentureDetails] PRIMARY KEY  CLUSTERED 
	(
		[EmployeeId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Category] WITH NOCHECK ADD 
	CONSTRAINT [PK_Category] PRIMARY KEY  CLUSTERED 
	(
		[CategoryId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CivilStatus] WITH NOCHECK ADD 
	CONSTRAINT [PK_CivilStatus] PRIMARY KEY  CLUSTERED 
	(
		[StatusId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Employee] WITH NOCHECK ADD 
	CONSTRAINT [PK_Employee] PRIMARY KEY  CLUSTERED 
	(
		[EmployeeId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Level] WITH NOCHECK ADD 
	CONSTRAINT [PK_Level] PRIMARY KEY  CLUSTERED 
	(
		[LevelId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Project] WITH NOCHECK ADD 
	CONSTRAINT [PK_Project] PRIMARY KEY  CLUSTERED 
	(
		[ProjId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Roles] WITH NOCHECK ADD 
	CONSTRAINT [PK_Roles] PRIMARY KEY  CLUSTERED 
	(
		[RoleId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Skill] WITH NOCHECK ADD 
	CONSTRAINT [PK_Skill] PRIMARY KEY  CLUSTERED 
	(
		[SkillId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Specialty] WITH NOCHECK ADD 
	CONSTRAINT [PK_Speciality] PRIMARY KEY  CLUSTERED 
	(
		[SpecialtyId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Users] WITH NOCHECK ADD 
	CONSTRAINT [PK_Users] PRIMARY KEY  CLUSTERED 
	(
		[UserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[AccentureDetails] ADD 
	CONSTRAINT [IX_AccentureDetails] UNIQUE  NONCLUSTERED 
	(
		[Email]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_AccentureDetails_1] UNIQUE  NONCLUSTERED 
	(
		[EnterpriseId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Category] ADD 
	CONSTRAINT [IX_Category] UNIQUE  NONCLUSTERED 
	(
		[CategoryName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CivilStatus] ADD 
	CONSTRAINT [IX_CivilStatus] UNIQUE  NONCLUSTERED 
	(
		[StatusDescription]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Employee] ADD 
	CONSTRAINT [IX_Employee_2] UNIQUE  NONCLUSTERED 
	(
		[SSNo]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_Employee_3] UNIQUE  NONCLUSTERED 
	(
		[TinNo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Level] ADD 
	CONSTRAINT [IX_Level] UNIQUE  NONCLUSTERED 
	(
		[LevelDescription]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Project] ADD 
	CONSTRAINT [IX_Project] UNIQUE  NONCLUSTERED 
	(
		[ProjName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Roles] ADD 
	CONSTRAINT [IX_Roles] UNIQUE  NONCLUSTERED 
	(
		[RoleName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Skill] ADD 
	CONSTRAINT [IX_Skill] UNIQUE  NONCLUSTERED 
	(
		[SkillName],
		[CategoryId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Specialty] ADD 
	CONSTRAINT [IX_Speciality] UNIQUE  NONCLUSTERED 
	(
		[SpecialtyName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserRoles] ADD 
	CONSTRAINT [IX_UserRoles] UNIQUE  NONCLUSTERED 
	(
		[UserID],
		[RoleID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Users] ADD 
	CONSTRAINT [IX_Users] UNIQUE  NONCLUSTERED 
	(
		[UserName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[AccentureDetails] ADD 
	CONSTRAINT [FK_AccentureDetails_Employee] FOREIGN KEY 
	(
		[EmployeeId]
	) REFERENCES [dbo].[Employee] (
		[EmployeeId]
	) ON DELETE CASCADE ,
	CONSTRAINT [FK_AccentureDetails_Level] FOREIGN KEY 
	(
		[Level]
	) REFERENCES [dbo].[Level] (
		[LevelId]
	),
	CONSTRAINT [FK_AccentureDetails_Specialty] FOREIGN KEY 
	(
		[Specialty]
	) REFERENCES [dbo].[Specialty] (
		[SpecialtyId]
	),
	CONSTRAINT [FK_AccentureDetails_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_AccentureDetails_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Category] ADD 
	CONSTRAINT [FK_Category_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Category_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[CivilStatus] ADD 
	CONSTRAINT [FK_CivilStatus_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_CivilStatus_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Employee] ADD 
	CONSTRAINT [FK_Employee_CivilStatus] FOREIGN KEY 
	(
		[CivilStatus]
	) REFERENCES [dbo].[CivilStatus] (
		[StatusId]
	),
	CONSTRAINT [FK_Employee_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Employee_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Errors] ADD 
	CONSTRAINT [FK_Errors_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Level] ADD 
	CONSTRAINT [FK_Level_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Level_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Project] ADD 
	CONSTRAINT [FK_Project_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Project_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Roles] ADD 
	CONSTRAINT [FK_Roles_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Roles_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Skill] ADD 
	CONSTRAINT [FK_Skill_Category] FOREIGN KEY 
	(
		[CategoryId]
	) REFERENCES [dbo].[Category] (
		[CategoryId]
	),
	CONSTRAINT [FK_Skill_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Skill_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[Specialty] ADD 
	CONSTRAINT [FK_Speciality_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Speciality_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

ALTER TABLE [dbo].[UserRoles] ADD 
	CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY 
	(
		[RoleID]
	) REFERENCES [dbo].[Roles] (
		[RoleId]
	),
	CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY 
	(
		[UserID]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_UserRoles_Users1] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_UserRoles_Users2] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO



SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE spValidateUser
	@userName VARCHAR(20),
	@password VARCHAR(20)
AS
	SET NOCOUNT ON
	
	-- declare the variables to be used.
	DECLARE @RetVal INT
	DECLARE @UserId INT

	SELECT @UserId = UserID FROM dbo.Users WHERE userName = @userName and [password] = @password
	
	IF @userID IS NOT NULL
		BEGIN
			IF EXISTS (SELECT 1 FROM dbo.UserRoles WHERE RoleID = 1 and userId = @UserID)
		    		BEGIN
					SET @RetVal = 1 -- For correct login
			    	END
			ELSE
				BEGIN
					SET @RetVal = 2 -- Correct Login but doesnot belongs to HRManager''s role
				END
		END
	ELSE
		BEGIN
			SET @RetVal = 3 -- Login Failed. Incorrect UserName or Password.
		END

	SELECT @RetVal AS RetVal, @UserId AS UserID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCreateError]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCreateError]
GO



CREATE  PROCEDURE spCreateError
	@message VARCHAR(500),		-- Error message.
	@source VARCHAR(50),			-- Source of error.
	@customMessage VARCHAR(250),	-- Custom error message.
	@stackTrace VARCHAR(3000),		-- Error stacktrace.
	@severityLevel VARCHAR(20) = NULL,	-- Error Security Level - Default Null is set for Application level errors.
	@createdBy INT			-- User who creates the record.

AS
	BEGIN
		-- Insert Values into the dbo.Errors table. 
		INSERT INTO dbo.Errors (Message,
				        	  Source,
				        	  CustomMessage,
				        	  StackTrace, 
				        	  SeverityLevel, 
				        	  CreatedBy,
				        	  CreatedDate)
		VALUES (@message,
			   @source,
			   @customMessage, 
			   @stackTrace,
			   @severityLevel, 
			   CASE @createdBy WHEN -1 THEN NULL ELSE @createdBy END, 
			   GETDATE())
	END

GO




/****** Object:  StoredProcedure [dbo].[spCreateEmployee]    ******/


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCreateEmployee] 
	@FirstName VARCHAR (50),		-- First Name of Employee.
 	@MiddleName VARCHAR (50),		-- Middle Name of Employee.
	@LastName VARCHAR (50),		-- Last Name of Employee.
	@BirthDate DATETIME,			-- Birth Date of Employee.
	@Gender VARCHAR (1), 		-- Gender of Employee.
	@CivilStatus INT, 			-- Civil Status of Employee.
	@SSNo VARCHAR (15), 		-- Social Security number of Employee.
	@TinNo VARCHAR (15), 		-- Tin number of Employee.
	@Citizenship VARCHAR (15), 		-- Citizenship of Employee.
	@MobileNo VARCHAR (15), 		-- Mobile number of Employee.
	@HomePhoneNo VARCHAR (15), 	-- Home phone number of Employee.
	@Street1 VARCHAR (100), 		-- Street address 1 where the Employee resides.
	@Street2 VARCHAR (100), 		-- Street address 2 where the Employee resides.
	@City VARCHAR (100), 			-- City where the Employee resides.
	@State VARCHAR (100), 		-- State where the Employee resides.
	@Country VARCHAR (100), 		-- Country where the Employee resides.
	@EducBackGround VARCHAR (500),  	-- Educational background of Employee.
	@Recognitions VARCHAR (500), 	-- Certifications/Awards received by the Employee.
	@Email VARCHAR (50), 			-- Email address of Employee.
	@EnterpriseId VARCHAR (50), 		-- Enterprise Id of Employee.
	@Level INT, 				-- Level of Employee.
	@LMU VARCHAR (5), 			-- LMU of Employee.
	@GMU VARCHAR (5), 			-- GMU of Employee.
	@DateHired DATETIME, 		-- Hire Date of Employee.
	@WorkGroup VARCHAR (30), 		-- Work group of Employee.
	@Specialty INT, 			-- Specialty of Employee.
	@ServiceLine VARCHAR (50), 		-- Service line of Employee.
	@Status VARCHAR (20),		-- Status of Employee.
	@CreatedBy INT			-- User who creates the record.
AS
	-- declare the variable to be used.
	DECLARE @EmployeeId INT

	BEGIN TRANSACTION
		-- Insert Values into the dbo.Employee table. 
		INSERT INTO dbo.Employee (FirstName,
					        MiddleName,
					        LastName,
					        BirthDate, 
					        Gender,
					        CivilStatus,
					        SSNo,
					        TinNo,
					        Citizenship,
					        MobileNo,
					        HomePhoneNo,
					        Street1,
					        Street2,
					        City, 
					        State,
					        Country,
					        EducBackGround,
					        Recognitions,
					        CreatedBy,
					        CreatedDate)
		VALUES (@FirstName,
			  @MiddleName,
 			  @LastName,
			  @BirthDate,
			  @Gender,
			  CASE @CivilStatus WHEN -1 THEN NULL ELSE @CivilStatus END,
			  @SSNo,
			  @TinNo,
			  @Citizenship, 
			  @MobileNo,
			  @HomePhoneNo,
			  @Street1,
			  @Street2,
			  @City, 
			  @State,
			  @Country, 
			  @EducBackGround, 
			  @Recognitions, 
			  @CreatedBy, 
			  GETDATE())

		-- Get the new Employee Identifier.
		SET @EmployeeId = @@IDENTITY

		IF @@ERROR = 0 
			BEGIN
				-- Insert Values into the dbo.AccentureDetails table.
				INSERT INTO dbo.AccentureDetails (EmployeeId,
								       Email,
							           	       EnterpriseId, 
								       [Level],
								       LMU,
								       GMU,
								       DateHired,
								       WorkGroup,
								       Specialty,
								       ServiceLine,
								       Status,
								       CreatedBy,
								       CreatedDate)
				VALUES (@EmployeeId,
					   @Email, 
					   @EnterpriseId,
					   CASE @Level WHEN -1 THEN NULL ELSE @Level END,
					   @LMU,
					   @GMU,
					   @DateHired,
					   @WorkGroup, 
					   CASE @Specialty WHEN -1 THEN NULL ELSE @Specialty END,
					   @ServiceLine,
					   @Status,
					   @CreatedBy,
					   GETDATE())
		
				IF @@ERROR = 0 
					BEGIN
						COMMIT TRANSACTION
					END
				ELSE
					BEGIN
						ROLLBACK TRANSACTION
					END
			END
		ELSE
			BEGIN
			 	   ROLLBACK TRANSACTION 
			END
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[spUpdateEmployee]   
	@EmpId INT, 				-- Employee Identifier. 			
	@FirstName VARCHAR (50),   		-- First Name of Employee.
	@MiddleName VARCHAR (50),   		-- Middle Name of Employee.
	@LastName VARCHAR (50),   		-- Last Name of Employee.
	@BirthDate DATETIME,   		-- Birth Date of Employee.
	@Gender VARCHAR (1),   		-- Gender of Employee.
	@CivilStatus INT,   			-- Civil Status of Employee.
	@SSNo VARCHAR (15),   		-- Social Security number of Employee.
	@TinNo VARCHAR (15),   		-- Tin number of Employee.
	@Citizenship VARCHAR (15),   		-- Citizenship of Employee.
	@MobileNo VARCHAR (15),   		-- Mobile number of Employee.
	@HomePhoneNo VARCHAR (15),   	-- Home phone number of Employee.
	@Street1 VARCHAR (100),   		-- Street address 1 where the Employee resides.
	@Street2 VARCHAR (100),   		-- Street address 2 where the Employee resides.	
	@City VARCHAR (100),   		-- City where the Employee resides.
	@State VARCHAR (100),   		-- State where the Employee resides.
	@Country VARCHAR (100),   		-- Country where the Employee resides.
	@EducBackGround VARCHAR (500),    	-- Educational background of Employee.
	@Recognitions VARCHAR (500),   	-- Certifications/Awards received by the Employee.
	@Email VARCHAR (50),   		-- Email address of Employee.
	@EnterpriseId VARCHAR (50),   		-- Enterprise Id of Employee.
	@Level INT,   				-- Level of Employee.
	@LMU VARCHAR (5),   			-- LMU of Employee.
	@GMU VARCHAR (5),   			-- GMU of Employee.
	@DateHired DATETIME,   		-- Hire Date of Employee.
	@WorkGroup VARCHAR (30),   		-- Work group of Employee.
	@Specialty INT,   			-- Specialty of Employee.
	@ServiceLine VARCHAR (50),   		-- Service line of Employee.
	@Status VARCHAR (20),  		-- Status of Employee.
	@LastModifiedBy INT			-- User who modifies the record.
  
AS  
	BEGIN TRANSACTION  
		-- Update Employee details in the dbo.Employee table.
		UPDATE dbo.Employee  
			SET  FirstName = @FirstName,  
			         MiddleName = @MiddleName,   
			         LastName = @LastName,   
			         BirthDate = @BirthDate,   
                                 Gender = @Gender,   
			         CivilStatus = CASE @CivilStatus WHEN -1 THEN NULL ELSE @CivilStatus END,   
			         SSNo = @SSNo,   
			         TinNo = @TinNo,   
			         Citizenship = @Citizenship,   
			         MobileNo = @MobileNo,   
			         HomePhoneNo = @HomePhoneNo,   
			         Street1 = @Street1,   
			         Street2 = @Street2,   
			         City = @City,   
			         State = @State,   
			         Country = @Country,   
			         EducBackGround = @EducBackGround,  
			         Recognitions = @Recognitions,   
			         LastModifiedBy = @LastModifiedBy,   
			         LastModifiedDate = GETDATE()  
		WHERE EmployeeId = @EmpId  
  
		IF @@ERROR = 0   
			BEGIN
				-- Update Employee details in the dbo.AccentureDetails table.
				UPDATE dbo.AccentureDetails  
					SET Email = @Email,   
					        EnterpriseId = @EnterpriseId,   
					        [Level] = CASE  @Level WHEN -1 THEN NULL ELSE  @Level END,   
					        LMU = @LMU,   
					        GMU = @GMU,   
					        DateHired = @DateHired,   
					        WorkGroup = @WorkGroup,   
					        Specialty = CASE @Specialty WHEN -1 THEN NULL ELSE @Specialty END,
					        ServiceLine = @ServiceLine,   
					        Status = @Status,   
					        LastModifiedBy = @LastModifiedBy,   
					        LastModifiedDate = GETDATE()  
				WHERE EmployeeId = @EmpId  
				
				IF @@ERROR = 0 
					BEGIN
						COMMIT TRANSACTION
					END
				ELSE
					BEGIN
						ROLLBACK TRANSACTION
					END
  			END
		ELSE
			BEGIN 
				ROLLBACK TRANSACTION
			END
GO




SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSearchEmployee]
	@firstName VARCHAR(50),	-- First Name of Employee
	@lastName VARCHAR(50)	-- Last Name of Employee
AS
	SET NOCOUNT ON

	-- Selects the list of Employees from dbo.Employee and dbo.AccentureDetails tables depending the firstname and lastname input parameters.
	SELECT Emp.EmployeeId, 
		 (Emp.LastName + ' ' + Emp.FirstName + ' ' + Emp.MiddleName) AS FullName, 
		 (SELECT LevelDescription FROM dbo.[Level] WHERE LevelId = AccDet.[Level]) AS [Level]
	FROM dbo.Employee Emp INNER JOIN dbo.AccentureDetails AccDet
	ON Emp.EmployeeId = AccDet.EmployeeId
	WHERE FirstName like '%' + @firstName + '%' AND LastName like '%' + @lastName + '%'
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spViewEmployee]
	@empID INT
AS
	SET NOCOUNT ON

	-- Gets the employee details depending on the employee id input parameter. 
	SELECT Emp.EmployeeId,
		 FirstName,
		 MiddleName,
		 LastName,
		 BirthDate,
		 Age,
		 Gender,
		 CivilStatus, 
		 (SELECT StatusDescription FROM dbo.CivilStatus WHERE StatusId = CivilStatus) AS CivilStatusDescription, 
		 SSNo,
		 TinNo,
		 Citizenship, 
		 MobileNo, 
		 HomePhoneNo,
		 Street1,
		 Street2,
		 City,
		 State,
		 Country,
		 EducBackGround,
		 Recognitions,
		 Email,
		 EnterpriseId,
		 [Level],
		 (SELECT LevelDescription FROM dbo.[Level] WHERE LevelId = [Level]) AS LevelDescription,
		 LMU,
		 GMU,
		 DateHired,
		 WorkGroup,
		 Specialty,
		 (SELECT SpecialtyName FROM dbo.Specialty WHERE SpecialtyId = Specialty) AS SpecialtyDescription,
		 ServiceLine,
		 Status 
	FROM dbo.Employee Emp INNER JOIN dbo.AccentureDetails Accdet
	ON Emp.EmployeeId = Accdet.EmployeeID
	WHERE Emp.EmployeeId = @empID
GO





SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetSpecialtyList] 
AS
	SET NOCOUNT ON

	-- Gets the list of Specialties from dbo.Specialty table.
	SELECT SpecialtyId, 
		 SpecialtyName
	FROM dbo.Specialty
GO



SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[spGetLevelList] 
AS
	SET NOCOUNT ON

	-- Gets the list of Levels from dbo.Level table.
	SELECT LevelId,
		 LevelDescription
	FROM dbo.[Level]
GO



SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[spGetCivilStatusList] 
AS
	SET NOCOUNT ON

	-- Gets the list of Civil status from dbo.CivilStatus table.
	SELECT StatusId,
		 StatusDescription
	FROM dbo.CivilStatus
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetCategoryList]
AS
SET NOCOUNT ON
	BEGIN 
		SELECT CategoryId, CategoryName
		FROM dbo.Category
	END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCreateProject] 
	@projectName VARCHAR(50),	-- Project Name.
	@projectDesc VARCHAR(100),	-- Project description.
	@client VARCHAR(50),		-- Client Name.
	@startDate DATETIME,		-- Project start date.
	@endDate  DATETIME,		-- Project end date.
	@createdBy INT		-- User who creates the record.

AS
	BEGIN
		-- Insert Values into the dbo.Project table. 
		INSERT INTO dbo.Project (ProjName,
					    [Description],
				                 Client,
				                 StartDate, 
				                 EndDate, 
				                 CreatedBy, 
				                 CreatedDate)
		VALUES (@ProjectName,
			   @projectDesc,
			   @client, 
			   @startDate,
			   @endDate, 
			   @createdBy, 
			   GETDATE())
	END
GO




CREATE PROCEDURE [dbo].[spUpdateProject] 
	@projectID INT,
	@projectDesc VARCHAR (100),	-- Project description.
	@client VARCHAR(50),		-- Client Name.
	@startDate DATETIME,		-- Project start date.
	@endDate  DATETIME,		-- Project end date.
	@LastModifiedBy INT 		-- User who modifies the record.
AS
	-- Updates the project details in dbo.Project table.
	UPDATE dbo.Project
		SET [Description] = @projectDesc,
		        Client = @client,
		        StartDate = @startDate,  
		        EndDate = @endDate,
		        LastModifiedBy = @LastModifiedBy,
		        LastModifiedDate = GETDATE()
	WHERE projId = @ProjectID
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spViewProject] 
	@projectID INT	-- Project Identifier
AS
	SET NOCOUNT ON

	-- Gets the details of project depending on the project id input parameter.
	SELECT ProjName,
		 [Description],
		 Client,
		 StartDate,
		 EndDate
	FROM dbo.Project
	WHERE projId = @projectID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[spSearchProject] 
	@projectName VARCHAR(50)	-- Project Name

AS
	SET NOCOUNT ON

	
	SELECT ProjId,
		 ProjName,
		 StartDate,
		 EndDate
	FROM dbo.Project 
	WHERE projName like '%' + @projectName + '%'
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCreateCategory]
	@categoryName VARCHAR(50),  	--Name of Category 
	@categoryDesc VARCHAR(100),		--Category Description
	@createdBy INT 			--Name of user who created the Category
AS
	BEGIN 
		--Inserts values into Category Table
		INSERT INTO dbo.Category(CategoryName,
				     CategoryDescription,
				     CreatedBy,
				     CreatedDate)
		Values(@categoryName,
		       @categoryDesc,
		       @createdBy,
		       getdate())
	END
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateCategory]
	@categoryId INT,
	@categoryName VARCHAR (50),
	@categoryDesc VARCHAR (100),
	@modifiedBy INT
AS
	BEGIN
		-- Updates the Catgory details in dbo.Skill table.
		UPDATE dbo.Category
			SET CategoryName = @categoryName,			
				CategoryDescription = @categoryDesc,
				LastModifiedBy = @modifiedBy,
				LastModifiedDate = getdate()

			WHERE CategoryId = @categoryId
	END
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spViewCategory]
	@catId INT --Category Identifier
AS
	BEGIN
		SET NOCOUNT ON
		-- Gets the details of category depending on the category id input parameter.
		SELECT 
		CategoryName,CategoryDescription,CreatedBy,CreatedDate,LastModifiedBy,LastModifiedDate
		FROM Category
		WHERE CategoryId = @catId
	END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSearchCategory]
@catName VARCHAR(50)

AS

SELECT 
CategoryId,CategoryName
FROM Category
WHERE CategoryName LIKE '%'+ @catName + '%'
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCreateSkill]
	@skillName VARCHAR(50),		  
	@skillDesc VARCHAR(100),
	@categoryId INT,
	@createdBy INT
AS

	BEGIN 
		----Inserts values into Skill Table
		INSERT INTO dbo.Skill(SkillName,
				      SkillDescription,
				      CategoryId,
				      CreatedBy,
				      CreatedDate)
		Values(@skillName,
		       @skillDesc,
		       @categoryId,
		       @createdBy,
		       getdate())
	END
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spUpdateSkill]
	@skillId INT,		--Skill Identifier
	@skillName VARCHAR(50),	 --Skill Name	 
	@skillDesc VARCHAR(100), --Skill Description
	@modifiedBy INT		 --User who modifies the record
AS
	BEGIN
		-- Updates the Skill details in dbo.Skill table.

		UPDATE dbo.Skill
			SET SkillName = @skillName,
				SkillDescription = @skillDesc,
				LastModifiedBy = @modifiedBy,
				LastModifiedDate = getdate()		
		WHERE SkillId=@skillId 
	END
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSearchSkill]
	@skillName VARCHAR(50) --Skill Name
AS
	BEGIN
		SELECT S.SkillId,
			C.CategoryName, S.SkillName
		FROM dbo.Skill S INNER JOIN dbo.Category C
		ON S.CategoryId = C.CategoryId
		WHERE SkillName LIKE '%'+ @skillName + '%'		
	END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spViewSkill]
	@skillId INT --Skill Identifier
AS
	BEGIN
		SET NOCOUNT ON
		-- Gets the details of skill depending on the skill id input parameter.
		SELECT S.SkillName,
		       S.SkillDescription,C.CategoryName
		FROM dbo.Skill S INNER JOIN dbo.Category C
		ON S.CategoryId = C.CategoryId
		WHERE SkillId=@skillId
	END
GO



SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

INSERT INTO Users([UserName],[Password],[FirstName],[LastName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Larry','larry','Larry','Westenberg', 1, 'Apr  4 2006 12:00AM', 1,'Apr  4 2006 12:00AM')
GO

ALTER TABLE [dbo].[Users] 
WITH NOCHECK
ADD 
	CONSTRAINT [FK_Users_Users] FOREIGN KEY 
	(
		[CreatedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	),
	CONSTRAINT [FK_Users_Users1] FOREIGN KEY 
	(
		[LastModifiedBy]
	) REFERENCES [dbo].[Users] (
		[UserID]
	)
GO

INSERT INTO Users([UserName],[Password],[FirstName],[LastName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Susan','susan','Susan','Niles','1','Apr  4 2006 12:00AM','1','Apr  4 2006 12:00AM')
GO

INSERT INTO Users([UserName],[Password],[FirstName],[LastName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Bhushan','bhushan','Bhushan','Khadkikar','1','Apr  4 2006 12:00AM','1','Apr  4 2006 12:00AM')
GO

INSERT INTO Users([UserName],[Password],[FirstName],[LastName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Mike','mike','Mike','Rourke','1','Apr  4 2006 12:00AM','1','Apr  4 2006 12:00AM')
GO

INSERT INTO Users([UserName],[Password],[FirstName],[LastName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Stacy','stacy','Stacy','Mendenhall','1','May  3 2006 12:00AM','1','Apr  4 2006 12:00AM')
GO


INSERT INTO CivilStatus([StatusDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Single','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO CivilStatus([StatusDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Married','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO CivilStatus([StatusDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Widowed','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO CivilStatus([StatusDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Divorced','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO Level([LevelDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('JSE (Junior Software Engineer)','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO Level([LevelDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('SE (Software Engineer)','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO Level([LevelDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('SSE (Senior Software Engineer)','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO Level([LevelDescription],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('TL (Team Leader)','1','Apr 11 2006 12:00AM','3','Apr 11 2006 12:00AM')
GO

INSERT INTO Roles([RoleName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('HRManager','1','Apr  4 2006 12:00AM','3','Apr  4 2006 12:00AM')
GO

INSERT INTO Roles([RoleName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Developer','1','Apr  4 2006 12:00AM','3','Apr  4 2006 12:00AM')
GO

INSERT INTO UserRoles([UserID],[RoleID],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('1','1','1','Apr  4 2006 12:00AM','3','Apr  4 2006 12:00AM')
GO

INSERT INTO UserRoles([UserID],[RoleID],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('2','2','1','Apr  4 2006 12:00AM','3','Apr  4 2006 12:00AM')
GO

INSERT INTO UserRoles([UserID],[RoleID],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('3','1','1','Apr  4 2006 12:00AM','3','Apr  4 2006 12:00AM')
GO

INSERT INTO UserRoles([UserID],[RoleID],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('4','1','1','Apr  4 2006 12:00AM','3','Apr  4 2006 12:00AM')
GO

INSERT INTO Specialty([SpecialtyName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('Oracle','1','Apr 11 2006 12:00AM','1','Apr 11 2006 12:00AM')
GO

INSERT INTO Specialty([SpecialtyName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('.Net','1','Apr 11 2006 12:00AM','1','Apr 11 2006 12:00AM')
GO

INSERT INTO Specialty([SpecialtyName],[CreatedBy],[CreatedDate],[LastModifiedBy],[LastModifiedDate]) VALUES ('SQL','1','Apr 11 2006 12:00AM','1','Apr 11 2006 12:00AM')
GO
