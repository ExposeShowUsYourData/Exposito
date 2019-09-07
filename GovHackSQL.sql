
USE [master]
GO
/****** Object:  Database [govhackdb_cfs]    Script Date: 9/09/2018 12:37:06 PM ******/
CREATE DATABASE [govhackdb_cfs]
GO
ALTER DATABASE [govhackdb_cfs] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [govhackdb_cfs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [govhackdb_cfs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET ARITHABORT OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [govhackdb_cfs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [govhackdb_cfs] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [govhackdb_cfs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET  MULTI_USER 
GO
ALTER DATABASE [govhackdb_cfs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [govhackdb_cfs] SET ENCRYPTION ON
GO
ALTER DATABASE [govhackdb_cfs] SET QUERY_STORE = OFF
GO
USE [govhackdb_cfs]
GO
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_ADAPTIVE_JOINS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_ONLINE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_RESUMABLE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ISOLATE_SECURITY_POLICY_CARDINALITY = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [govhackdb_cfs]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_DEFAULT_GEOCODE]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_DEFAULT_GEOCODE](
	[ADDRESS_DEFAULT_GEOCODE_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[ADDRESS_DETAIL_PID] [varchar](50) NULL,
	[GEOCODE_TYPE_CODE] [varchar](50) NULL,
	[LONGITUDE] [varchar](50) NULL,
	[LATITUDE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_DETAIL]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_DETAIL](
	[ADDRESS_DETAIL_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_LAST_MODIFIED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[BUILDING_NAME] [varchar](50) NULL,
	[LOT_NUMBER_PREFIX] [varchar](50) NULL,
	[LOT_NUMBER] [varchar](50) NULL,
	[LOT_NUMBER_SUFFIX] [varchar](50) NULL,
	[FLAT_TYPE_CODE] [varchar](50) NULL,
	[FLAT_NUMBER_PREFIX] [varchar](50) NULL,
	[FLAT_NUMBER] [varchar](50) NULL,
	[FLAT_NUMBER_SUFFIX] [varchar](50) NULL,
	[LEVEL_TYPE_CODE] [varchar](50) NULL,
	[LEVEL_NUMBER_PREFIX] [varchar](50) NULL,
	[LEVEL_NUMBER] [varchar](50) NULL,
	[LEVEL_NUMBER_SUFFIX] [varchar](50) NULL,
	[NUMBER_FIRST_PREFIX] [varchar](50) NULL,
	[NUMBER_FIRST] [varchar](50) NULL,
	[NUMBER_FIRST_SUFFIX] [varchar](50) NULL,
	[NUMBER_LAST_PREFIX] [varchar](50) NULL,
	[NUMBER_LAST] [varchar](50) NULL,
	[NUMBER_LAST_SUFFIX] [varchar](50) NULL,
	[STREET_LOCALITY_PID] [varchar](50) NULL,
	[LOCATION_DESCRIPTION] [varchar](50) NULL,
	[LOCALITY_PID] [varchar](50) NULL,
	[ALIAS_PRINCIPAL] [varchar](50) NULL,
	[POSTCODE] [varchar](50) NULL,
	[PRIVATE_STREET] [varchar](50) NULL,
	[LEGAL_PARCEL_ID] [varchar](50) NULL,
	[CONFIDENCE] [varchar](50) NULL,
	[ADDRESS_SITE_PID] [varchar](50) NULL,
	[LEVEL_GEOCODED_CODE] [varchar](50) NULL,
	[PROPERTY_PID] [varchar](50) NULL,
	[GNAF_PROPERTY_PID] [varchar](50) NULL,
	[PRIMARY_SECONDARY] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_LOCALITY]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_LOCALITY](
	[LOCALITY_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[LOCALITY_NAME] [varchar](50) NULL,
	[PRIMARY_POSTCODE] [varchar](50) NULL,
	[LOCALITY_CLASS_CODE] [varchar](50) NULL,
	[STATE_PID] [varchar](50) NULL,
	[GNAF_LOCALITY_PID] [varchar](50) NULL,
	[GNAF_RELIABILITY_CODE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_STATE]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_STATE](
	[STATE_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[STATE_NAME] [varchar](50) NULL,
	[STATE_ABBREVIATION] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_STREET_LOCALITY]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_STREET_LOCALITY](
	[STREET_LOCALITY_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[STREET_CLASS_CODE] [varchar](50) NULL,
	[STREET_NAME] [varchar](50) NULL,
	[STREET_TYPE_CODE] [varchar](50) NULL,
	[STREET_SUFFIX_CODE] [varchar](50) NULL,
	[LOCALITY_PID] [varchar](50) NULL,
	[GNAF_STREET_PID] [varchar](50) NULL,
	[GNAF_STREET_CONFIDENCE] [varchar](50) NULL,
	[GNAF_RELIABILITY_CODE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[SA_Derived_Addresses]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[SA_Derived_Addresses] as

select 
 adg.[ADDRESS_DETAIL_PID]
,cast(adg.[LONGITUDE] as float) as [LONGITUDE]
,cast(adg.[LATITUDE] as float) as [LATITUDE]
,ad.[LOCALITY_PID]
,ad.[POSTCODE]
,ad.[STREET_LOCALITY_PID]
,l.[LOCALITY_NAME]
,l.[STATE_PID]
,sl.[STREET_NAME]
,sl.[STREET_TYPE_CODE]
,ad.[NUMBER_FIRST]
,s.[STATE_NAME]

,ad.[NUMBER_FIRST] + ' ' + sl.[STREET_NAME] + ' ' + sl.[STREET_TYPE_CODE] + ' ' + l.[LOCALITY_NAME] + ' ' + s.[STATE_NAME] + ' ' + ad.[POSTCODE] as FULL_ADDRESS

from [dbo].[SA_ADDRESS_DEFAULT_GEOCODE] adg --1,114,833

join [dbo].[SA_ADDRESS_DETAIL] ad
on adg.[ADDRESS_DETAIL_PID] = ad.[ADDRESS_DETAIL_PID] --1,114,833

join [dbo].[SA_LOCALITY] l --1,114,833
on ad.[LOCALITY_PID] = l.[LOCALITY_PID]

join [dbo].[SA_STATE] s --1.114,833
on l.[STATE_PID] = s.[STATE_PID]

join [dbo].[SA_STREET_LOCALITY] sl --1,114,833
on ad.[STREET_LOCALITY_PID] = sl.[STREET_LOCALITY_PID]

where ad.POSTCODE in

(
5157
, 5152
, 5153
, 5201
, 5233
, 5240
, 5241
, 5243
, 5244
, 5250
, 5251
, 5252
, 5255


)
GO
/****** Object:  Table [dbo].[GovHack_DERIVED_ADDRESSES]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_DERIVED_ADDRESSES](
	[ADDRESS_DETAIL_PID] [varchar](50) NOT NULL,
	[LONGITUDE] [float] NULL,
	[LATITUDE] [float] NULL,
	[GEOLOCATION] [geography] NULL,
	[FULL_ADDRESS] [varchar](450) NULL,
	[DP_ADDRESS_FILTER_LABEL] [varchar](50) NULL,
	[DP_ADDRESS_GROUP_FILTER_LABEL] [int] NULL,
 CONSTRAINT [PK_ADDRESS_DETAIL_PID] PRIMARY KEY CLUSTERED 
(
	[ADDRESS_DETAIL_PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_DERIVED_POI]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_DERIVED_POI](
	[Type] [varchar](50) NULL,
	[DESCRIPTION] [varchar](400) NULL,
	[Full Address] [varchar](400) NULL,
	[Address] [varchar](400) NULL,
	[Suburb] [varchar](100) NULL,
	[Postcode] [varchar](50) NULL,
	[LGA] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[POIGEOLOCATION] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex01]    Script Date: 9/09/2018 12:37:07 PM ******/
CREATE CLUSTERED INDEX [ClusteredIndex01] ON [dbo].[GovHack_DERIVED_POI]
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_FULLSET]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_FULLSET](
	[ADDRESS_DETAIL_PID] [varchar](50) NULL,
	[POI_Type] [varchar](50) NULL,
	[POI_DESCRIPTION] [varchar](400) NULL,
	[POI_GEOLOCATION] [geography] NULL,
	[DISTANCE] [decimal](8, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[SA_Report_Data]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[SA_Report_Data] as 

select
 [ADDRESS_DETAIL_PID]
,[POI_Type]
,[POI_DESCRIPTION]
,[POI_GEOLOCATION]
,[DISTANCE]
,cast([Longitude] as float) as [Longitude]
,cast([Latitude] as float) as [Latitude]
from [dbo].[GovHack_FULLSET] F
join [dbo].[GovHack_DERIVED_POI] P
on Cast(F.[POI_GEOLOCATION] as nvarchar(100)) = Cast(P.[POIGEOLOCATION] as nvarchar(100))
--where ADDRESS_DETAIL_PID = 'GASA_424407001'

UNION ALL

SELECT 
 [ADDRESS_DETAIL_PID]
 ,'Source Address'
 , 'Source Address'
 ,[GEOLOCATION]
 ,0
 ,[LONGITUDE]
 ,[LATITUDE]
from [dbo].[GovHack_DERIVED_ADDRESSES]
GO
/****** Object:  View [dbo].[Hills_Report_Data]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[Hills_Report_Data] as 

select 
x.[ADDRESS_DETAIL_PID] as [Address Detil PID]
,A.[LOCALITY_NAME] as [Address Suburb]
,A.[STREET_NAME] + ' ' + [STREET_TYPE_CODE] as [Address Street]
,A.[NUMBER_FIRST] as [Address Street Number]
,A.[STATE_NAME] as [Address State]
,A.[POSTCODE] as [Address Postcode]
,x.[POI_Type]
,x.[POI_DESCRIPTION]
,x.[POI_GEOLOCATION]
,x.[DISTANCE]
,cast(x.[Longitude] as float) as [Longitude]
,cast(x.[Latitude] as float) as [Latitude]

 from (
 select
 [ADDRESS_DETAIL_PID]
,[POI_Type]
,[POI_DESCRIPTION]
,[POI_GEOLOCATION]
,[DISTANCE]
,cast([Longitude] as float) as [Longitude]
,cast([Latitude] as float) as [Latitude]
from [dbo].[GovHack_FULLSET] F
join [dbo].[GovHack_DERIVED_POI] P
on Cast(F.[POI_GEOLOCATION] as nvarchar(100)) = Cast(P.[POIGEOLOCATION] as nvarchar(100))
--where ADDRESS_DETAIL_PID = 'GASA_424407001'

UNION ALL

SELECT 
 [ADDRESS_DETAIL_PID]
 ,'Source Address'
 , 'Source Address'
 ,[GEOLOCATION]
 ,0
 ,[LONGITUDE]
 ,[LATITUDE]
from [dbo].[GovHack_DERIVED_ADDRESSES]) as x

join [dbo].[SA_Derived_Addresses] A
on x.[ADDRESS_DETAIL_PID] = A.[ADDRESS_DETAIL_PID]



GO
/****** Object:  Table [dbo].[OLE DB Test]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Test](
	[ADDRESS_SITE_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[ADDRESS_TYPE] [varchar](50) NULL,
	[ADDRESS_SITE_NAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[postcodes_geo]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postcodes_geo](
	[postcode] [varchar](5) NULL,
	[suburb] [varchar](100) NULL,
	[state] [varchar](10) NULL,
	[latitude] [decimal](6, 3) NULL,
	[longitude] [decimal](6, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_DERIVED_POI_INDEX]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_DERIVED_POI_INDEX](
	[POI_SK] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[DESCRIPTION] [varchar](400) NULL,
	[Full Address] [varchar](400) NULL,
	[Address] [varchar](400) NULL,
	[Suburb] [varchar](100) NULL,
	[Postcode] [varchar](50) NULL,
	[LGA] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[POIGEOLOCATION] [geography] NULL,
 CONSTRAINT [PK_POI_SK_INDEX] PRIMARY KEY CLUSTERED 
(
	[POI_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_FULLSET_LOADSTATS]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_FULLSET_LOADSTATS](
	[Block] [nvarchar](50) NULL,
	[Started Time] [smalldatetime] NULL,
	[Completed Time] [smalldatetime] NULL,
	[Records set] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_FULLSET_TRANSPOSED]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_FULLSET_TRANSPOSED](
	[ADDRESS_DETAIL_PID] [varchar](50) NULL,
	[Closest Centrelink] [varchar](400) NULL,
	[Closest Centrelink Distance] [decimal](8, 2) NULL,
	[Closest Gov Educational Facilities] [varchar](400) NULL,
	[Closest Gov Educational Facilities Distance] [decimal](8, 2) NULL,
	[Closest PT - Bus Stop] [varchar](400) NULL,
	[Closest PT - Bus Stop Distance] [decimal](8, 2) NULL,
	[Closest PT - Interchange] [varchar](400) NULL,
	[Closest PT - Interchange Distance] [decimal](8, 2) NULL,
	[Closest PT - Railway Station] [varchar](400) NULL,
	[Closest PT - Railway Station Distance] [decimal](8, 2) NULL,
	[Closest PT - Tram Stop] [varchar](400) NULL,
	[Closest PT - Tram Stop Distance] [decimal](8, 2) NULL,
	[Closest Shopping Centre] [varchar](400) NULL,
	[Closest Shopping Centre Distance] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_POI]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_POI](
	[Type] [varchar](50) NULL,
	[DESCRIPTION] [varchar](400) NULL,
	[Full Address] [varchar](400) NULL,
	[Address] [varchar](400) NULL,
	[Suburb] [varchar](100) NULL,
	[Postcode] [varchar](50) NULL,
	[LGA] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovHack_POI_Orig]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovHack_POI_Orig](
	[Type] [varchar](50) NULL,
	[DESCRIPTION] [varchar](400) NULL,
	[Full Address] [varchar](400) NULL,
	[Address] [varchar](400) NULL,
	[Suburb] [varchar](100) NULL,
	[Postcode] [varchar](50) NULL,
	[LGA] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex01]    Script Date: 9/09/2018 12:37:07 PM ******/
CREATE CLUSTERED INDEX [ClusteredIndex01] ON [dbo].[GovHack_POI_Orig]
(
	[Type] ASC,
	[Latitude] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_ALIAS]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_ALIAS](
	[ADDRESS_ALIAS_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[PRINCIPAL_PID] [varchar](50) NULL,
	[ALIAS_PID] [varchar](50) NULL,
	[ALIAS_TYPE_CODE] [varchar](50) NULL,
	[ALIAS_COMMENT] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_MESH_BLOCK_2011]    Script Date: 9/09/2018 12:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_MESH_BLOCK_2011](
	[ADDRESS_MESH_BLOCK_2011_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[ADDRESS_DETAIL_PID] [varchar](50) NULL,
	[MB_MATCH_CODE] [varchar](50) NULL,
	[MB_2011_PID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_MESH_BLOCK_2016]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_MESH_BLOCK_2016](
	[ADDRESS_MESH_BLOCK_2016_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[ADDRESS_DETAIL_PID] [varchar](50) NULL,
	[MB_MATCH_CODE] [varchar](50) NULL,
	[MB_2016_PID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_SITE]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_SITE](
	[ADDRESS_SITE_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[ADDRESS_TYPE] [varchar](50) NULL,
	[ADDRESS_SITE_NAME] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_ADDRESS_SITE_GEOCODE]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_ADDRESS_SITE_GEOCODE](
	[ADDRESS_SITE_GEOCODE_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[ADDRESS_SITE_PID] [varchar](50) NULL,
	[GEOCODE_SITE_NAME] [varchar](50) NULL,
	[GEOCODE_SITE_DESCRIPTION] [varchar](50) NULL,
	[GEOCODE_TYPE_CODE] [varchar](50) NULL,
	[RELIABILITY_CODE] [varchar](50) NULL,
	[BOUNDARY_EXTENT] [varchar](50) NULL,
	[PLANIMETRIC_ACCURACY] [varchar](50) NULL,
	[ELEVATION] [varchar](50) NULL,
	[LONGITUDE] [varchar](50) NULL,
	[LATITUDE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_LOCALITY_ALIAS]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_LOCALITY_ALIAS](
	[LOCALITY_ALIAS_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[LOCALITY_PID] [varchar](50) NULL,
	[NAME] [varchar](50) NULL,
	[POSTCODE] [varchar](50) NULL,
	[ALIAS_TYPE_CODE] [varchar](50) NULL,
	[STATE_PID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_LOCALITY_NEIGHBOUR]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_LOCALITY_NEIGHBOUR](
	[LOCALITY_NEIGHBOUR_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[LOCALITY_PID] [varchar](50) NULL,
	[NEIGHBOUR_LOCALITY_PID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_LOCALITY_POINT]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_LOCALITY_POINT](
	[LOCALITY_POINT_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[LOCALITY_PID] [varchar](50) NULL,
	[PLANIMETRIC_ACCURACY] [varchar](50) NULL,
	[LONGITUDE] [varchar](50) NULL,
	[LATITUDE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_MB_2011]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_MB_2011](
	[MB_2011_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[MB_2011_CODE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_MB_2016]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_MB_2016](
	[MB_2016_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[MB_2016_CODE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_PRIMARY_SECONDARY]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_PRIMARY_SECONDARY](
	[PRIMARY_SECONDARY_PID] [varchar](50) NULL,
	[PRIMARY_PID] [varchar](50) NULL,
	[SECONDARY_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[PS_JOIN_TYPE_CODE] [varchar](50) NULL,
	[PS_JOIN_COMMENT] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_STREET_LOCALITY_ALIAS]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_STREET_LOCALITY_ALIAS](
	[STREET_LOCALITY_ALIAS_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[STREET_LOCALITY_PID] [varchar](50) NULL,
	[STREET_NAME] [varchar](50) NULL,
	[STREET_TYPE_CODE] [varchar](50) NULL,
	[STREET_SUFFIX_CODE] [varchar](50) NULL,
	[ALIAS_TYPE_CODE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SA_STREET_LOCALITY_POINT]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SA_STREET_LOCALITY_POINT](
	[STREET_LOCALITY_POINT_PID] [varchar](50) NULL,
	[DATE_CREATED] [varchar](50) NULL,
	[DATE_RETIRED] [varchar](50) NULL,
	[STREET_LOCALITY_PID] [varchar](50) NULL,
	[BOUNDARY_EXTENT] [varchar](50) NULL,
	[PLANIMETRIC_ACCURACY] [varchar](50) NULL,
	[LONGITUDE] [varchar](50) NULL,
	[LATITUDE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysssislog]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysssislog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[event] [sysname] NOT NULL,
	[computer] [nvarchar](128) NOT NULL,
	[operator] [nvarchar](128) NOT NULL,
	[source] [nvarchar](1024) NOT NULL,
	[sourceid] [uniqueidentifier] NOT NULL,
	[executionid] [uniqueidentifier] NOT NULL,
	[starttime] [datetime] NOT NULL,
	[endtime] [datetime] NOT NULL,
	[datacode] [int] NOT NULL,
	[databytes] [image] NULL,
	[message] [nvarchar](2048) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_DatabaseObjectsSize]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_DatabaseObjectsSize] as

--the only purpose of this sproc is to check for database object sizes

--exec dbo.sp_DatabaseObjectsSize

create table #t
(
  name nvarchar(128),
  rows varchar(50),
  reserved varchar(50),
  data varchar(50),
  index_size varchar(50),
  unused varchar(50)
)

declare @id nvarchar(128)
declare c cursor for
select name from sysobjects where xtype='U'

open c
fetch c into @id

while @@fetch_status = 0 begin

  insert into #t
  exec sp_spaceused @id

  fetch c into @id
end

close c
deallocate c

--select * from #t
--order by convert(int, substring(data, 1, len(data)-3)) desc

Select 
 name
,rows
,cast(replace(reserved, ' KB','') as float) as reserved
,cast(replace(data, ' KB','') as float)  as data
,cast(replace(index_size, ' KB','') as float)  as index_size
,cast(replace(unused, ' KB','') as float)  as unused

from #t

order by convert(int, substring(data, 1, len(data)-3)) desc

drop table #t
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_GovHack_DERIVED_ADDRESSES]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Insert_GovHack_DERIVED_ADDRESSES] AS

--TRUNCATE TABLE
TRUNCATE TABLE [dbo].[GovHack_DERIVED_ADDRESSES]

--INSERT CORE DATA FROM THE REMAINDER OF THE DB (THROUGH THE VIEW)
INSERT INTO [dbo].[GovHack_DERIVED_ADDRESSES]
([ADDRESS_DETAIL_PID]
,[LONGITUDE]
,[LATITUDE]
,[GEOLOCATION]
,[FULL_ADDRESS]
,[DP_ADDRESS_FILTER_LABEL]
,[DP_ADDRESS_GROUP_FILTER_LABEL])
SELECT 
 [ADDRESS_DETAIL_PID]
,[LONGITUDE]
,[LATITUDE]
,null
,[FULL_ADDRESS]
,RIGHT([ADDRESS_DETAIL_PID],1) 
	 + substring([ADDRESS_DETAIL_PID],10,1) 
	 + substring([ADDRESS_DETAIL_PID],9,1) 
	 + substring([ADDRESS_DETAIL_PID],12,1)
,CAST(LEFT(
	  RIGHT([ADDRESS_DETAIL_PID],1) 
		+ substring([ADDRESS_DETAIL_PID],10,1) 
		+ substring([ADDRESS_DETAIL_PID],9,1) 
		+ substring([ADDRESS_DETAIL_PID],12,1)
		,2) AS INT)
FROM [dbo].[SA_Derived_Addresses]

--CONVERT LONG LAT TO GEO
UPDATE [dbo].[GovHack_DERIVED_ADDRESSES]
SET [GEOLOCATION] = geography::STPointFromText('POINT(' + CAST([LONGITUDE] AS VARCHAR(20)) + ' ' + 
                    CAST([LATITUDE] AS VARCHAR(20)) + ')', 4326)

--EXEC dbo.sp_Insert_GovHack_DERIVED_ADDRESSES
--SELECT COUNT(*) FROM [dbo].[GovHack_DERIVED_ADDRESSES]
--SELECT TOP 100 * FROM [dbo].[GovHack_DERIVED_ADDRESSES]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_GovHack_DERIVED_POI]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Insert_GovHack_DERIVED_POI] AS

--TRUNCATE TABLE
TRUNCATE TABLE [dbo].[GovHack_DERIVED_POI]

--INSERT CORE DATA FROM THE REMAINDER OF THE DB (THROUGH THE VIEW)
INSERT INTO [dbo].[GovHack_DERIVED_POI]
([Type]
,[DESCRIPTION]
,[Full Address]
,[Address]
,[Suburb]
,[Postcode]
,[LGA]
,[Latitude]
,[Longitude]
,[POIGEOLOCATION])
SELECT 
	   [Type]
      ,[DESCRIPTION]
      ,[Full Address]
      ,[Address]
      ,[Suburb]
      ,[Postcode]
      ,[LGA]
      ,CAST([Latitude] AS FLOAT) 
	  --,[Latitude]
      ,CAST([Longitude]  AS FLOAT)
	  --, [Longitude]
	  ,NULL
FROM [dbo].[GovHack_POI]
WHERE --DQ eliminations
    [Latitude] IS NOT NULL
AND [Longitude] IS NOT NULL
AND [Latitude] <> ''
AND [Longitude] <> ''
--order by [Longitude]
AND [Longitude] <> 'Bedford Park,5042,,-35.022072,138.568997'
AND [Longitude] <> 'Oaklands Park,5046,,-35.015725,138.546251'
AND [Longitude] NOT LIKE ',%'

--CONVERT LONG LAT TO GEO
UPDATE [dbo].[GovHack_DERIVED_POI]
SET [POIGEOLOCATION] = geography::STPointFromText('POINT(' + CAST([Longitude] AS VARCHAR(20)) + ' ' + 
                    CAST([Latitude] AS VARCHAR(20)) + ')', 4326)

--EXEC dbo.sp_Insert_GovHack_DERIVED_POI
--SELECT COUNT(*) FROM [dbo].[GovHack_DERIVED_POI]
--SELECT TOP 100 * FROM [dbo].[GovHack_DERIVED_POI]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_GovHack_FULLSET_Set]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_Insert_GovHack_FULLSET_Set] 
AS

--**********Create dataset of things to process (partitions of Addresses by POIs)

--Points of Interest
DECLARE @Names TABLE 
(PlaceName VARCHAR (100))
INSERT INTO @Names
       VALUES   
				--('Centrelink')
				--,('Gov Educational Facilities') 
				--,('PT - Bus Stop')
				--,('PT - Interchange')
				--,('PT - Railway Station')
				--,('PT - Tram Stop')
				--,('Shopping Centre')
				('Last Resort Refuge')

--Addess Partitions
DECLARE @ThingsToProcess TABLE 
       (PlaceName    VARCHAR (100)
       , BlockNumber INT)

--What is this
DECLARE @I INT = 0

--Merge POIs and Address Partitions into the same table for use by SPROC
;WITH nums AS
   (SELECT 0 AS value
    UNION ALL
    SELECT value + 1 AS value
    FROM nums
    WHERE nums.value < 99
	)
INSERT INTO @ThingsToProcess
       SELECT PlaceName, Number
              FROM @Names
              CROSS JOIN 
			       (SELECT [Value] AS [Number] FROM nums
              ) x


DECLARE @Place VARCHAR(100), @Block INT
DECLARE Loop Cursor FOR
       SELECT * FROM @ThingsToProcess
OPEN Loop
FETCH NEXT FROM loop INTO @Place, @Block

TRUNCATE TABLE [dbo].[GovHack_FULLSET]
TRUNCATE TABLE [dbo].[GovHack_FULLSET_LOADSTATS]



WHILE @@FETCH_STATUS = 0
BEGIN
       DECLARE @StartedTime SMALLDATETIME
	   SET @StartedTime = GETDATE()
			
			;WITH MyLocations AS (
				SELECT  
					a.ADDRESS_DETAIL_PID
					,a.GEOLOCATION AS [Geo]	 
				FROM [dbo].[GovHack_DERIVED_ADDRESSES] a
				--JOIN [dbo].[GovHack_150K_Addresses] b ON a.ADDRESS_DETAIL_PID = b.ADDRESS_DETAIL_PID
				WHERE [DP_ADDRESS_GROUP_FILTER_LABEL] = @Block
			 ) 
			  INSERT INTO [dbo].[GovHack_FULLSET]
						  (      [ADDRESS_DETAIL_PID],
								  --[GEOLOCATION],
								  --[FULL_ADDRESS],
								  [POI_Type],
								  [POI_DESCRIPTION],
								  --[POI_Full Address],
								  [POI_GEOLOCATION],
								  [DISTANCE])
			SELECT 
				ADDRESS_DETAIL_PID
				,a.[Type] AS POI_Type
				,a.[DESCRIPTION] AS POI_DESCRIPTION
				,a.POIGEOLOCATION AS POI_GEOLOCATION
				,a.DISTANCE
			FROM MyLocations AS l 
			CROSS APPLY ( 
				SELECT TOP (1) * ,l.Geo.STDistance(ad.POIGEOLOCATION)/1000.0 AS DISTANCE
				FROM [dbo].[GovHack_DERIVED_POI] AS ad
				WHERE [Type] = @Place 
				ORDER BY l.Geo.STDistance(ad.POIGEOLOCATION) 
				) AS a 
                    


              INSERT INTO [dbo].[GovHack_FULLSET_LOADSTATS]
              (
              [Block]
			  ,[Started Time]
              ,[Completed Time]
              ,[Records set]
              )

              SELECT 'Block - ' + CONVERT (VARCHAR, @Block) + '; ' + @Place , @StartedTime, getdate(), @@rowcount


       FETCH NEXT FROM Loop INTO @Place, @Block
END

CLOSE Loop
DEALLOCATE Loop

/*
EXEC [dbo].[sp_Insert_GovHack_FULLSET2_Set]
--9hours 35mins
--total DB size 280GB
--Requires at least P1 for a single DB
*/
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_GovHack_FULLSET_TRANSPOSED_Set]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_Insert_GovHack_FULLSET_TRANSPOSED_Set] 
AS

--**********Create Transposed dataset from full set to see the closest POI of each POI Type for individual Addresses
TRUNCATE TABLE [dbo].[GovHack_FULLSET_TRANSPOSED]


INSERT INTO dbo.GovHack_FULLSET_TRANSPOSED	
SELECT 
	pvt2.ADDRESS_DETAIL_PID

	,MAX([Centrelink]) AS [Closest Centrelink]
	,MAX([Centrelink Distance]) AS [Closest Centrelink Distance]

	,MAX([Gov Educational Facilities]) AS [Closest Gov Educational Facilities]
	,MAX([Gov Educational Facilities Distance]) AS [Closest Gov Educational Facilities Distance]

	,MAX([PT - Bus Stop]) AS [Closest PT - Bus Stop]
	,MAX([PT - Bus Stop Distance]) AS [Closest PT - Bus Stop Distance]

	,MAX([PT - Interchange]) AS [Closest PT - Interchange]
	,MAX([PT - Interchange Distance]) AS [Closest PT - Interchange Distance]

	,MAX([PT - Railway Station]) AS [Closest PT - Railway Station]
	,MAX([PT - Railway Station Distance]) AS [Closest PT - Railway Station Distance]

	,MAX([PT - Tram Stop]) AS [Closest PT - Tram Stop]
	,MAX([PT - Tram Stop Distance]) AS [Closest PT - Tram Stop Distance]

	,MAX([Shopping Centre]) AS [Closest Shopping Centre]
	,MAX([Shopping Centre Distance]) AS [Closest Shopping Centre Distance]


FROM (
	SELECT 
		FullSet.ADDRESS_DETAIL_PID
		,POI_Type
		,POI_Type + ' Distance' AS POI_Type2
		,POI_Description
		,DISTANCE
	FROM dbo.GovHack_FULLSET FullSet
		JOIN dbo.GovHack_DERIVED_ADDRESSES DA ON FullSet.ADDRESS_DETAIL_PID = DA.ADDRESS_DETAIL_PID
	--WHERE [DP_ADDRESS_GROUP_FILTER_LABEL] = 0
) sourcePOIDistance
PIVOT
(
	MIN(POI_Description) FOR POI_Type IN ([Centrelink],[Gov Educational Facilities],[PT - Bus Stop],[PT - Interchange],[PT - Railway Station],[PT - Tram Stop],[Shopping Centre])
)pvt
PIVOT
(
	MIN(DISTANCE) FOR POI_Type2 IN ([Centrelink Distance],[Gov Educational Facilities Distance],[PT - Bus Stop Distance],[PT - Interchange Distance]
													,[PT - Railway Station Distance],[PT - Tram Stop Distance],[Shopping Centre Distance])
)pvt2
GROUP BY
	pvt2.ADDRESS_DETAIL_PID
GO
/****** Object:  StoredProcedure [dbo].[sp_ssis_addlogentry]    Script Date: 9/09/2018 12:37:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ssis_addlogentry]  @event sysname,  @computer nvarchar(128),  @operator nvarchar(128),  @source nvarchar(1024),  @sourceid uniqueidentifier,  @executionid uniqueidentifier,  @starttime datetime,  @endtime datetime,  @datacode int,  @databytes image,  @message nvarchar(2048)AS  INSERT INTO sysssislog (      event,      computer,      operator,      source,      sourceid,      executionid,      starttime,      endtime,      datacode,      databytes,      message )  VALUES (      @event,      @computer,      @operator,      @source,      @sourceid,      @executionid,      @starttime,      @endtime,      @datacode,      @databytes,      @message )  RETURN 0
GO
USE [master]
GO
ALTER DATABASE [govhackdb_cfs] SET  READ_WRITE 
GO
USE [govhackdb_cfs]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [GovHack_Address]    Script Date: 9/09/2018 12:37:08 PM ******/
CREATE SPATIAL INDEX [GovHack_Address] ON [dbo].[GovHack_DERIVED_ADDRESSES]
(
	[GEOLOCATION]
)USING  GEOGRAPHY_GRID 
WITH (GRIDS =(LEVEL_1 = MEDIUM,LEVEL_2 = MEDIUM,LEVEL_3 = MEDIUM,LEVEL_4 = MEDIUM), 
CELLS_PER_OBJECT = 16, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [GovHack_POI_INDEX]    Script Date: 9/09/2018 12:37:08 PM ******/
CREATE SPATIAL INDEX [GovHack_POI_INDEX] ON [dbo].[GovHack_DERIVED_POI_INDEX]
(
	[POIGEOLOCATION]
)USING  GEOGRAPHY_GRID 
WITH (GRIDS =(LEVEL_1 = MEDIUM,LEVEL_2 = MEDIUM,LEVEL_3 = MEDIUM,LEVEL_4 = MEDIUM), 
CELLS_PER_OBJECT = 16, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

