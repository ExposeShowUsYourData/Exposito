/****** Object:  Schema [LDA]    Script Date: 8/09/2019 1:41:29 PM ******/
CREATE SCHEMA [LDA]
GO
/****** Object:  Table [dbo].[census_ASGS_LGA]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_ASGS_LGA](
	[code] [nvarchar](50) NOT NULL,
	[Areadesc] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_census_ASGS_LGA]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_census_ASGS_LGA]
as select distinct code , Areadesc from [dbo].[census_ASGS_LGA]
GO
/****** Object:  Table [dbo].[census_ASGS]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_ASGS](
	[code] [nvarchar](50) NOT NULL,
	[Areadesc] [nvarchar](200) NOT NULL,
	[ASGSCode] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_ASGS_POA]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_ASGS_POA](
	[code] [nvarchar](50) NOT NULL,
	[Areadesc] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_ASGS_SA1]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_ASGS_SA1](
	[code] [nvarchar](50) NOT NULL,
	[Areadesc] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_ASGS_SSC]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_ASGS_SSC](
	[code] [nvarchar](50) NOT NULL,
	[Areadesc] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_data]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_data](
	[CensusYear] [numeric](6, 0) NOT NULL,
	[tablecode] [nvarchar](50) NOT NULL,
	[ASGSCode] [nvarchar](20) NOT NULL,
	[RegionCode] [nvarchar](20) NOT NULL,
	[Features] [nvarchar](150) NOT NULL,
	[FValue] [numeric](18, 0) NOT NULL,
	[loadedtime] [date] NULL,
	[AdfSliceIdentifier] [binary](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_metadata]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_metadata](
	[id] [varchar](150) NOT NULL,
	[metadesc] [nvarchar](300) NOT NULL,
	[tablecode] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_table]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_table](
	[tablecode] [nvarchar](50) NOT NULL,
	[tabledesc] [nvarchar](300) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[census_table_test]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[census_table_test](
	[tablecode] [nvarchar](50) NOT NULL,
	[tabledesc] [nvarchar](300) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LDA].[OverseasArrivalsAndDepartures]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LDA].[OverseasArrivalsAndDepartures](
	[Financial Year] [nvarchar](255) NULL,
	[Country of Citizenship] [nvarchar](255) NULL,
	[Category of Traveller] [nvarchar](255) NULL,
	[Age Group] [nvarchar](255) NULL,
	[Jul] [float] NULL,
	[Aug] [float] NULL,
	[Sep] [nvarchar](255) NULL,
	[Oct] [float] NULL,
	[Nov] [float] NULL,
	[Dec] [nvarchar](255) NULL,
	[Jan] [float] NULL,
	[Feb] [float] NULL,
	[March] [float] NULL,
	[Apr] [nvarchar](255) NULL,
	[May] [float] NULL,
	[Jun] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LDA].[stocktake-of-australian-innovation-precincts-csv-july-2019-qa]    Script Date: 8/09/2019 1:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LDA].[stocktake-of-australian-innovation-precincts-csv-july-2019-qa](
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[University] [nvarchar](50) NULL,
	[Centre_Precinct] [nvarchar](100) NOT NULL,
	[Investment___main_partners] [nvarchar](1050) NOT NULL,
	[Focus_sectors] [nvarchar](250) NOT NULL,
	[Interesting_facts] [nvarchar](1350) NOT NULL,
	[Status] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[census_data] ADD  DEFAULT (getdate()) FOR [loadedtime]
GO
