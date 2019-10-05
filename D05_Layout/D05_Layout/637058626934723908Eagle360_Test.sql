USE [Eagle360.Test]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessRole]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRole](
	[AccessRoleID] [int] NOT NULL,
	[IsEnabled] [bit] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccessRole] PRIMARY KEY CLUSTERED 
(
	[AccessRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActionType]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionType](
	[ActionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](100) NULL,
 CONSTRAINT [PK_ActionType] PRIMARY KEY CLUSTERED 
(
	[ActionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[CountryID] [int] NULL,
	[Postcode] [nvarchar](50) NULL,
	[State] [nvarchar](500) NULL,
	[Suburb] [nvarchar](500) NULL,
	[TownOrCity] [nvarchar](500) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aids]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aids](
	[AidsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Aids] PRIMARY KEY CLUSTERED 
(
	[AidsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerTypeID] [int] NULL,
	[ControllerID] [int] NULL,
	[OrderNumber] [int] NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerStatus]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerStatus](
	[AnswerStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_AnswerStatus] PRIMARY KEY CLUSTERED 
(
	[AnswerStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerType]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerType](
	[AnswerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Name] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_AnswerType] PRIMARY KEY CLUSTERED 
(
	[AnswerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationPermission]    Script Date: 9/13/2019 7:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationPermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_ApplicationPermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationUserPermissions]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserPermissions](
	[UserId] [nvarchar](450) NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationUserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ParentId] [nvarchar](450) NULL,
	[Description] [nvarchar](256) NULL,
	[OrderDisplay] [int] NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[PostCode] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[Avatar] [varbinary](max) NULL,
	[LastLogin] [datetime2](7) NULL,
	[DepartmentId] [int] NULL,
	[GenderId] [int] NULL,
	[JobTitleId] [int] NULL,
	[LocationId] [int] NULL,
	[MadeUpName] [nvarchar](max) NULL,
	[IsImportedByCSV] [bit] NOT NULL,
	[SupplierId] [int] NULL,
	[AvatarFileName] [nvarchar](450) NULL,
	[OfflineAccessCode] [nvarchar](100) NULL,
	[AuthyId] [nvarchar](max) NULL,
	[PhoneConfirmed] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Association]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Association](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationFlag] [int] NOT NULL,
	[ObserverId] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[StudentId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Association] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttachmentType]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachmentType](
	[AttachmentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AttachmentType] PRIMARY KEY CLUSTERED 
(
	[AttachmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IPAddress] [nvarchar](max) NULL,
	[ObjectId] [nvarchar](450) NULL,
	[URLAccessed] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[UtcTimeAccessed] [datetime2](7) NOT NULL,
	[ActionAudit] [nvarchar](max) NULL,
 CONSTRAINT [PK_Audit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditConfig]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionAudit] [varchar](100) NOT NULL,
	[Activity] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MessageTemplate] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandLogo]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandLogo](
	[BrandLogoID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BrandLogo] PRIMARY KEY CLUSTERED 
(
	[BrandLogoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calculation]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calculation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[SurveyId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[IsAverage] [bit] NOT NULL,
	[IsCount] [bit] NOT NULL,
	[IsMaximum] [bit] NOT NULL,
	[IsMinimum] [bit] NOT NULL,
	[IsSum] [bit] NOT NULL,
 CONSTRAINT [PK_Calculation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalculationQuestion]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalculationQuestion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CalculationId] [int] NOT NULL,
	[Index] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[QuestionType] [int] NOT NULL,
 CONSTRAINT [PK_CalculationQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classification]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classification](
	[ClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[ClassificationTypeId] [int] NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[ParentId] [int] NOT NULL,
 CONSTRAINT [PK_Classification] PRIMARY KEY CLUSTERED 
(
	[ClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassificationType]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassificationType](
	[ClassificationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ClassificationType] PRIMARY KEY CLUSTERED 
(
	[ClassificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](1000) NULL,
	[CreateTime] [datetime] NULL,
	[CreatorID] [int] NULL,
	[Email] [nvarchar](500) NULL,
	[FooterText] [text] NULL,
	[HeaderText] [text] NULL,
	[HotLine] [nvarchar](500) NULL,
	[Information] [text] NULL,
	[IsActive] [bit] NULL,
	[LogoURL] [nvarchar](500) NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[Phone] [nvarchar](500) NULL,
	[SupperAdminID] [int] NULL,
	[Website] [nvarchar](500) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[CityId] [bigint] NULL,
	[CountryId] [bigint] NULL,
	[Footer] [nvarchar](max) NULL,
	[Logo] [varbinary](max) NULL,
	[Name] [nvarchar](250) NOT NULL,
	[StateId] [bigint] NULL,
	[Zipcode] [nvarchar](35) NULL,
	[IsActive] [bit] NULL,
	[LoginLogo] [varbinary](max) NULL,
	[Icon] [varbinary](max) NULL,
	[IconFileName] [nvarchar](512) NULL,
	[LoginLogoFileName] [nvarchar](512) NULL,
	[LogoFileName] [nvarchar](512) NULL,
	[CompanyName] [nvarchar](250) NULL,
	[ContactEmail] [nvarchar](150) NULL,
	[ContactName] [nvarchar](150) NULL,
	[ContactPhone] [nvarchar](20) NULL,
	[Position] [nvarchar](150) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyEmailDomain]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyEmailDomain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailDomain] [nvarchar](50) NULL,
	[CompanyId] [int] NOT NULL,
	[IsReadOnly] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyEmailDomain] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTable]    Script Date: 9/13/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTable](
	[CompanyTableId] [uniqueidentifier] NOT NULL,
	[ItemText] [nvarchar](max) NOT NULL,
	[ItemDescription] [nvarchar](max) NULL,
	[ItemQuestionText] [nvarchar](1000) NULL,
	[RespondentIncluded] [bit] NOT NULL,
	[QuestionnaireIncluded] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[OrderNumber] [int] NULL,
	[CreateUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyUserId] [nvarchar](450) NULL,
	[ContractorIncluded] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyTable] PRIMARY KEY CLUSTERED 
(
	[CompanyTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTableDetail]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTableDetail](
	[CompanyTableDetailId] [uniqueidentifier] NOT NULL,
	[CompanyTableId] [uniqueidentifier] NOT NULL,
	[ItemText] [nvarchar](1000) NOT NULL,
	[ItemValue] [nvarchar](450) NULL,
	[CreateUserId] [nvarchar](450) NULL,
	[OrderNumber] [int] NULL,
	[CreateDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CompanyTableDetail] PRIMARY KEY CLUSTERED 
(
	[CompanyTableDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacter]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacter](
	[ContacterID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NULL,
	[ContactNumber] [nchar](20) NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[Relationship] [text] NULL,
 CONSTRAINT [PK_Contacter] PRIMARY KEY CLUSTERED 
(
	[ContacterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContacterType]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContacterType](
	[ContacterTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContacterType] PRIMARY KEY CLUSTERED 
(
	[ContacterTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomTable]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomTable](
	[CustomTableId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyTableId] [uniqueidentifier] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[SelectionTypeId] [int] NULL,
	[IsMultiple] [bit] NOT NULL,
	[IsPortrait] [bit] NOT NULL,
	[Max] [int] NOT NULL,
	[Min] [int] NOT NULL,
	[UniqueId] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomTable] PRIMARY KEY CLUSTERED 
(
	[CustomTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomTableAnswer]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomTableAnswer](
	[CustomTableAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyTableDetailId] [uniqueidentifier] NOT NULL,
	[CustomTableId] [int] NOT NULL,
	[UniqueId] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomTableAnswer] PRIMARY KEY CLUSTERED 
(
	[CustomTableAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataList]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DataListTypeID] [int] NOT NULL,
 CONSTRAINT [PK_DataList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataListAnswer]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataListAnswer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DataListID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DataListTypeAnswerID] [int] NOT NULL,
	[UniqueID] [nvarchar](max) NULL,
 CONSTRAINT [PK_DataListAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataListAttribute]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataListAttribute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DataListTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDisplayedForDropDown] [bit] NOT NULL,
 CONSTRAINT [PK_DataListAttribute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataListAttributeValue]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataListAttributeValue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DataListID] [int] NOT NULL,
	[DataListAttributeID] [int] NOT NULL,
	[Value] [nvarchar](450) NULL,
 CONSTRAINT [PK_DataListAttributeValue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataListType]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataListType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_DataListType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataListTypeAnswer]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataListTypeAnswer](
	[DataListTypeID] [int] NOT NULL,
	[UniqueID] [nvarchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DataListTypeAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataScale]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataScale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](200) NULL,
	[DataListID] [int] NOT NULL,
 CONSTRAINT [PK_DataScale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataType]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataType](
	[DataTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
	[RegularExpressionStr] [nvarchar](500) NULL,
	[WarningMessage] [nvarchar](500) NULL,
 CONSTRAINT [PK_DataType] PRIMARY KEY CLUSTERED 
(
	[DataTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorRegistrationCode]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorRegistrationCode](
	[DoctorRegistrationCodeId] [int] IDENTITY(1,1) NOT NULL,
	[DoctorCode] [nvarchar](max) NULL,
	[DoctorId] [nvarchar](450) NULL,
	[GeneratedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DoctorRegistrationCode] PRIMARY KEY CLUSTERED 
(
	[DoctorRegistrationCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DropdownGroup]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DropdownGroup](
	[DropdownGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [text] NULL,
	[Label] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DropdownGroup] PRIMARY KEY CLUSTERED 
(
	[DropdownGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DropdownItem]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DropdownItem](
	[DropdownItemID] [int] NOT NULL,
	[DropdownGroupID] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_DropdownItem] PRIMARY KEY CLUSTERED 
(
	[DropdownItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DropdownSingleText]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DropdownSingleText](
	[DropdownSingleTextID] [int] IDENTITY(1,1) NOT NULL,
	[DropdownGroupID] [int] NULL,
	[SingleTextID] [int] NULL,
 CONSTRAINT [PK_DropdownSingleText] PRIMARY KEY CLUSTERED 
(
	[DropdownSingleTextID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailConfig]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[Host] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Port] [int] NOT NULL,
	[SenderName] [nvarchar](50) NULL,
	[TimeOut] [int] NULL,
 CONSTRAINT [PK_EmailConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailContent]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Body] [nvarchar](max) NULL,
	[Disclaimer] [nvarchar](max) NULL,
	[SenderName] [nvarchar](50) NULL,
	[Signature] [nvarchar](max) NULL,
	[Subject] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Default] [bit] NULL,
	[EmailTypeId] [int] NULL,
	[ApplicationRoleId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmailContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailDomain]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailDomain](
	[EmailDomainId] [int] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](350) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_EmailDomain] PRIMARY KEY CLUSTERED 
(
	[EmailDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailHistory]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailHistory](
	[EmailHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[Body] [text] NULL,
	[Date] [date] NOT NULL,
	[From] [nvarchar](250) NULL,
	[QuestionnaireID] [int] NOT NULL,
	[SenderID] [int] NOT NULL,
	[Subject] [nvarchar](250) NOT NULL,
	[To] [text] NULL,
 CONSTRAINT [PK_EmailHistory] PRIMARY KEY CLUSTERED 
(
	[EmailHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailRecord]    Script Date: 9/13/2019 7:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailRecord](
	[RespondentSurveyId] [int] NULL,
	[Subject] [nvarchar](max) NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime] NOT NULL,
	[SendDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[To] [nvarchar](4000) NOT NULL,
	[Cc] [nvarchar](max) NULL,
	[Bcc] [nvarchar](max) NULL,
	[From] [nvarchar](250) NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[SurveyEmailContentId] [int] NULL,
	[Reason] [nvarchar](500) NULL,
 CONSTRAINT [PK_EmailRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSetting]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSetting](
	[EmailSettingID] [int] IDENTITY(1,1) NOT NULL,
	[Body] [text] NULL,
	[Disclaimer] [nvarchar](250) NULL,
	[EmailType] [int] NOT NULL,
	[From] [nvarchar](250) NOT NULL,
	[QuestionnaireID] [int] NOT NULL,
	[Salutation] [nvarchar](250) NULL,
	[Signature] [nvarchar](250) NULL,
 CONSTRAINT [PK_EmailSetting] PRIMARY KEY CLUSTERED 
(
	[EmailSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailType]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_EmailType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equation]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](8) NULL,
	[CodeName] [nvarchar](3) NULL,
	[EquationTypeID] [int] NOT NULL,
	[ShowOutcomeValue] [bit] NOT NULL,
	[ShowTarget] [bit] NOT NULL,
	[ShowPercentage] [bit] NOT NULL,
	[IsBasedOnQuestion] [bit] NOT NULL,
	[Multiplier] [real] NULL,
	[ShowInCalculationAndQuery] [bit] NOT NULL,
	[Status] [nvarchar](2) NULL,
	[ShowInRespondentSurvey] [bit] NOT NULL,
	[QuestionnaireID] [int] NULL,
	[SurveyID] [int] NULL,
	[IsPositionalMultiplier] [bit] NOT NULL,
	[ShowForSupplier] [bit] NOT NULL,
	[DuplicateCode] [uniqueidentifier] NULL,
	[OldId] [int] NOT NULL,
	[Target] [real] NULL,
 CONSTRAINT [PK_Equation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquationDetail]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquationDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquationID] [int] NOT NULL,
	[EquationDetailTypeID] [int] NULL,
	[Multiplier] [real] NULL,
	[RawValue] [real] NULL,
 CONSTRAINT [PK_EquationDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquationDetailType]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquationDetailType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](11) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_EquationDetailType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquationItem]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquationItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SelectedControlUniqueID] [nvarchar](30) NULL,
	[SelectedEquationID] [int] NULL,
	[EquationDetailID] [int] NULL,
	[Multiplier] [real] NULL,
 CONSTRAINT [PK_EquationItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquationItemRule]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquationItemRule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Multiplier] [real] NULL,
	[AnswerUniqueCode] [nvarchar](20) NULL,
	[EquationItemID] [int] NOT NULL,
	[ControlId] [int] NULL,
	[OrderNumber] [int] NOT NULL,
	[ControlType] [int] NULL,
 CONSTRAINT [PK_EquationItemRule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquationType]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquationType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](7) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_EquationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPSGroupSelection]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSGroupSelection](
	[GPSGroupSelectionId] [int] IDENTITY(1,1) NOT NULL,
	[SelectionTypeID] [int] NULL,
	[QuestionLayoutID] [int] NULL,
	[HeadText] [text] NULL,
	[UniqueID] [nvarchar](100) NULL,
	[DefaultValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_GPSGroupSelection] PRIMARY KEY CLUSTERED 
(
	[GPSGroupSelectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPSInfo]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSInfo](
	[GPSInfoId] [int] IDENTITY(1,1) NOT NULL,
	[RespondentAnswerId] [int] NOT NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
	[Accuracy] [nvarchar](250) NULL,
	[Altitude] [nvarchar](250) NULL,
	[AltitudeAccuracy] [nvarchar](250) NULL,
	[Heading] [nvarchar](250) NULL,
	[Speed] [nvarchar](250) NULL,
 CONSTRAINT [PK_GPSInfo] PRIMARY KEY CLUSTERED 
(
	[GPSInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPSSelectionGroup]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSSelectionGroup](
	[GPSSelectionGroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[SelectionID] [int] NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_GPSSelectionGroup] PRIMARY KEY CLUSTERED 
(
	[GPSSelectionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPSSingleSelection]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSSingleSelection](
	[GPSSingleSelectionId] [int] IDENTITY(1,1) NOT NULL,
	[SelectionTypeID] [int] NULL,
	[Text] [nvarchar](500) NULL,
	[Value] [nvarchar](50) NULL,
	[Comment] [nvarchar](2000) NULL,
	[IsGoTo] [bit] NULL,
	[GoToQuestionID] [int] NULL,
	[IsSubQuestion] [bit] NULL,
	[SubQuestionID] [int] NULL,
	[IsSameRow] [bit] NULL,
	[UniqueID] [nvarchar](300) NULL,
	[IsShowGPSInfo] [bit] NOT NULL,
 CONSTRAINT [PK_GPSSingleSelection] PRIMARY KEY CLUSTERED 
(
	[GPSSingleSelectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSelection]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSelection](
	[GroupSelectionID] [int] IDENTITY(1,1) NOT NULL,
	[DefaultValue] [nvarchar](50) NULL,
	[HeadText] [text] NULL,
	[QuestionLayoutID] [int] NULL,
	[SelectionTypeID] [int] NULL,
	[UniqueID] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupSelection] PRIMARY KEY CLUSTERED 
(
	[GroupSelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryStatus]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryStatus](
	[HistoryStatusID] [int] NOT NULL,
	[Description] [text] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_HistoryStatus] PRIMARY KEY CLUSTERED 
(
	[HistoryStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ContentType] [varchar](max) NULL,
	[Height] [int] NOT NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsMultiPoint] [bit] NOT NULL,
	[MaximumPoints] [int] NULL,
	[RequireAllPoints] [bit] NOT NULL,
	[Width] [int] NOT NULL,
	[UniqueId] [varchar](300) NULL,
	[QuestionId] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageAnswer]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageAnswer](
	[ImageAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[ImageAnswerUniqueId] [varchar](50) NOT NULL,
	[Xpercent] [int] NOT NULL,
	[Ypercent] [int] NOT NULL,
	[ImageId] [int] NOT NULL,
	[QuestionId] [int] NULL,
	[RespondentAnswerId] [int] NULL,
	[RespondentSurveyId] [int] NULL,
 CONSTRAINT [PK_ImageAnswer] PRIMARY KEY CLUSTERED 
(
	[ImageAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](250) NULL,
	[Added] [bigint] NULL,
	[Updated] [bigint] NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [bigint] NULL,
 CONSTRAINT [PK_Import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTitle]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTitle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_JobTitle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginInfomation]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginInfomation](
	[LoginInfomationID] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
	[RespondentID] [int] NULL,
 CONSTRAINT [PK_LoginInfomation] PRIMARY KEY CLUSTERED 
(
	[LoginInfomationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaritalStatus]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatus](
	[MaritalStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaritalStatus] PRIMARY KEY CLUSTERED 
(
	[MaritalStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalAnswer]    Script Date: 9/13/2019 7:37:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalAnswer](
	[MedicalAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerOrder] [int] NULL,
	[AnswerValue] [text] NULL,
	[MedicalSetID] [int] NOT NULL,
	[ModifiedDateTime] [datetime] NULL,
	[RespondentID] [int] NOT NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_MedicalAnswer] PRIMARY KEY CLUSTERED 
(
	[MedicalAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecord]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecord](
	[MedicalRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ClassificationId] [int] NOT NULL,
	[OrderedTime] [datetime] NULL,
	[VisitId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsStopped] [bit] NOT NULL,
	[StoppedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_MedicalRecord] PRIMARY KEY CLUSTERED 
(
	[MedicalRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalSet]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalSet](
	[MedicalSetID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_MedicalSet] PRIMARY KEY CLUSTERED 
(
	[MedicalSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medication]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medication](
	[MedicationId] [int] IDENTITY(1,1) NOT NULL,
	[ClassificationId] [int] NOT NULL,
	[Dosage] [nvarchar](max) NULL,
	[Frequency] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PatientStopped] [bit] NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[StopDate] [datetime2](7) NULL,
	[VisitId] [int] NOT NULL,
 CONSTRAINT [PK_Medication] PRIMARY KEY CLUSTERED 
(
	[MedicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeridianPoint]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeridianPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Point] [nvarchar](8) NULL,
	[VisitId] [int] NULL,
 CONSTRAINT [PK_MeridianPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageDetail]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageDetail](
	[MessageDetailId] [uniqueidentifier] NOT NULL,
	[MessageQueueId] [uniqueidentifier] NOT NULL,
	[ObjectInfo] [text] NOT NULL,
	[ProcessMessage] [text] NULL,
 CONSTRAINT [PK_MessageDetail] PRIMARY KEY CLUSTERED 
(
	[MessageDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageQueue]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageQueue](
	[MessageQueueId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastStartProcessDate] [datetime] NULL,
	[ProcessedTimes] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[LastEndProcessDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[WaitMessageQueueId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MessageQueue] PRIMARY KEY CLUSTERED 
(
	[MessageQueueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[NationalityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[NationalityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberingType]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberingType](
	[NumberingTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_NumberingType] PRIMARY KEY CLUSTERED 
(
	[NumberingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OccupationType]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OccupationType](
	[OccupationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OccupationType] PRIMARY KEY CLUSTERED 
(
	[OccupationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Option]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[OptionID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantAttachment]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantAttachment](
	[ParticipantAttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[AttachmentTypeID] [int] NOT NULL,
	[Description] [text] NULL,
	[LatestEditUserID] [int] NULL,
	[Name] [nvarchar](256) NULL,
	[ParticipantID] [int] NOT NULL,
	[Path] [text] NULL,
	[ReportDate] [date] NULL,
	[Size] [nvarchar](10) NULL,
	[UploadDate] [datetime] NULL,
 CONSTRAINT [PK_ParticipantAttachment] PRIMARY KEY CLUSTERED 
(
	[ParticipantAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantMedicalSet]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantMedicalSet](
	[ParticipantMedicalSetID] [int] IDENTITY(1,1) NOT NULL,
	[ActionTypeID] [int] NULL,
	[IsLock] [bit] NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastVersion] [int] NULL,
	[LockBy] [int] NULL,
	[LockedTime] [datetime] NULL,
	[MedicalSetID] [int] NOT NULL,
	[RespondentID] [int] NOT NULL,
 CONSTRAINT [PK_ParticipantMedicalSet] PRIMARY KEY CLUSTERED 
(
	[ParticipantMedicalSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantSurveyEquation]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantSurveyEquation](
	[ParticipantSurveyEquationId] [int] IDENTITY(1,1) NOT NULL,
	[RespondentSurveyId] [int] NULL,
	[OutcomeValue] [decimal](18, 2) NULL,
	[Percentage] [decimal](18, 2) NULL,
	[Target] [decimal](18, 2) NULL,
	[EquationId] [int] NULL,
 CONSTRAINT [PK_ParticipantSurveyEquation] PRIMARY KEY CLUSTERED 
(
	[ParticipantSurveyEquationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[PartnerID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[CompanyInfo] [nvarchar](1000) NULL,
	[FirstName] [nvarchar](500) NULL,
	[JobTitleID] [int] NULL,
	[LastName] [nvarchar](500) NULL,
	[PhotoURL] [nvarchar](500) NULL,
	[PrefixID] [int] NULL,
	[SignaturePictureURL] [nvarchar](500) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[PartnerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](1000) NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[PartnerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[DoctorId] [nvarchar](450) NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[LastVisit] [datetime2](7) NOT NULL,
	[OptIntoSurvey] [bit] NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetName] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[PostCode] [nvarchar](max) NULL,
	[Prior] [bit] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientSharing]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientSharing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssociationId] [int] NOT NULL,
	[CurrentState] [int] NOT NULL,
	[RejectedDateTime] [datetime] NULL,
	[SharedDateTime] [datetime] NOT NULL,
	[StoppedDateTime] [datetime] NULL,
	[ViewedDateTime] [datetime] NULL,
	[VisitId] [int] NOT NULL,
 CONSTRAINT [PK_PatientSharing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonPrefix]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonPrefix](
	[PersonPrefixID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Prefix] [nvarchar](200) NULL,
 CONSTRAINT [PK_PersonPrefix] PRIMARY KEY CLUSTERED 
(
	[PersonPrefixID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[IsMultiPoint] [bit] NOT NULL,
	[MaximumPoints] [int] NULL,
	[RequireAllPoints] [bit] NOT NULL,
	[UniqueId] [varchar](300) NULL,
	[QuestionId] [int] NULL,
	[RespondentAnswerId] [int] NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoAnswer]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoAnswer](
	[PhotoAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[PhotoUrl] [varchar](max) NULL,
	[Height] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[UploadedDate] [datetime] NULL,
	[Comment] [varchar](max) NULL,
	[ContentType] [varchar](max) NULL,
	[RespondentAnswerID] [int] NULL,
	[QuestionId] [int] NULL,
	[RespondentSurveyId] [int] NULL,
	[PhotoAnswerUniqueId] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhotoAnswer] PRIMARY KEY CLUSTERED 
(
	[PhotoAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoPointAnswer]    Script Date: 9/13/2019 7:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoPointAnswer](
	[PhotoPointAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[Xpercent] [int] NOT NULL,
	[Ypercent] [int] NOT NULL,
	[PhotoAnswerId] [int] NOT NULL,
	[PhotoAnswerUniqueId] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhotoPointAnswer] PRIMARY KEY CLUSTERED 
(
	[PhotoPointAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Privilege]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilege](
	[PrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Description] [nvarchar](1000) NULL,
	[PrivilegeName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Privilege] PRIMARY KEY CLUSTERED 
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishing]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishing](
	[PublishingID] [int] IDENTITY(1,1) NOT NULL,
	[ExpireTime] [datetime] NULL,
	[MaxConcurent] [int] NULL,
	[PublishTime] [datetime] NULL,
	[PublisherID] [int] NULL,
	[QuestionnaireID] [int] NULL,
	[TimeLimit] [int] NULL,
 CONSTRAINT [PK_Publishing] PRIMARY KEY CLUSTERED 
(
	[PublishingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublishPartner]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishPartner](
	[PublishPartnerID] [int] IDENTITY(1,1) NOT NULL,
	[Letter] [text] NULL,
	[PartnerID] [int] NULL,
	[PartnerTypeID] [int] NULL,
	[PublishingID] [int] NULL,
 CONSTRAINT [PK_PublishPartner] PRIMARY KEY CLUSTERED 
(
	[PublishPartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsQueryForSurvey] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SurveyId] [int] NOT NULL,
 CONSTRAINT [PK_Query] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueryEquation]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueryEquation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
	[Criteria] [nvarchar](50) NOT NULL,
	[QueryID] [int] NOT NULL,
	[EquationID] [int] NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[EquationName] [nvarchar](25) NULL,
 CONSTRAINT [PK_QueryEquation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueryQuestion]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueryQuestion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](max) NULL,
	[Criteria] [nvarchar](max) NULL,
	[Index] [nvarchar](max) NULL,
	[QueryId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[QuestionType] [int] NULL,
	[Value] [nvarchar](max) NULL,
	[ControlId] [nvarchar](max) NULL,
	[IsNumericQuestion] [bit] NOT NULL,
	[QuestionName] [nvarchar](max) NULL,
 CONSTRAINT [PK_QueryQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsSkip] [bit] NULL,
	[Keywords] [nvarchar](24) NULL,
	[LayoutID] [int] NULL,
	[PrintoutComment] [nvarchar](500) NULL,
	[QuestionText] [text] NULL,
	[QuestionTypeID] [int] NULL,
	[ScreenComment] [nvarchar](500) NULL,
	[SectionID] [int] NULL,
	[UniqueID] [nvarchar](50) NULL,
	[Mandatory] [bit] NOT NULL,
	[LinkedQuestionId] [int] NULL,
	[RepeatingQuestionId] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionLayout]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionLayout](
	[QuestionLayoutID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_QuestionLayout] PRIMARY KEY CLUSTERED 
(
	[QuestionLayoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questionnaire]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questionnaire](
	[QuestionnaireID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[CompleteMessage] [text] NULL,
	[CreateTime] [datetime] NULL,
	[CreatorID] [nvarchar](max) NULL,
	[Description] [text] NULL,
	[InfoEnd] [text] NULL,
	[InfoStart] [text] NULL,
	[IntroduceMessage] [text] NULL,
	[IsDefault] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsEnding] [bit] NULL,
	[IsHeader] [bit] NULL,
	[IsPrintCompMessage] [bit] NOT NULL,
	[IsPrintIntroMessage] [bit] NOT NULL,
	[IsScreenCompMessage] [bit] NULL,
	[IsScreenIntroMessage] [bit] NULL,
	[IsStart] [bit] NULL,
	[LanguageID] [int] NULL,
	[ModifierID] [nvarchar](max) NULL,
	[ModifyTime] [datetime] NULL,
	[Name] [nvarchar](500) NULL,
	[ShortDescription] [text] NULL,
	[StatusID] [int] NULL,
	[UniqueID] [nvarchar](50) NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[PublishedTime] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
	[HaveMultipleSections] [bit] NOT NULL,
	[IsLongitudinal] [bit] NULL,
 CONSTRAINT [PK_Questionnaire] PRIMARY KEY CLUSTERED 
(
	[QuestionnaireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[QuestionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED 
(
	[QuestionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RaceEthnicity]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceEthnicity](
	[RaceEthnicityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RaceEthnicity] PRIMARY KEY CLUSTERED 
(
	[RaceEthnicityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingGroupSelection]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingGroupSelection](
	[RepeatingGroupSelectionId] [int] IDENTITY(1,1) NOT NULL,
	[SelectionTypeID] [int] NULL,
	[QuestionLayoutID] [int] NULL,
	[HeadText] [text] NULL,
	[UniqueID] [nvarchar](100) NULL,
	[DefaultValue] [nvarchar](50) NULL,
	[AnswerDataTypeId] [int] NOT NULL,
	[Introduction] [nvarchar](max) NULL,
	[Max] [int] NOT NULL,
	[Min] [int] NOT NULL,
	[IsRepeatFirstAnswerOnly] [bit] NOT NULL,
 CONSTRAINT [PK_RepeatingGroupSelection] PRIMARY KEY CLUSTERED 
(
	[RepeatingGroupSelectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingImageAnswer]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingImageAnswer](
	[RepeatingImageAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[RepeatingImageAnswerUniqueId] [varchar](50) NOT NULL,
	[Xpercent] [int] NOT NULL,
	[Ypercent] [int] NOT NULL,
	[ImageId] [int] NOT NULL,
	[QuestionId] [int] NULL,
	[RespondentSurveyId] [int] NULL,
	[RepeatingRespondentAnswerId] [int] NULL,
 CONSTRAINT [PK_RepeatingImageAnswer] PRIMARY KEY CLUSTERED 
(
	[RepeatingImageAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingPhotoAnswer]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingPhotoAnswer](
	[RepeatingPhotoAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[PhotoUrl] [varchar](max) NULL,
	[Height] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[UploadedDate] [datetime] NULL,
	[Comment] [varchar](max) NULL,
	[ContentType] [varchar](max) NULL,
	[RepeatingPhotoAnswerUniqueId] [nvarchar](max) NULL,
	[RespondentAnswerID] [int] NULL,
	[QuestionId] [int] NULL,
	[RespondentSurveyId] [int] NULL,
 CONSTRAINT [PK_RepeatingPhotoAnswer] PRIMARY KEY CLUSTERED 
(
	[RepeatingPhotoAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingPhotoPointAnswer]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingPhotoPointAnswer](
	[RepeatingPhotoPointAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[Xpercent] [int] NOT NULL,
	[Ypercent] [int] NOT NULL,
	[RepeatingPhotoAnswerId] [int] NOT NULL,
	[RepeatingPhotoAnswerUniqueId] [nvarchar](max) NULL,
 CONSTRAINT [PK_RepeatingPhotoPointAnswer] PRIMARY KEY CLUSTERED 
(
	[RepeatingPhotoPointAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingRespondentAnswer]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingRespondentAnswer](
	[RepeatingRespondentAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[VisitQuestionnaireId] [int] NULL,
	[QuestionnaireID] [int] NULL,
	[AnswerID] [int] NULL,
	[ControlTypeID] [int] NULL,
	[AnswerControlID] [int] NULL,
	[AnswerControlUniqueID] [nvarchar](300) NULL,
	[AnswerValue] [text] NULL,
	[AnswerTime] [datetime] NULL,
	[PatientId] [int] NULL,
	[RespondentSurveyId] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[ChosenAnswerControlUniqueCode] [nvarchar](max) NULL,
	[RespondentAnswerId] [int] NULL,
 CONSTRAINT [PK_RepeatingRespondentAnswer] PRIMARY KEY CLUSTERED 
(
	[RepeatingRespondentAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingSelectionGroup]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingSelectionGroup](
	[RepeatingSelectionGroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[SelectionID] [int] NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_RepeatingSelectionGroup] PRIMARY KEY CLUSTERED 
(
	[RepeatingSelectionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepeatingSingleSelection]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepeatingSingleSelection](
	[RepeatingSingleSelectionId] [int] IDENTITY(1,1) NOT NULL,
	[SelectionTypeID] [int] NULL,
	[IsShowRepeatingInfo] [bit] NOT NULL,
	[Text] [nvarchar](500) NULL,
	[Value] [nvarchar](50) NULL,
	[Comment] [nvarchar](2000) NULL,
	[IsGoTo] [bit] NULL,
	[GoToQuestionID] [int] NULL,
	[IsSubQuestion] [bit] NULL,
	[SubQuestionID] [int] NULL,
	[IsSameRow] [bit] NULL,
	[UniqueID] [nvarchar](300) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RepeatingSingleSelection] PRIMARY KEY CLUSTERED 
(
	[RepeatingSingleSelectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respondent]    Script Date: 9/13/2019 7:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respondent](
	[RespondentID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[AidsID] [int] NULL,
	[AidsOther] [nvarchar](250) NULL,
	[AnonymEnable] [bit] NULL,
	[AnonymName] [nvarchar](50) NULL,
	[Birthday] [datetime] NULL,
	[City] [nvarchar](500) NULL,
	[ClientID] [int] NULL,
	[CodeNumber] [nvarchar](50) NULL,
	[CountryCode] [nchar](10) NULL,
	[CountryID] [int] NULL,
	[CountryOfBirthID] [int] NULL,
	[CountryOfResidenceID] [int] NULL,
	[CreateTime] [datetime] NULL,
	[DePersonalisedAcceptStatus] [bit] NULL,
	[DePersonalisedAcceptTime] [datetime] NULL,
	[EducationStatus] [nvarchar](250) NULL,
	[Email] [nvarchar](300) NULL,
	[Email2] [nvarchar](300) NULL,
	[EmploymentStatus] [nvarchar](250) NULL,
	[Facebook] [nvarchar](300) NULL,
	[Fax] [nchar](20) NULL,
	[FirstName] [nvarchar](200) NULL,
	[GenderID] [int] NULL,
	[IsAccessSurvey] [bit] NULL,
	[isFinish] [bit] NOT NULL,
	[isFirstLogin] [bit] NOT NULL,
	[LastName] [nvarchar](200) NULL,
	[MaritalStatusID] [int] NULL,
	[MedicalCondition] [nvarchar](250) NULL,
	[MiddleName] [nvarchar](500) NULL,
	[Mobile] [nchar](20) NULL,
	[Nationality2ID] [int] NULL,
	[NationalityID] [int] NULL,
	[OccupationTypeID] [int] NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PermanentMedication] [nvarchar](250) NULL,
	[Phone] [nchar](20) NULL,
	[Photo] [varbinary](max) NULL,
	[PreferredGenderRecognitionID] [int] NULL,
	[PrefixID] [int] NULL,
	[RaceEthnicity2ID] [int] NULL,
	[RaceEthnicityID] [int] NULL,
	[RespondentTypeID] [int] NULL,
	[RetiringAge] [int] NULL,
	[State] [nvarchar](500) NULL,
	[Suburb] [nvarchar](500) NULL,
	[TermConditionsAcceptStatus] [bit] NULL,
	[TermConditionsAcceptTime] [datetime] NULL,
	[UserName] [varchar](50) NULL,
 CONSTRAINT [PK_Respondent] PRIMARY KEY CLUSTERED 
(
	[RespondentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentAddress]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentAddress](
	[RespondentAddressID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NULL,
	[Level] [int] NULL,
	[RespondentID] [int] NULL,
 CONSTRAINT [PK_RespondentAddress] PRIMARY KEY CLUSTERED 
(
	[RespondentAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentAid]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentAid](
	[RespondentAidID] [int] IDENTITY(1,1) NOT NULL,
	[AidsID] [int] NULL,
	[RespondentID] [int] NULL,
 CONSTRAINT [PK_RespondentAid] PRIMARY KEY CLUSTERED 
(
	[RespondentAidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentAnswer]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentAnswer](
	[RespondentAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerControlID] [int] NULL,
	[AnswerControlUniqueID] [nvarchar](300) NULL,
	[AnswerID] [int] NULL,
	[AnswerTime] [datetime] NULL,
	[AnswerValue] [text] NULL,
	[ControlTypeID] [int] NULL,
	[QuestionnaireID] [int] NULL,
	[PatientId] [int] NULL,
	[VisitQuestionnaireId] [int] NULL,
	[RespondentSurveyId] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[ChosenAnswerControlUniqueCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_RespondentAnswer] PRIMARY KEY CLUSTERED 
(
	[RespondentAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentContacter]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentContacter](
	[RespondentContacterID] [int] IDENTITY(1,1) NOT NULL,
	[ContacterID] [int] NULL,
	[ContacterTypeID] [int] NULL,
	[RespondentID] [int] NULL,
 CONSTRAINT [PK_RespondentContacter] PRIMARY KEY CLUSTERED 
(
	[RespondentContacterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentHistory]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentHistory](
	[RespondentHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[ActionTime] [datetime] NULL,
	[HistoryStatusID] [int] NULL,
	[QuestionnaireID] [int] NULL,
	[RespondentID] [int] NULL,
 CONSTRAINT [PK_RespondentHistory] PRIMARY KEY CLUSTERED 
(
	[RespondentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentQuestionnaire]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentQuestionnaire](
	[RespQuestionnaireID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerStatusID] [int] NULL,
	[FinishTime] [datetime] NULL,
	[isFinish] [bit] NULL,
	[QuestionnaireID] [int] NULL,
	[RespondentID] [int] NULL,
	[RespondentIndexCode] [nvarchar](50) NULL,
	[StartTime] [datetime] NULL,
 CONSTRAINT [PK_RespondentQuestionnaire] PRIMARY KEY CLUSTERED 
(
	[RespQuestionnaireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentSurvey]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentSurvey](
	[RespondentSurveyId] [int] IDENTITY(1,1) NOT NULL,
	[Avg] [real] NOT NULL,
	[Calc] [int] NOT NULL,
	[CompleteSurveyDate] [datetime] NULL,
	[Max] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Sum] [int] NOT NULL,
	[SurveyId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[SurveyAssignId] [uniqueidentifier] NULL,
	[SurveyAssignReminderId] [uniqueidentifier] NULL,
	[UsedName] [nvarchar](max) NULL,
	[Code] [nvarchar](4) NULL,
	[LastSendSurveyClosureDate] [datetime] NULL,
	[LastSendSurveyInvitationDate] [datetime] NULL,
	[LastSendSurveyReminderDate] [datetime] NULL,
	[LastSendSurveyStarterDate] [datetime] NULL,
	[LastSendSurveyThankyouDate] [datetime] NULL,
	[TotalTimesSendReminder] [int] NOT NULL,
	[TotalTimesSendStarter] [int] NOT NULL,
	[AssignNumber] [int] NOT NULL,
 CONSTRAINT [PK_RespondentSurvey] PRIMARY KEY CLUSTERED 
(
	[RespondentSurveyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespondentType]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespondentType](
	[RespondentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_RespondentType] PRIMARY KEY CLUSTERED 
(
	[RespondentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePrivilege]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePrivilege](
	[RolePrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeID] [int] NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_RolePrivilege] PRIMARY KEY CLUSTERED 
(
	[RolePrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleUser]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleUser](
	[RoleUserID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UserRoleID] [int] NOT NULL,
 CONSTRAINT [PK_RoleUser] PRIMARY KEY CLUSTERED 
(
	[RoleUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RomType]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RomType](
	[RomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_RomType] PRIMARY KEY CLUSTERED 
(
	[RomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RomVisit]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RomVisit](
	[RomVisitId] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[Description] [nvarchar](max) NULL,
	[FirstValue] [int] NOT NULL,
	[RomTypeId] [int] NOT NULL,
	[UpdateDate] [datetime2](7) NULL,
	[VisitId] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_RomVisit] PRIMARY KEY CLUSTERED 
(
	[RomVisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scale]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scale](
	[ScaleID] [int] IDENTITY(1,1) NOT NULL,
	[DefaultValueColumn] [int] NULL,
	[IsCountValue] [bit] NULL,
	[IsDefaultValue] [bit] NULL,
	[IsRangeText] [bit] NULL,
	[IsRowLabel] [bit] NULL,
	[IsSumValue] [bit] NULL,
	[NumOfCols] [int] NULL,
	[NumOfRange] [int] NULL,
	[NumOfRows] [int] NULL,
	[IsEmoji] [bit] NOT NULL,
 CONSTRAINT [PK_Scale] PRIMARY KEY CLUSTERED 
(
	[ScaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScaleColumn]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScaleColumn](
	[ScaleColumnID] [int] IDENTITY(1,1) NOT NULL,
	[ColNumber] [int] NULL,
	[FirstLabel] [nvarchar](500) NULL,
	[ScaleID] [int] NOT NULL,
	[SecondLabel] [nvarchar](500) NULL,
	[Value] [nvarchar](500) NULL,
	[Width] [int] NULL,
	[Emoji] [nvarchar](500) NULL,
 CONSTRAINT [PK_ScaleColumn] PRIMARY KEY CLUSTERED 
(
	[ScaleColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScaleRange]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScaleRange](
	[RangeID] [int] IDENTITY(1,1) NOT NULL,
	[RangeLabel] [nvarchar](500) NULL,
	[RangeNumber] [int] NULL,
	[ScaleID] [int] NULL,
 CONSTRAINT [PK_ScaleRange] PRIMARY KEY CLUSTERED 
(
	[RangeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScaleRow]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScaleRow](
	[ScaleRowID] [int] IDENTITY(1,1) NOT NULL,
	[Height] [int] NULL,
	[Keywords] [nvarchar](450) NULL,
	[RowLabel] [text] NULL,
	[RowNumber] [int] NULL,
	[ScaleID] [int] NULL,
	[UniqueID] [nvarchar](200) NULL,
	[DataListAnswerID] [int] NULL,
 CONSTRAINT [PK_ScaleRow] PRIMARY KEY CLUSTERED 
(
	[ScaleRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[Header] [text] NULL,
	[IsCountValue] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsExcludeDefaultValue] [bit] NULL,
	[IsNumberingQuestion] [bit] NULL,
	[IsNumberingSection] [bit] NULL,
	[IsPrintOut] [bit] NULL,
	[IsScreen] [bit] NULL,
	[IsSumValue] [bit] NULL,
	[IsTitlePrintOut] [bit] NULL,
	[IsTitleScreen] [bit] NULL,
	[NumberingTypeID] [int] NULL,
	[OrderCharacter] [nvarchar](10) NULL,
	[OrderNumber] [int] NULL,
	[QuestionnaireID] [int] NOT NULL,
	[Title] [nvarchar](500) NULL,
	[UniqueID] [nvarchar](50) NULL,
	[IsEnable] [bit] NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionContextTag]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionContextTag](
	[SectionTagID] [int] IDENTITY(1,1) NOT NULL,
	[ContextTag] [nvarchar](500) NULL,
	[OrderNumber] [int] NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_SectionContextTag] PRIMARY KEY CLUSTERED 
(
	[SectionTagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionHeader]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionHeader](
	[SectionHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[HeaderText] [nvarchar](1000) NULL,
	[SectionID] [int] NULL,
 CONSTRAINT [PK_SectionHeader] PRIMARY KEY CLUSTERED 
(
	[SectionHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionItems]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionItems](
	[SectionOrderID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NULL,
	[ItemTypeID] [int] NULL,
	[OrderNumber] [int] NULL,
	[SectionID] [int] NULL,
 CONSTRAINT [PK_SectionItems] PRIMARY KEY CLUSTERED 
(
	[SectionOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionItemType]    Script Date: 9/13/2019 7:37:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionItemType](
	[ItemTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](1000) NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_SectionItemType] PRIMARY KEY CLUSTERED 
(
	[ItemTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectionGroup]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectionGroup](
	[SelectionGroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[OrderNumber] [int] NULL,
	[SelectionID] [int] NULL,
 CONSTRAINT [PK_SelectionGroup] PRIMARY KEY CLUSTERED 
(
	[SelectionGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectionType]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectionType](
	[SelectionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_SelectionType] PRIMARY KEY CLUSTERED 
(
	[SelectionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SingleSelection]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SingleSelection](
	[SingleSelectionID] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](2000) NULL,
	[GoToQuestionID] [int] NULL,
	[IsGoTo] [bit] NULL,
	[IsSameRow] [bit] NULL,
	[IsSubQuestion] [bit] NULL,
	[SelectionTypeID] [int] NULL,
	[SubQuestionID] [int] NULL,
	[Text] [nvarchar](500) NULL,
	[UniqueID] [nvarchar](300) NULL,
	[Value] [nvarchar](50) NULL,
 CONSTRAINT [PK_SingleSelection] PRIMARY KEY CLUSTERED 
(
	[SingleSelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SingleText]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SingleText](
	[TextboxID] [int] IDENTITY(1,1) NOT NULL,
	[DataTypeID] [int] NULL,
	[Hint] [nvarchar](500) NULL,
	[IsMultiple] [bit] NULL,
	[IsSameRow] [bit] NULL,
	[Keywords] [nvarchar](24) NULL,
	[Label] [text] NULL,
	[MaxDate] [datetime] NULL,
	[MaxLength] [int] NULL,
	[MaxValue] [int] NULL,
	[MinDate] [datetime] NULL,
	[MinValue] [int] NULL,
	[NumberOfRows] [int] NULL,
	[Prefix] [nvarchar](500) NULL,
	[Suffix] [nvarchar](500) NULL,
	[UniqueID] [nvarchar](300) NULL,
	[CharactorWidth] [int] NOT NULL,
 CONSTRAINT [PK_SingleText] PRIMARY KEY CLUSTERED 
(
	[TextboxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkippedQuestion]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkippedQuestion](
	[SkippedQuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NOT NULL,
	[SkipOwnerID] [int] NOT NULL,
	[SkipOwnerType] [int] NOT NULL,
 CONSTRAINT [PK_SkippedQuestion] PRIMARY KEY CLUSTERED 
(
	[SkippedQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[ParentSupplierId] [int] NULL,
	[OrganisationName] [nvarchar](450) NULL,
	[ContactName] [nvarchar](450) NULL,
	[ContactEmail] [nvarchar](350) NULL,
	[ContactPhone] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
	[TypeId] [int] NOT NULL,
	[PrimeSupplierId] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierBrandLogo]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierBrandLogo](
	[SupplierBrandLogoId] [int] IDENTITY(1,1) NOT NULL,
	[BrandLogoId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[IsInheritFromParent] [bit] NOT NULL,
 CONSTRAINT [PK_SupplierBrandLogo] PRIMARY KEY CLUSTERED 
(
	[SupplierBrandLogoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierEmailDomain]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierEmailDomain](
	[SupplierEmailDomainId] [int] IDENTITY(1,1) NOT NULL,
	[EmailDomainId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SupplierEmailDomain] PRIMARY KEY CLUSTERED 
(
	[SupplierEmailDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Survey]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey](
	[SurveyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [text] NULL,
	[EndDate] [datetime] NULL,
	[Mandatory] [bit] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[QuestionnaireId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[CreateUserId] [nvarchar](450) NULL,
	[LastModifyDate] [datetime2](7) NULL,
	[LastModifyUserId] [nvarchar](450) NULL,
	[IsRecurring] [bit] NOT NULL,
 CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED 
(
	[SurveyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyAssign]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyAssign](
	[SurveyAssignId] [uniqueidentifier] NOT NULL,
	[SurveyId] [int] NOT NULL,
	[SurveyUrl] [nvarchar](max) NOT NULL,
	[Locations] [nvarchar](max) NULL,
	[Departments] [nvarchar](max) NULL,
	[JobTitles] [nvarchar](max) NULL,
	[Genders] [nvarchar](max) NULL,
	[RespondentSurveys] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
	[CreateUserId] [nvarchar](450) NULL,
	[LastModifyDate] [datetime2](7) NULL,
	[LastModifyUserId] [nvarchar](450) NULL,
	[AssignRoleId] [nvarchar](450) NULL,
 CONSTRAINT [PK_SurveyAssign] PRIMARY KEY CLUSTERED 
(
	[SurveyAssignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyAssignCompanyTableDetail]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyAssignCompanyTableDetail](
	[SurveyAssignCompanyTableDetailId] [uniqueidentifier] NOT NULL,
	[SurveyAssignId] [uniqueidentifier] NOT NULL,
	[CompanyTableDetailId] [uniqueidentifier] NULL,
	[CompanyTableId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SurveyAssignCompanyTableDetail] PRIMARY KEY CLUSTERED 
(
	[SurveyAssignCompanyTableDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyAssignReminder]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyAssignReminder](
	[SurveyAssignReminderId] [uniqueidentifier] NOT NULL,
	[SurveyId] [int] NOT NULL,
	[ReminderType] [int] NOT NULL,
	[ReminderRepeatType] [int] NOT NULL,
	[EveryDayTime] [nvarchar](50) NULL,
	[FrequencyDayNumberOfDay] [int] NOT NULL,
	[FrequencyDayTime] [nvarchar](50) NULL,
	[FrequencyWeekNumberOfWeek] [int] NOT NULL,
	[FrequencyWeekAtSun] [bit] NOT NULL,
	[FrequencyWeekAtMon] [bit] NOT NULL,
	[FrequencyWeekAtTue] [bit] NOT NULL,
	[FrequencyWeekAtWed] [bit] NOT NULL,
	[FrequencyWeekAtThu] [bit] NOT NULL,
	[FrequencyWeekAtFri] [bit] NOT NULL,
	[FrequencyWeekAtSat] [bit] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SurveyAssignReminder] PRIMARY KEY CLUSTERED 
(
	[SurveyAssignReminderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyEmailContent]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyEmailContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailContentId] [int] NULL,
	[SurveyId] [int] NULL,
	[Sender] [nvarchar](max) NULL,
	[QueryId] [int] NULL,
 CONSTRAINT [PK_SurveyEmailContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyNotification]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyNotification](
	[SurveyNotificationId] [uniqueidentifier] NOT NULL,
	[SurveyId] [int] NOT NULL,
	[ReminderSurveyNotificationScheduleId] [uniqueidentifier] NULL,
	[StarterSurveyNotificationScheduleId] [uniqueidentifier] NULL,
	[InvitationEmailContentId] [int] NULL,
	[ThankyouEmailContentId] [int] NULL,
	[ClosureEmailContentId] [int] NULL,
	[ReminderEmailContentId] [int] NULL,
	[StarterEmailContentId] [int] NULL,
	[InvitationNotificationEnable] [bit] NOT NULL,
	[ThankyouNotificationEnable] [bit] NOT NULL,
	[ClosureNotificationEnable] [bit] NOT NULL,
	[ReminderNotificationEnable] [bit] NOT NULL,
	[StarterNotificationEnable] [bit] NOT NULL,
	[CreateUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyUserId] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SurveyNotification] PRIMARY KEY CLUSTERED 
(
	[SurveyNotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyNotificationSchedule]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyNotificationSchedule](
	[SurveyNotificationScheduleId] [uniqueidentifier] NOT NULL,
	[NotificationScheduleType] [int] NOT NULL,
	[FromDateTime] [datetime] NULL,
	[RecurNumberOfDay] [int] NOT NULL,
	[RecurNumberOfWeek] [int] NOT NULL,
	[RecurOnSun] [bit] NOT NULL,
	[RecurOnMon] [bit] NOT NULL,
	[RecurOnTue] [bit] NOT NULL,
	[RecurOnWed] [bit] NOT NULL,
	[RecurOnThu] [bit] NOT NULL,
	[RecurOnFri] [bit] NOT NULL,
	[RecurOnSat] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[LastProcessDateTime] [datetime] NULL,
	[NextProcessDateTime] [datetime] NULL,
 CONSTRAINT [PK_SurveyNotificationSchedule] PRIMARY KEY CLUSTERED 
(
	[SurveyNotificationScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[TableID] [int] IDENTITY(1,1) NOT NULL,
	[CellInputTypeID] [int] NULL,
	[IsRowLabel] [bit] NULL,
	[NumOfCols] [int] NOT NULL,
	[NumOfHeaders] [int] NULL,
	[NumOfRows] [int] NOT NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableCell]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableCell](
	[CellID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerTypeID] [int] NULL,
	[ColumnNumber] [int] NULL,
	[ControllerID] [int] NULL,
	[RowID] [int] NOT NULL,
	[TableID] [int] NOT NULL,
 CONSTRAINT [PK_TableCell] PRIMARY KEY CLUSTERED 
(
	[CellID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableColumn]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableColumn](
	[TableColumnID] [int] IDENTITY(1,1) NOT NULL,
	[ColNumber] [int] NOT NULL,
	[FirstHeaderText] [nvarchar](500) NULL,
	[Keywords] [nvarchar](24) NULL,
	[SecondHeaderText] [nvarchar](500) NULL,
	[TableID] [int] NOT NULL,
	[Width] [int] NULL,
 CONSTRAINT [PK_TableColumn] PRIMARY KEY CLUSTERED 
(
	[TableColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableRow]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableRow](
	[TableRowID] [int] IDENTITY(1,1) NOT NULL,
	[Height] [int] NULL,
	[Keywords] [nvarchar](24) NULL,
	[RowLabel] [nvarchar](2000) NULL,
	[RowNumber] [int] NULL,
	[TableID] [int] NULL,
 CONSTRAINT [PK_TableRow] PRIMARY KEY CLUSTERED 
(
	[TableRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TwoFAConfig]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TwoFAConfig](
	[TwoFAConfigId] [int] IDENTITY(1,1) NOT NULL,
	[BaseAddress] [nvarchar](255) NULL,
	[AuthTokenKey] [nvarchar](max) NULL,
	[AccountSID] [nvarchar](1024) NULL,
	[Status] [int] NOT NULL,
	[AuthyApiKey] [nvarchar](1024) NULL,
 CONSTRAINT [PK_TwoFAConfig] PRIMARY KEY CLUSTERED 
(
	[TwoFAConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TwoFAConfigEmailTemplate]    Script Date: 9/13/2019 7:37:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TwoFAConfigEmailTemplate](
	[TwoFAConfigEmailTemplateId] [int] IDENTITY(1,1) NOT NULL,
	[AccessCodeLength] [int] NOT NULL,
	[ExpireTime] [int] NOT NULL,
	[EmailSubject] [nvarchar](1024) NULL,
	[EmailTemplate] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_TwoFAConfigEmailTemplate] PRIMARY KEY CLUSTERED 
(
	[TwoFAConfigEmailTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[ActiveDate] [date] NULL,
	[Address] [nvarchar](500) NULL,
	[ClientID] [int] NOT NULL,
	[EditSurvey] [bit] NOT NULL,
	[Email] [nvarchar](500) NULL,
	[FirstName] [nvarchar](500) NULL,
	[GenderID] [int] NULL,
	[InActiveDate] [date] NULL,
	[IsActive] [bit] NULL,
	[IsNewPassword] [bit] NULL,
	[IsSent] [bit] NULL,
	[LastLogin] [datetime] NULL,
	[LastName] [nvarchar](500) NULL,
	[MiddleName] [nvarchar](500) NULL,
	[Password] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[SendPassword] [nvarchar](128) NULL,
	[UserName] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccessQuestionnaire]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccessQuestionnaire](
	[UserAccessQuestionnaireID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionnaireID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_UserAccessQuestionnaire] PRIMARY KEY CLUSTERED 
(
	[UserAccessQuestionnaireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCompanyTableDetail]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCompanyTableDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CompanyTableDetailId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UserCompanyTableDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserJwtToken]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserJwtToken](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[StatusId] [int] NOT NULL,
	[JwtToken] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserJwtToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserJwtTokenHistory]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserJwtTokenHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[UserJwtTokenId] [uniqueidentifier] NOT NULL,
	[ModifyDate] [datetime2](7) NOT NULL,
	[UserAgent] [nvarchar](2048) NULL,
	[ActionHistory] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserJwtTokenHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[VisitId] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[VisitNumber] [int] NOT NULL,
	[VisitTime] [datetime2](7) NOT NULL,
	[VisitCode] [nvarchar](450) NULL,
	[GeneratedCodeTime] [datetime2](7) NOT NULL,
	[IsUsedCode] [bit] NOT NULL,
	[SummaryNote] [nvarchar](max) NULL,
	[AdverseTrait] [nvarchar](max) NULL,
	[ExamFinding] [nvarchar](max) NULL,
	[MedicationHx] [nvarchar](max) NULL,
	[PresentingProblem] [nvarchar](max) NULL,
	[PsychoSocial] [nvarchar](max) NULL,
	[TCMHx] [nvarchar](max) NULL,
	[SurveyStatus] [int] NOT NULL,
	[IsUp] [bit] NOT NULL,
	[CompleteSurveyTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[VisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitQuestionnaire]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitQuestionnaire](
	[VisitQuestionnaireId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionnaireId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[VisitId] [int] NOT NULL,
	[FinishTime] [datetime2](7) NULL,
	[IsFinish] [bit] NULL,
	[RespondentIndexCode] [nvarchar](max) NULL,
	[StartTime] [datetime2](7) NULL,
	[Calc] [int] NOT NULL,
	[Max] [int] NOT NULL,
	[Sum] [int] NOT NULL,
 CONSTRAINT [PK_VisitQuestionnaire] PRIMARY KEY CLUSTERED 
(
	[VisitQuestionnaireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[CreateDate] [datetime] NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_webpages_Membership] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_webpages_OAuthMembership] PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_webpages_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 9/13/2019 7:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_webpages_UsersInRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180330090711_Initial', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180402132844_NavigatorProperties', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180409045322_AddIsActiveUserColumn', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180410062411_AddClassificationTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180517124607_AddAvatarColumn', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180521090030_association', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180523102607_newassociation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180529105944_AddTableOfRaptor', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180530030129_AddMissingTableOfRaptor', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180531073005_DeleteQuestionnaireReferences', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180531073937_AddIsPublishedCol', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180531112019_Patient', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180604064757_AddVisit', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180604105417_Test', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180606030732_QuestionnaireModify', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180606095534_remove-allow-null-sectionId', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180607042509_Add_IsEnable_HaveMultipleSections', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180607081455_Change1', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180612080038_AddVisitCodeCol', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180612103907_AddVisitQuestionnaireTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180613024737_string-status-to-int-status', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180613044733_fixConstraints', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180614073007_EditPatientForeignKey', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180618084444_PatientAddPostCodeCol', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180620042510_addGeneratedCodeTime', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180625035325_add_isusedcode', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180628073440_table_medicalRecord', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180628075333_update_medicalRecord', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180703025023_changeRespondentId_PatientIdNew', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180703040952_NewChange_RespondentId_PatientI', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180703041224_New_RespondentId_PatientI', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180703044217_table_medication', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180703061859_add_visitID', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180704035551_add_summarynote_visit', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180704041550_AddTableDoctorRegistrationCode', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180705115529_ExpandUniqueIdLength', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180706063852_surveyCompleteInfo', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180709061851_treatment_History', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180709101043_add_prior', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180713074341_patient_prior', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180725070812_addSurveyStatusForVisit', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180725094158_updateStatus_of_Survey', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180727050123_editUpdate_Starttime', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180727084216_ExpandLengthUniqueIdFields', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180730081234_add-validity-time', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180801104942_AddImageTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180802090903_add_time_completeSurveySet', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180802091333_timecompleteSurveyset', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180807073913_AddFieldMandatoryQuestion', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180816091239_addRomTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180816112039_ChangeRomVisitField', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180817033413_AddImageAnswerTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180822034828_meridianpoint_table', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180828065616_user_LastLogin', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180830093041_addForeignKeyForImage', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180830094219_revertMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180830095925_add_created_date_patient', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180830105316_AddTableAudit', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180831091139_UpdateTableAuditConfig', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180905041745_table_patientsharing', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180906081900_addTriggerUpdateSurveyState', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180907092454_UpdateDataAuditConfig', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180911081040_AddAssociationAuditConfig', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180924044838_calculation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180926023803_AddEmailConfigTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180928065848_POINTTOMAX8', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181128043850_application_user_userpermission', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181128105528_InsertMissingValue', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181128113451_AddTableCompany', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181130024806_permission_data', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181130093156_InsertDefaultCompanyValue', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181204043907_AddLoginLogoColumnIntoCompany', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181204105737_AddIconColumnIntoCompany', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181205043618_AddImportTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181211105705_AddSurveyTables', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181212084617_AddMandatoryColumn', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181219031512_ChangeSurveyDescriptionColumnType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181219064638_calculation_calculationquestion', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181219085220_change_questionnaireId_to_surveyId', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181224081944_tables', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181226044528_SurveyEmail', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181227095142_MessageQueue', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181228060801_ChangeMessageQueue', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181228093228_ChangeMessageDetail', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190104031240_AddLogoFileName', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190104032700_ChangeLogoFileName', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190104114231_AddEmailRecord', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190109033929_Delete_old_query_tables', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190109041241_add_query_tables', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190109094344_stringIndex', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190110061336_SurveyAssignTables', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190110084445_add_questionId_field', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190110090642_UpdateMessageQueue', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190110092037_add_controlId_field', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190111015506_AddCreateMofifyField', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190114083656_CleanRaptorTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115062102_IsNumericQuestion_Field', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115102330_add_QuestionName_field', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190121030817_MadeUpName_field', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190122032747_AddGeneratedNameFieldToTableRespondentSurvey', N'2.2.1-servicing-10028')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190122041538_FieldChangeToTableRespondentSurvey', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190122053536_DynamicCompanyTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190122083127_EditSurveyAssignForeignKey', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190124105025_AddTableUserCompanyTableDetail', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190125034355_AddSurveyAssignCompanyTableDetail', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190129035649_AddTablesForEmailSystem', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190129035811_DumbDataForEmailType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190131115755_AddReasonColumnIntoEmailRecord', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190213075625_EquationDBStructure', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190213075847_InsertValueForEquationType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190214023728_EquationItemType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190214033801_MigrateQuestionQuestionType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190215034201_ChangeMultiplierType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190215042545_AddEquationItemRuleTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190215042627_SurveyNotification', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190215042858_AddIsPositionalMultiplierToEquationTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190215071133_AddChosenAnswerControlUniqueCodeToRespondentAnswerTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190218062940_AddShowForSupplierToEquationTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190219032657_ChangeDBStructureOfEquation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190219032837_InsertValuesIntoEquationDetailTypeTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190219084842_AddNotificationTrackingColumnsToRespondentSurvey', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190219085448_ModifyNotificationColumnsToRespondentSurvey', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190220043654_AddControlIDFieldToEquationItemRuleTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190220095020_AddOrderNumberFieldToEquationItemRuleTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190221040428_AddControlTypeFieldToEquationItemRuleTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190221081108_ModifiyNotificationScheduleFromDay', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190226041023_Delete_FK_Questionnaire_Equation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190226041636_Delete_FK_Survey_Equation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190226042818_Add_DuplicateCode_Equation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190226071548_Add_OldID_Equation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190227094101_ChangeRespondentToParticipant', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190228095551_AddTableParticipantSurveyEquation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190305063806_AddEquationIntoParticipantSurveyEquation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190306023723_ModifiedParticipantSurveyEquation', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190307094912_AddCustomTableListType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190308044530_AddCustomTableQuestion', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190311014220_CustomTableMigrationData', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190311042329_IsImportedByCSV', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190311064458_AddCustomTableUniqueIdColumn', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190312094453_UpdateTablePermission', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190315071909_ChangeSectionOfQuestionToAllowNull', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190319034930_RestructureRoleTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190326052415_SupplierFeature', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190327033613_MigrationNewRoleAndPermission', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190328051701_ModifySupplierStatus', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190328072509_AddDescriptionForAdminAndParticipantRole', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190328075326_ModifyEmailDomainStatus', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190329105608_AddBrandLogoEmailDomain', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190401070815_RemoveCodeNumberField', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190402102028_AddTableCompanyEmailDomain', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190403034858_AddRawValueColumn', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190405082037_AddColumnInToSupplierLogoBranch', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190408064047_AddContractorIncludedField', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190408064829_UpdateEmailSignature', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190410040132_AddReference_User_Supplier', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190410063326_AddTargetIntoEquationTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190416092651_AddAssignRoleInToSurveyAssign', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190417044011_AddReference_EmailContent_Role', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190419080120_ChangeSupplierToContractorInRoleDescription', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190422064342_AddIsDeletedField_TableEmailContent', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190423031135_AddFK_Query_SurveyEmailContent', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190426043856_AddColumn_IsReadOnly-IsActive-CompanyEmailDomain', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190502061022_DeleteRedundantRoles', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190503035328_Insert_DataList_DataScaleList_Into_QuestionType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190503053511_RemoveDefault_CompanyEmailDomain_IsActive-IsReadOnly', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190506061946_Structure_For_DataList', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190506070758_Restructure_For_DataList', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190506071909_Insert_NewType_For_AnswerType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190507020647_Make_DataListTypeAnswer_PK_IdentityIncrement', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190507061552_Add_IsDisplayedForDropDown_For_DataListAttribute', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190507062206_InsertGPSLocaleQuestionType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190508022212_AddGPSLocaleQuestion', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190508065635_Add_LinkedQuestionId_To_Question', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190508082318_Create_Table_DataScale', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190508093540_ShowGPSInFoInGPSLocaleQuestion', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190509033815_Add_Reference_Between_DataScale_And_ScaleRow', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190510063538_AddGPSInfoTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190513035204_InsertGPSAnswerType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190515053322_AddAvatarFileNameToAspNetUser', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190522152539_AddTable_Photo', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190523030014_AddColumn_SingleText_CharactorWidth', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190530133927_AddColumn_UploadPhoto', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190603102447_AddColumn-Questionnaire-IsLongitudinal', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190605062932_AddColumn-EmailType-OrderNumber', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190605065251_UpdateValue-EmailTye-OrderNumber', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190606082312_Update_Value_AnswerControlUniqueId', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190610083641_AddSurveyRecurring', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190611060350_AddColumnAssignNumber', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190617080107_AddDataListAnswer', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190617083649_AddRepeatingType', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190617094442_ChangeDeleteBehaviorOfDataListAnswer', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190618023924_UpdateRole', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190618041624_AddRepeatingQuestionDataStructure', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190618072042_AddOrderDisplayRoleColumn', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190619064958_RemoveReferenceBetweenDataScaleAndScaleRow_AddReferenceBetweenDataScaleAnDataListAnswer', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190619083900_AlterScaleRowKeywordLengthTo450', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190620070822_AddRepeatingQuestionAdditionalInfo', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190621023046_AddRepeatingQuestionIdIntoQuestion', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190624084219_AddIsRepeatFirstAnswerOnly', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190625060514_RepeatingQuestionAddIsActiveAnswer', N'2.2.1-servicing-10028')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190628091249_Alter_RespondentAnswer_Image_Photo', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190703072319_MakeDuplicateCodeNullable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190703114306_AddRepeatingRespondentAnswerTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190705034603_AddRepeatingImageAnswerTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190705093434_AddRepeatingPhotoAnswerTable', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190708085201_Add_FK_RepeatingRespondentAnswer_RespondentAnswer', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190709031300_Update_RepeatingCascadeReference', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190709102305_Fix_Data_EmailContent_Consitent', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190730035727_AddColumn_Scale_IsEmoji', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190730084532_AddColumn_ScaleColumn_Emoji', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190801055135_AddJWTAuthentication', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190812022915_QueryEquation', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190813035018_ChangeNcharToNvarcharInQueryEquation', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190822080145_AddOfflineAcessCode', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190911104405_Add2FAConfig', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190911120940_Update2FAConfig', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190912043208_AddAuthyColumn', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190912071755_AddPhoneConfirmedColumn', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2, 1, 2, 1, 2)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (3, 1, 3, 1, 3)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4, 4, 1, 1, 4)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (5, 4, 1, 1, 5)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (6, 4, 2, 1, 6)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (7, 6, 1, 1, 7)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8, 4, 1, 1, 8)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9, 4, 2, 1, 9)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10, 4, 3, 1, 10)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (11, 4, 4, 1, 11)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12, 4, 5, 1, 12)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (13, 1, 24, 1, 13)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (1005, 6, 2, 1, 1005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (1006, 7, 1, 1, 1006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (1007, 13, 1, 1, 1007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2005, 14, 2, 1, 2005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2006, 8, 0, 1, 2005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2007, 8, 0, 2, 2005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2008, 8, 0, 3, 2005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2009, 8, 0, 4, 2005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2010, 4, 1002, 1, 2006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2011, 14, 3, 1, 2007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2012, 1, 2004, 1, 2008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2013, 4, 1002, 1, 2009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2014, 7, 2, 1, 2010)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2015, 13, 2, 1, 2011)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2031, 14, 4, 1, 2013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2037, 1, 2005, 1, 2014)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2038, 1, 2006, 1, 2015)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2039, 8, 25, 1, 2012)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2040, 8, 26, 2, 2012)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2041, 8, 27, 3, 2012)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2042, 8, 28, 4, 2012)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2043, 8, 29, 5, 2012)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2044, 8, 30, 1, 2013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2045, 8, 31, 2, 2013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2046, 8, 32, 3, 2013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2047, 8, 33, 4, 2013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (2048, 8, 34, 5, 2013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (3005, 5, 1, 1, 3005)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (3006, 7, 1002, 1, 3006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4050, 8, 1047, 1, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4051, 8, 1048, 2, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4052, 8, 1049, 3, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4053, 8, 1050, 4, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4054, 8, 1051, 5, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4055, 8, 1052, 6, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4056, 8, 1053, 7, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4057, 8, 1054, 8, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (4058, 8, 1055, 9, 4006)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (6113, 5, 2, 1, 5009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8113, 5, 2002, 1, 7009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8114, 5, 2003, 1, 7010)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8115, 5, 2004, 1, 7011)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8116, 5, 2005, 1, 7012)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8117, 14, 1002, 1, 7013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8118, 5, 2006, 1, 7014)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (8119, 5, 2007, 1, 7015)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9113, 4, 2002, 1, 8009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9114, 4, 2003, 1, 8010)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9117, 4, 2006, 1, 8013)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9118, 4, 2007, 1, 8014)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9119, 1, 3004, 1, 8015)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9120, 1, 3005, 2, 8015)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9121, 4, 2008, 1, 8016)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9123, 5, 3002, 1, 8020)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9124, 5, 3003, 1, 8021)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9125, 4, 2010, 1, 8022)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9126, 4, 2011, 1, 8023)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9127, 4, 2012, 1, 8024)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9128, 4, 2013, 1, 8025)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9129, 4, 2014, 1, 8026)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9130, 4, 2015, 1, 8027)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9132, 4, 2017, 1, 8029)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9133, 5, 3004, 1, 8030)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9134, 5, 3005, 1, 8031)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9135, 4, 2018, 1, 8032)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9136, 4, 2019, 1, 8033)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9137, 4, 2020, 1, 8034)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9138, 4, 2021, 1, 8035)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (9139, 4, 2022, 1, 8036)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10133, 7, 2002, 1, 9030)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10134, 4, 3018, 1, 9031)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10135, 4, 3019, 1, 9032)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10136, 4, 3020, 1, 9033)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10137, 4, 3021, 1, 9034)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10138, 4, 3022, 1, 9035)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10139, 14, 2002, 1, 9036)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10140, 1, 3006, 1, 9037)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10141, 5, 4004, 1, 9038)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10142, 14, 2003, 1, 9039)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10145, 14, 2004, 1, 9042)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10148, 14, 2005, 1, 9045)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10151, 14, 2006, 1, 9048)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10152, 1, 3010, 1, 9049)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (10153, 5, 4008, 1, 9050)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (11133, 4, 4018, 1, 10030)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (11134, 4, 4019, 1, 10031)
GO
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (11135, 4, 4020, 1, 10032)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12133, 8, 3129, 1, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12134, 8, 3128, 2, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12135, 8, 3127, 3, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12136, 8, 3126, 4, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12137, 8, 3125, 5, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12138, 8, 3124, 6, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12139, 8, 3123, 7, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12140, 8, 3122, 8, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12141, 8, 3121, 9, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12142, 8, 3110, 10, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12143, 8, 3119, 11, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12144, 8, 3118, 12, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12145, 8, 3117, 13, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12146, 8, 3116, 14, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12147, 8, 3115, 15, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12148, 8, 3114, 16, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12149, 8, 3113, 17, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12150, 8, 3112, 18, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12151, 8, 3111, 19, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12152, 8, 3130, 20, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12153, 8, 3120, 21, 4007)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12154, 8, 3131, 1, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12155, 8, 3132, 2, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12156, 8, 3133, 3, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12157, 8, 3134, 4, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12158, 8, 3135, 5, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12159, 8, 3136, 6, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12160, 8, 3137, 7, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12161, 8, 3138, 8, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12162, 8, 3139, 9, 4008)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12163, 8, 3140, 1, 4009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12164, 8, 3141, 2, 4009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12165, 8, 3142, 3, 4009)
INSERT [dbo].[Answer] ([AnswerID], [AnswerTypeID], [ControllerID], [OrderNumber], [QuestionID]) VALUES (12166, 8, 3143, 4, 4009)
SET IDENTITY_INSERT [dbo].[Answer] OFF
SET IDENTITY_INSERT [dbo].[AnswerType] ON 

INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (1, N'ST', N'Single Text. It will be return a SingleText Controller: Text box, Text Area with prefix, suffix and hint', N'Single Text')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (3, N'SS', N'Single Selection', N'Single Selection')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (4, N'GS', N'Group Selection', N'Group Selection')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (5, N'SC', N'Scale', N'Scale')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (6, N'TB', N'Table', N'Table')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (7, N'IM', N'Image', N'Image')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (8, N'CT', N'Custom Table Question', N'Custom Table Question')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (10, N'DL', N'Data List', N'Data List')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (11, N'DS', N'Data Scale', N'Data Scale')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (12, N'GP', N'GPS Locale', N'GPS Locale')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (13, N'UP', N'Upload Photo', N'Upload Photo')
INSERT [dbo].[AnswerType] ([AnswerTypeID], [Code], [Description], [Name]) VALUES (14, N'RE', N'Repeating', N'Repeating')
SET IDENTITY_INSERT [dbo].[AnswerType] OFF
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'06bce538-d6fa-4ed1-9964-78821f2a3d1f', N'da34c551-ee81-452c-bd15-70045664416b', N'Company Supplier', N'COMPANY SUPPLIER', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Company Supplier', 6)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'0e948067-a728-40b8-b031-b1cc083af089', N'e863ec59-f2b3-4377-bc7a-7c6079393177', N'Edit Supplier Email Address', N'EDIT SUPPLIER EMAIL ADDRESS', N'93c43a1c-dcee-4955-9a8b-5a25216b3ea6', N'Edit Email Address', 2)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'153563b0-d7b0-4fce-b4a0-44844eceb70d', N'0fc3aa77-5f36-4323-92a2-557556ec6264', N'Contractor', N'CONTRACTOR', NULL, N'Contractor', 5)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'182553f3-f7df-4044-b865-5ba6bc1d99ac', N'6cb49e5c-43ef-460f-a484-184081af5618', N'Calculation', N'CALCULATION', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Calculation', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'1c71d049-2971-449a-8900-9154cac40042', N'a764ed22-91ee-4614-9ec5-14cd6fa5a199', N'Participant Access', N'PARTICIPANT ACCESS', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Participant', 7)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'2885dc3c-c8ee-4614-8f07-3b44c7048f51', N'8da697e5-c1be-4c19-bf76-2de2ed96a270', N'Email Template', N'EMAIL TEMPLATE', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Email Template', 9)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'2d805319-281f-476c-9ae6-da2bab26aa90', N'8a46cd12-8095-44d6-afbd-7e127bdfd7d4', N'Super Administrator', N'SUPER ADMINISTRATOR', NULL, N'Super Administrator', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'3bd43616-35da-4db5-8a74-8541bb731a3c', N'1ddb2a47-0be7-46d3-9973-57fc6f99c808', N'Export Question Library', N'EXPORT QUESTION LIBRARY', N'5734f8d9-7a26-42ad-ae6d-a817d822c055', N'Export', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'4be4135a-3f3f-4644-b969-8aea56778aa8', N'74e21a38-1a3a-40ca-ad0e-6ba2ee239cfb', N'Email Configuration', N'EMAIL CONFIGURATION', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Email Configuration', 7)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'5170dea2-0a12-42c6-8076-63e6b782c920', N'1dac53dd-1fdf-4cec-a310-dea2c3f17ddf', N'Custom List', N'CUSTOM LIST', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Custom List', 6)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'52f3d95e-4f44-4495-868d-0116a25787d3', N'f578a67f-ef4a-4b2b-974d-aecb2e517ab7', N'Participant', N'PARTICIPANT', NULL, N'Participant', 4)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'5734f8d9-7a26-42ad-ae6d-a817d822c055', N'8c30e3b4-70d2-48cb-9df1-7cf8af55cfce', N'Question Library', N'QUESTION LIBRARY', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Question Library', 5)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'59beec16-23d6-40fa-8118-a4b672288ec7', N'3ce3669f-a822-486e-bcf3-04a6e8c6ee81', N'Create Super Administrator', N'CREATE SUPER ADMINISTRATOR', N'2d805319-281f-476c-9ae6-da2bab26aa90', N'Create Super Administrator', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'5de43a26-bb71-4e12-8e41-c753075aac64', N'2cf34616-9654-41c3-bd30-3f07de215261', N'Edit Participant Email Address', N'EDIT PARTICIPANT EMAIL ADDRESS', N'fcd67fe5-54bf-4457-8c6b-fd57b4de74a0', N'Edit Email Address', 2)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'5eead04a-c174-42df-8952-6db0cc99214b', N'36cd8387-1f63-48c9-988a-d00a114edb9f', N'Email Query', N'EMAIL QUERY', N'dfcbdb52-2292-4c14-95c0-8ca76bdec855', N'Email Query', 2)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'26111d51-1971-45ac-8a4b-6183b3c30d3c', N'Operator', N'OPERATOR', NULL, N'Operator', 3)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'7a4a9e8c-8df6-4a35-8c5d-a9e6fc480995', N'f36ef96e-d078-4788-860c-dadf54f419a4', N'Longitudinal', N'LONGITUDINAL', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Longitudinal', 3)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'7dcdfa66-ecb8-4456-a082-00b659deae79', N'93b92ab4-8530-45a7-9abc-502a607fd3be', N'Create Operator', N'CREATE OPERATOR', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Create Operator', 4)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'8a5ec074-4b66-4418-abbc-971200a90066', N'fea35425-20dc-4f6e-a9ce-df42e32e13e4', N'Company Settings', N'COMPANY SETTINGS', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Company Settings', 5)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'90b02719-631c-473c-9ff8-dbe9fb846406', N'7d982e65-df92-4082-a5a9-fc6fde7d0df6', N'Export Query', N'EXPORT QUERY', N'dfcbdb52-2292-4c14-95c0-8ca76bdec855', N'Export', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'93c43a1c-dcee-4955-9a8b-5a25216b3ea6', N'a95304ee-1e92-4658-b796-2ab5f8c94535', N'Supplier Management', N'SUPPLIER MANAGEMENT', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Contractor', 2)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'9ab44744-a11c-4469-a59d-e1313e8430d8', N'ad456eb0-1d47-48d3-bed8-767eb218ba29', N'Email History', N'EMAIL HISTORY', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Email History', 10)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'ac42041e-8553-46c4-b27b-43ce442e651d', N'48eaf8f7-41a4-433d-92a4-df7e07348e7b', N'Create Administrator', N'CREATE ADMINISTRATOR', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Create Administrator', 3)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'b980388c-e571-44f9-9697-8bdbb2ce7479', N'48e56c80-b1bb-4bec-be09-020b6e11c693', N'Import Custom List', N'IMPORT CUSTOM LIST', N'5170dea2-0a12-42c6-8076-63e6b782c920', N'Import', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'cd52892d-55a9-4f8c-bc86-28a065cefa17', N'b8b4e408-36c0-4a79-82da-8c304c0c20e9', N'Export Calculation', N'EXPORT CALCULATION', N'182553f3-f7df-4044-b865-5ba6bc1d99ac', N'Export', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'd1ee33c7-1120-4f32-b3cb-56466369344f', N'f80985c4-5c8e-4f84-8127-5a0d6307351e', N'Import Participant', N'IMPORT PARTICIPANT', N'fcd67fe5-54bf-4457-8c6b-fd57b4de74a0', N'Import', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'd764e86f-5a44-47af-bad8-a3f1d15c8106', N'799773c0-0aa1-4e3a-9bf2-5d8bae38d859', N'Questionnaire', N'QUESTIONNAIRE', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Questionnaire', 4)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'de1b5800-7fb6-40e9-bc85-5fcc758f114b', N'f1f11c59-e67e-443b-80ca-72fe2830d358', N'Import Supplier', N'IMPORT SUPPLIER', N'93c43a1c-dcee-4955-9a8b-5a25216b3ea6', N'Import', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'dfcbdb52-2292-4c14-95c0-8ca76bdec855', N'ae483de7-1429-40bb-93e4-d5781aa81831', N'Query', N'QUERY', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Query', 2)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'e2c9ac16-7518-42ba-a7b0-b24102c27235', N'520b8771-db43-41c0-b150-9ffea0e8d2ef', N'Eagle Super Administrator', N'EAGLE SUPER ADMINISTRATOR', NULL, N'Eagle Super Administrator', 0)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'ea8342c0-525c-4bd3-9d4b-14778be48179', N'cd9128d8-6799-4829-bb78-05fdfa2fdf49', N'Survey', N'SURVEY', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Survey', 3)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'6a5c9012-9590-4674-aa75-3bccf8e4b888', N'Administrator', N'ADMINISTRATOR', NULL, N'Administrator', 2)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'fcd67fe5-54bf-4457-8c6b-fd57b4de74a0', N'c8745587-defc-4875-b855-76af433bd896', N'Participant Management', N'PARTICIPANT MANAGEMENT', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e', N'Participant', 1)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName], [ParentId], [Description], [OrderDisplay]) VALUES (N'feeccb47-bc42-4d5c-b2d8-1d74f6fe1240', N'98da3857-fc5d-44b4-8df3-bb7c474ed032', N'Supplier Access', N'SUPPLIER ACCESS', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6', N'Contractor', 8)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'06bce538-d6fa-4ed1-9964-78821f2a3d1f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'0e948067-a728-40b8-b031-b1cc083af089')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'21145a81-b4e9-437b-926d-b075b0efe69b', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62015f8b-b2d1-40be-9894-67cb6484e382', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6bdebaaf-ec73-48b6-a28a-3d54eb59e28a', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9fa05774-8ede-4fb3-aea0-595da731fd85', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dbfe0ec4-2180-4a7a-bb17-a7fa2c31f8ee', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'182553f3-f7df-4044-b865-5ba6bc1d99ac')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'1c71d049-2971-449a-8900-9154cac40042')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'2885dc3c-c8ee-4614-8f07-3b44c7048f51')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'2d805319-281f-476c-9ae6-da2bab26aa90')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'3bd43616-35da-4db5-8a74-8541bb731a3c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'4be4135a-3f3f-4644-b969-8aea56778aa8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'5170dea2-0a12-42c6-8076-63e6b782c920')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e01e90a-35f5-4470-b6b7-8935a7fc8cab', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'5734f8d9-7a26-42ad-ae6d-a817d822c055')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'59beec16-23d6-40fa-8118-a4b672288ec7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'5de43a26-bb71-4e12-8e41-c753075aac64')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'5eead04a-c174-42df-8952-6db0cc99214b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'72f464e9-4813-4bd6-8e8b-582ae955e7f6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'7a4a9e8c-8df6-4a35-8c5d-a9e6fc480995')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'7dcdfa66-ecb8-4456-a082-00b659deae79')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'8a5ec074-4b66-4418-abbc-971200a90066')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'90b02719-631c-473c-9ff8-dbe9fb846406')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'93c43a1c-dcee-4955-9a8b-5a25216b3ea6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'9ab44744-a11c-4469-a59d-e1313e8430d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'ac42041e-8553-46c4-b27b-43ce442e651d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'b980388c-e571-44f9-9697-8bdbb2ce7479')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'cd52892d-55a9-4f8c-bc86-28a065cefa17')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'd1ee33c7-1120-4f32-b3cb-56466369344f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'd764e86f-5a44-47af-bad8-a3f1d15c8106')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'de1b5800-7fb6-40e9-bc85-5fcc758f114b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'dfcbdb52-2292-4c14-95c0-8ca76bdec855')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fd221e2b-1937-43de-830b-458bb0ae57df', N'e2c9ac16-7518-42ba-a7b0-b24102c27235')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'ea8342c0-525c-4bd3-9d4b-14778be48179')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'ef8688e4-373c-4d69-9f2a-7b4fec3c886e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'fcd67fe5-54bf-4457-8c6b-fd57b4de74a0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', N'feeccb47-bc42-4d5c-b2d8-1d74f6fe1240')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'10f883e8-0399-472c-af88-d395956b5540', 1, N'259913e0-bfb9-4dc9-915c-c7852018aff7', NULL, N'hienlth@hcmue.edu.vn', 0, N'Hien', N'Luong', 1, NULL, N'HIENLTH@HCMUE.EDU.VN', N'HIENLTH', N'AQAAAAEAACcQAAAAELbKPPxspcEyBniIf2+fCOhCVpVFBLZLRtsNW8GFTrY3JBdhsd+o3gC5v5CGdQ2kKw==', NULL, 0, NULL, N'ATH6GI5HK4VF3KTDDFV47SFJS4D6SO3O', NULL, 0, N'hienlth', 1, NULL, CAST(N'2019-08-16T21:05:58.5801052' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'21145a81-b4e9-437b-926d-b075b0efe69b', 0, N'1d5e2e5d-d64d-4b90-9df0-b5a5324d4cc3', NULL, N'math@hcmue.edu.vn', 0, N'Khoa', N'Toan', 1, NULL, N'MATH@HCMUE.EDU.VN', N'MATH642', NULL, NULL, 0, NULL, N'HZXI6HKFHIZL5GURXAU2BEQX4R3JZJIF', NULL, 0, N'math642', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'62015f8b-b2d1-40be-9894-67cb6484e382', 0, N'02d5bb40-2995-4049-b88b-1adfd7e82389', NULL, N'giaovutoan@hcmue.edu.vn', 0, N'Giao vu', N'Toan', 1, NULL, N'GIAOVUTOAN@HCMUE.EDU.VN', N'GIAOVUTOAN946', NULL, NULL, 0, NULL, N'YBC5VSF4A32NPPM2MNC7EW4QF2LIW2DA', NULL, 0, N'giaovutoan946', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'6bdebaaf-ec73-48b6-a28a-3d54eb59e28a', 0, N'8569e13e-2631-4b82-a9db-4213e6b6f418', NULL, N'baotn@hcmue.edu.vn', 0, N'Bao', N'Tran', 1, NULL, N'BAOTN@HCMUE.EDU.VN', N'BAOTNG', NULL, NULL, 0, NULL, N'S2Q25Z3PRXKIDLIS263K4BN77I3IP3TF', NULL, 0, N'baotng', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'9e01e90a-35f5-4470-b6b7-8935a7fc8cab', 0, N'4339b011-e3d8-48bc-bf3f-d1a22db546f4', NULL, N'aspnhatnghe@gmail.com', 0, N'Nhat', N'Nghe', 1, NULL, N'ASPNHATNGHE@GMAIL.COM', N'ASPNHATNGHE', N'AQAAAAEAACcQAAAAEFVBoWQVfhemLeBhZGxPfj7B/WUVA3+YkLuXdLpiMGxQQHq1o+ts7xVrFhld2OQnsw==', NULL, 0, NULL, N'TYCBE6PRAXA6QNW2DVJOX6PR3KGJXAQE', NULL, 0, N'aspnhatnghe', 1, NULL, CAST(N'2019-06-28T00:26:31.5828749' AS DateTime2), NULL, NULL, NULL, NULL, N'', 0, NULL, N'/Upload/images/cumeo.png', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'9fa05774-8ede-4fb3-aea0-595da731fd85', 0, N'3c642378-e5d5-41f9-9b71-819f8f13d43a', NULL, N'hien.hy@hcmue.edu.vn', 0, N'Hien', N'Luong A', 1, NULL, N'HIEN.HY@HCMUE.EDU.VN', N'HIEN.HY565', NULL, NULL, 0, NULL, N'32F2E4QFT2B7XMWPJXSLEMO2TXQCTTZC', NULL, 0, N'hien.hy565', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2004, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', 0, N'12e235b3-fa8c-454f-888d-6442d6a4719c', NULL, N'hien.luong@zimitech.vn', 0, N'Hien', N'Luong', 1, NULL, N'HIEN.LUONG@ZIMITECH.VN', N'HIEN.LUONG107', NULL, NULL, 0, NULL, N'5LTE4EY37ZG5QEGYQYUGRORFZ7BPFTZ5', NULL, 0, N'hien.luong107', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'dbfe0ec4-2180-4a7a-bb17-a7fa2c31f8ee', 0, N'132dfafa-4fbd-4ffa-91c5-e202e944ecd6', NULL, N'tannq@hcmue.edu.vn', 0, N'Tan', N'Nguyen', 1, NULL, N'TANNQ@HCMUE.EDU.VN', N'TANNQ414', NULL, NULL, 0, NULL, N'NY6KWUFVPEGLNVY6ND2L2DREMOULUHSC', NULL, 0, N'tannq414', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2004, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DateOfBirth], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [PostCode], [SecurityStamp], [State], [TwoFactorEnabled], [UserName], [IsActive], [Avatar], [LastLogin], [DepartmentId], [GenderId], [JobTitleId], [LocationId], [MadeUpName], [IsImportedByCSV], [SupplierId], [AvatarFileName], [OfflineAccessCode], [AuthyId], [PhoneConfirmed]) VALUES (N'fd221e2b-1937-43de-830b-458bb0ae57df', 0, N'd1c5a76c-c420-4fc2-9a7a-f9ddc04ad3d4', CAST(N'2001-06-16T00:00:00.0000000' AS DateTime2), N'hyhien@gmail.com', 1, N'Super Admin', N'Admin', 1, NULL, N'HYHIEN@GMAIL.COM', N'MASTER', N'AQAAAAEAACcQAAAAEDDsScqsClAronPrO/rXP2mo8XnZQXnHHX0/Y2G1JUPON5caeReyDJQvbAXX8lRvFQ==', N'+848547745690', 0, NULL, N'HHZSYWJ4TC5KL76Q5DCFCDQXHCWYCUD5', NULL, 0, N'master', 1, NULL, CAST(N'2019-09-13T07:44:15.4610003' AS DateTime2), NULL, NULL, NULL, NULL, N'', 0, NULL, N'/Upload/images/cumeo.png', N'123456', N'189161950', 1)
SET IDENTITY_INSERT [dbo].[AuditConfig] ON 

INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (1, N'Logon', N'has logged in', N'Logon', N'Audit activity of user who logged in Eagle360 system.', 1, N'Logon', N'{0} {1} Eagle360.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (2, N'AddClassification', N'added', N'Classification', N'Audit activity of user who added, edited or deleted classification.', 0, N'Add classification', N'{0} {1} {2} classification.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (3, N'EditClassification', N'edited', N'Classification', N'Audit activity of user who added, edited or deleted classification.', 0, N'Edit classification', N'{0} {1} {2} classification.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (4, N'DeleteClassification', N'deleted', N'Classification', N'Audit activity of user who added, edited or deleted classification.', 0, N'Delete classification', N'{0} {1} {2} classification.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (5, N'AddPatient', N'added', N'Patient', N'Audit activity of user who added, edited or deleted patient.', 0, N'Add patient', N'{0} {1} {2}''s personal infomation.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (6, N'EditPatient', N'edited', N'Patient', N'Audit activity of user who added, edited or deleted patient.', 0, N'Edit patient', N'{0} {1} {2}''s personal infomation.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (7, N'DeletePatient', N'deleted', N'Patient', N'Audit activity of user who added, edited or deleted patient.', 0, N'Delete patient', N'{0} {1} {2}''s personal infomation.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (8, N'RegisterUser', N'registered', N'User', N'Audit activity of user management.', 0, N'Register user', N'{0} {1} infomation in Eagle360 system.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (9, N'UpdateUser', N'updated', N'User', N'Audit activity of user management.', 0, N'Update user', N'{0} {1} own infomation in Eagle360 system.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (10, N'AddUser', N'added', N'User', N'Audit activity of user management.', 0, N'Add user', N'{0} {1} user {2}.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (11, N'EditUser', N'edited', N'User', N'Audit activity of user management.', 0, N'Edit user', N'{0} {1} user {2}.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (12, N'DeleteUser', N'deleted', N'User', N'Audit activity of user management.', 0, N'Delete user', N'{0} {1} user {2}.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (13, N'CreateAssociation', N'created', N'Association', N'Audit activity of user who created or deleted association with another.', 0, N'Create association', N'{0} {1} association with {2}.')
INSERT [dbo].[AuditConfig] ([Id], [ActionAudit], [Activity], [Category], [Description], [Enabled], [Name], [MessageTemplate]) VALUES (14, N'DeleteAssociation', N'deleted', N'Association', N'Audit activity of user who created or deleted association with another.', 0, N'Delete association', N'{0} {1} association with {2}.')
SET IDENTITY_INSERT [dbo].[AuditConfig] OFF
SET IDENTITY_INSERT [dbo].[BrandLogo] ON 

INSERT [dbo].[BrandLogo] ([BrandLogoID], [FileName], [Status]) VALUES (1, N'/Upload/images/hcmup_40.jpg', 1)
SET IDENTITY_INSERT [dbo].[BrandLogo] OFF
SET IDENTITY_INSERT [dbo].[ClassificationType] ON 

INSERT [dbo].[ClassificationType] ([ClassificationTypeId], [Name]) VALUES (1, N'Medication')
INSERT [dbo].[ClassificationType] ([ClassificationTypeId], [Name]) VALUES (2, N'Investigation')
INSERT [dbo].[ClassificationType] ([ClassificationTypeId], [Name]) VALUES (3, N'Procedure')
INSERT [dbo].[ClassificationType] ([ClassificationTypeId], [Name]) VALUES (4, N'Diagnosis')
INSERT [dbo].[ClassificationType] ([ClassificationTypeId], [Name]) VALUES (5, N'Existing Medical Conditions')
SET IDENTITY_INSERT [dbo].[ClassificationType] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Address], [CityId], [CountryId], [Footer], [Logo], [Name], [StateId], [Zipcode], [IsActive], [LoginLogo], [Icon], [IconFileName], [LoginLogoFileName], [LogoFileName], [CompanyName], [ContactEmail], [ContactName], [ContactPhone], [Position]) VALUES (1, N'673 Bourke Street Melbourne, VIC, 3000 Australia', NULL, NULL, N'<p style="text - align: center; white - space: pre - wrap; ">RedUnyen Group Platforms:&nbsp;<a href="http://www.eaglesaas.com">Eagle SaaS</a> &amp; Raptor<br/>Copyright 2018-2019</p>', 0xFFD8FFE10950687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520352E362D633134302037392E3136303435312C20323031372F30352F30362D30313A30383A32312020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D22222F3E203C2F7264663A5244463E203C2F783A786D706D6574613E2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203C3F787061636B657420656E643D2277223F3EFFED002C50686F746F73686F7020332E30003842494D0425000000000010D41D8CD98F00B204E9800998ECF8427EFFDB008400010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202020202020202020202030303030303030303030101010101010102010102020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFDD00040026FFEE000E41646F62650064C000000001FFC00011080054012C03001100011101021101FFC400A4000100020301010101010000000000000000090A0607080B0403050201010002030101010000000000000000000005060304070201081000000603000202020104010305000000010203040506000708091112131421150A1622314118232632394275B61100010303020403060404030705000000010002030405112131061241516171811314223291A11542B1F00752C1D192E1F11623337282A2D224353662B2FFDA000C03000001110211003F00BFC6113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C22611308BFFFD0BFC611308B8EFA4751F5FEDA0087D15D715BE56802FC41C4CC173DC0EE0D8926450A20E5324CEC3BA254E804800001314A05CB80F918C0B14C05F8CB5BEAAD54BF1D6D2BAA64EC6531B07A35BCC7FC40782D3A986B26F8609844DEE181C7EE703E8A097A3BC0EF90ADBAE1E4E33F343BDAE928B1152235DD81117DA7564A55145553229135F6DE75091A80A8A9BFC5BC10140A200050028065D6DFC6D61A40186D1031BDDA5AE3FF0073327D5CA06A6C37198F30AD91C7B1C81F6763ECA063A57C73F9D5F1EED5C6C58ED9FBE6EF43ADAAA4A3BD93CC7BE369DBA3211164A82C3273F554DD57EF9191A9241F6B874E61463914C0DF72C0501F776B75FF0082AFA7DDDD1C0C9DDA724D1B1A4F8076AD27B00ECF60A06A6DD7DB70F681D23A31F998E71C798D0FDB0B1DE5EFEA4FF24BA09E4731D8B71AC74FD1DBAC995DC0EDF836ADED40C408522C9456C7A92309622481FE2025712C59A214C23ED2300FA0C972FE1EF0F5702EA763A9A6EF19F873E2C76463C1BCBE6BCD2F12DCA9C812384B1F670D7FC4307EB95728F1C1E6AF90FC8E951A7D4649EEA3DFA84799EC968CD8CF1825372444133A8F9DEBAB1A02844EC58D669A673A856E46D288A2432CE182097A38F25E20E0FBAF0FFF00BD9409687381233381DB9C6EC3E790760E255CADB7BA3B97C0C3C9518F94EFE87AFEBE0A5FF2A8A613089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089845FFFD1BFC6113089845A27A6F7B31E63D09B437FCB50AFDB321353D61C5C6C14FD611F0F2B777B5D8D5DB8CFC94447CF4D57A2DC235B873AD24F3EC76918AC5A2C62028A14A99F76DD44EB8D74542D7C71BE5772873C90D04EC09009D4E834DC8F3182AA714B4EFA8735CE6B06486EF8EBB91B6E7C02807A07F55978EEB4CEA1136FD79D35ACA3DC28427F744ED1E93618464532842195906D4CD8B3D642A6990C27106D1EE8DE8A200511F403799FF8657F899CD1494D23BB07381F4E6601F52157E3E2BB73DD87B6568EE4023ECE27ECA2EFCE471EF00F436941F243E3FF006EE8735A15384F6E4D6748B856E1076856DEC8231B27B160F5CB9751D3B5DD9B54967299EC11E31CD159168AACF174C8FDBA82FEC9C1976BED0567FB3F7D8A7F65B46F7349E438C8617EA0B1C3E539383803E123962EF9476FA883F12B7BE3E7DDCD040E61DC0DC387518D77DF7A8DC1CECDD5E6A22C95A9895AF58ABF26C66A067E0E41DC4CD424C463949EC6CB444AB059BBE8D938E78811541745422A8AA4298860300087537B192B0C7200E8DC08208C820EE083A107A85516B9CD7073490E07208DC2F442F025E6897EE9AD29CC3D2530C91EAFD7B5E3CA40DA960671A86FDA3C57D693E9841AA246ECD2D955544E43CBB24085FCF642322DD312252056BC178DF8405964FC4ADE0FE1723B05BBFB271D87FC8EFCA4EC7E13BB73D12C17AF7F6FBAD49FFD5B4687F9C7FE43A8EA351D71654CE78ACA9844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089845FFFD2BFC6113089845FE144D35533A4A908AA4A90C9A89A8529D35133944A721C860129C87288808087A10C6DA8DD1428DDFF00A79BC515F36648ECD93E74770EBCC4A1A6656934ED8B7DA76B972F955817700CEA75D9E8F42BD1EE0E03ED9C5A8C59A65308249261FA0B843C79C4F0530A66D40200C07398D73FFC441C9F1764F72A11FC3D699253298F049CE01207D01D3D30BA8ABFE24FC64D6A29BC34770A731B968D902374D6B06A7ABDB254C9A64F814CE276D2C66671DAC25FFD4AAAE0EA187F62611FDE46C9C53C4723B9DD5B539F07B9A3E8D207D96D36D16C68E510458F1683F73AAE56E8FF00E9ECF181D0508F9BC568C2682B6AAD974E32EBA1E5DE53558E5CE41144EAD31C9A575D493722C051395589058C40129164FDFC824EDFC77C4940F05D37B78BAB651CD9FF00AB478FF163C0AD4A9E1EB5D43748FD9BFBB74FB6DF654D1EE3F1C5D81E0FBA3355740532D07B56BE82D8F1739A2FA1EBAC5D473052D30A2B4CA5AFF66D7137AB1ABB3F2B0EC1D11D4628E9CC65821FF28A8ACB10AF9B36EB766E20B57195BE5A199BCB3BA3224889C9E53A7330F5009183805AEC640F849A6D75B6B2C752CA861CC61D96BC771AE1C3A1C74D88CF881E8B5C8BD1F52EBCE66D27D2B492A4DE077050216D868B4DD83E35727D548CC6DF4F72F4A922474FE996D64FA25CA85294A670CCE21FAF59C0AEB6F96D5719ADD37CF13CB73B647E577939B870F02BA2D1D4B2B295952CF95ED07C8F51E8723D17466682D94C226113089844C226113089844C22D4BBD772D579EF52DDB72DDDA4E3EAB50E3109498695B66D64271C22E645945A29C7B47AFA31A2AA8BA7E9FBFB1C244293E461300066D51524B5F54CA484B44AF3819D06D9D743DBB2C53CCD82274CFCF2B474DD7DFA6F6AD73786ADA2EDCA8B697675AD835E6365856B3CD5B32996EC9F144534649AB37920D1174989440C09AEA93FE4A7300808F9ABA5928AA5F4B2E0C91B8838DB4EDB7E8BEC32B6689B2B33CAE19D775B2F35D644C226113089844C226113089844C226113089844C226113089845FFD3BFC6113089844C2261160F7DD9DADB55C4058367EC2A3EB8811328509BBEDB2069F102648A0754A125617F1CC84C990C0260F9FE807D8E66829AA2A5FECE9A37C8FECD6971FA005639258A21CD2B9AD6F7240FD5735D7BC8BF8FFB64C96BD5AEDCE4E9B9C5143248C5477416AA72F5CAA43094C9344096A133B500407FC53F988807BFF59232582FB133DA494754D677313FFF0015ACDB95BDEEE56CF0977FCEDFEEB30EA6E7CD5FDBBCBFB4F435BC616C547DC346928A899F6C76D30D21E714405E532F902E9B2AA375A4AA1676ED24D9A843988659A940C062098A6C36CAFA9B35CA2AE8B2D9A278246D91F99A7C1C320F9AF7554F15752BE9DF831BDBBF8F423C8EAA06FF00A59F64D84FC9FD17CCD7050DFDC7CCDD1D34C0188B95172C2C35F231351588400DED22374EF750B038014C400E770711280FB31AEDFC4AA78FF14A7B8C5FF0EA69C1CF72D3BFF85CD1E9F481E1695DEE9252BFE68A43E80FF982AD019CE15A17CCF1E338E66EA4241D3662C18B65DE3E7CF1749AB366CDAA465DCBA74E5731116ED9BA2431CE7398A5214A2222000239F402E21AD1971D82F84803276506B69F25FD33D1DB16CBAEBC7168365B22BB51720CE6B71DF5059AD79D29F62852B98F4A466EA3055F64F81B9CEC4249EAAFDF37031C1922251285CE2E1DB75BE9DB51C41398E478C88DBBFAE038923AE0601FCC542BAE35351218EDF1F3347E63B7F403D753D97CE5F20FDD1CA533087EFBE668C47554E49B68D536BEA716EECB5E55EFC412190FE22CD6CAD482C5FACE2462AAB10F16201CC90AC24021BEFE0565B9B0FE07527DE9A33C8FEBE590D23CFE203AE13DFEB695C3DFA31EC89F99BD3EE47A68A69196CAA1486BB436DB5B6C21F5A38A905ED3BB28F536F005A78C5FF366B02EF9C7D446D1C94500ACA194F80A4428FCC0A202015034F3B6A3DD4B5DEF1CDCBCB8D79B38C63BE7453024618FDA823D9E339E98EEA1694F22DD8FD6971B0C178F3E7E8890D71549318B93DC3B5CA56ACE457214CA1556C8C84ED6E12105C22722A48F13CACA0B63A6AAA8B7FB05325BFF0000B4DAE26BEFD39150E1911B3A7D0127CFE16E74C9DCC3FE215754F2DA08C7B307E677EC63CB52B1BB7F92BEDBE4B6761AEF6973A576325A6EAD680D3FB3A92828FA91257F690AE5CD662ED49465AE46324E19C4A825F9E464FE3655A34F6706AA7BF917245C3B67BA39B259EA1C581CDF68C768E0DCEA5B96820E36C82D27AAF2FB8D6D282DAC8C6483CA46D9E99D76EFB1F0527FC41D0965E8AE4DD6FBEF66A155AECF59595C9D58FF00802BC8AABB06D55B9D9EBC57E984D49C93860DCD170445DC0AAE8E44CE271030100002B779A08E82E9250D373398D2DC6752799AD38D00CEA7034525453BAA295B3C980E39CE36D091FD147B597C9174E74AEC7B36B8F1C5A322EFB58A7BBFC19EDDBB09355AD65C2A065401C4624FE62AF0D0ACDE83731D895F3A7322FDB809CAC52128804F47C3D6DB753B6A388262C91E32236EFEB8049F1C0001FCC5683AE15351218EDEC0E68DDC76FE9E99D4F658ECE790EEE9E4479F87DCDCEF5E3542C2D2559D476BEB0441F43B2B4163175611A4EA71D6893849168E64102FDAC8EE2124FF0013EE5D005FE9FACD91961B2DD466CB50EF6AD23998FDF973AE32D0469D70E19C038CE579757D6D21C56C6390ECE1DFC75FEC7CD7DD6BE9ABE75AF876DFFB7B644555622CEE5397AF2EDA9CCE5184328D20EF1534DAB82B497969B768B950AB88281F90720FC40400BEC403E456E82D7C59052539718C60FC582756BBB01FA2FAEA992AAD324B2001DB69E0479AEE9E25BAD575C78F1D0D7DBC4DB3AE542A3A362A7EC538FC5406B1B151ACDC3976E4E445355C2E704C9E93492228B2CA09534C86398A5185BCC32D45FE782105D2BE62001D495BB46F6C7411BDE70C0C0495C10DFC8677975A4ECFA9C17CCF0C1AA2024DC4725B2B6A7E322ACDA8D43F609B995B4D5AA71EF4E458875635AA92EEDB90C999454A07F41366C364B5B1BF8DD49F7A70CF233A7D1AE71F33CA0AD1F7FAEAA71F718C7B21D5DD7EE07A6AB2FA6F925E90E7DD8357D6FE47341B2D590B707BFC6406EDA401DC531277F32FF9CC0339AB641C8B46E470999E28C241374C11F8A8A32314C262E29B87ADF5F03AA387E732BD8326377CDE9A348F0C8C1FE65ED971A8A790477067283B386DFD47D0E9D94DCA2B24E124974154D74174C8B22B2272A892C928503A6AA4A104C45135086012980440407D86534820E0EEA65688E9CE83A972E691BCEEDB9367525175062DBF0E11828445FD867E59F3688AFC13559422A56DFC8CB3D48AAAE24501AB7FB171218A989477ADD412DCAB19470901CF3B9D800324FA0E9D4E8B054CECA685D33F61D3B9E8144233EABF3136BA225D1555E6CD4C5D4CF2390B742D005AB890BB4CD1CE815EA524CE27FBE9BDBE4957B1A5FB52FA9BA0EDD1542A8DD99D3310A36A36CE138A7F7096A25F7A0794BB66876D8CF2F28D7C481D4A8A15576733DE1B1B3D96F8EB8FAE7F7B294FE5CEA9A9749F3941743A916F35CC3291B32BDBD9DA8E2D23AB2EEAA557FB9DDA161768B1613154660DCEB23264022466E03F71515D35D14AB572B64B6EB83A832247E472F2EE79B6D3521DE1DF6C8C13274D54CA8A7151F2B71AE7A637D7B78FEC467C8791BEB7EABBC582ADE3A74245D8681537E11D31B9769B73B18D7CB810C70559B7939DAC43C0A6E5312AA8335D47F2CAB6315551AB6130A64B13787ED76C85B2DFE72D9DC322366A7EC093E2461B9EA7731A6E15554F2DB7B018C7E677EC63EE7C02C72CFE483B8392092B09DB7CEF5C649CFC0D910D5BB4E84819F54DC5E908476E6B31D654A2ED725152914E655127E63741E44CB20CBEC553416F886648F87ECD75C3ECD50E3CAE1CEC768EE5CEA465A0838D890E6E74C85E5D70ADA5CB6B631A83870DB3D33AFF0062A4378AFAC24F7771BC274D6F05A9D4A3A08EC090B8C8C2232315548984A4586723D595142564E69F362922E281458BF90AFC94F7F000F9010202F16B6D1DD9D6EA2E77FCA1A0E0B8970071A00373D96FD1D519A9054CD81BE71B6012B8350F211DBFD7368B033E02E798226ABAD49A91AB6DCDB6506E94C2A887FB6DFC84ED7EBF1ABA85548A1A35019890491324A2BF48282984E1B0D9AD51B4DF2A1DEF4E19E4674FA024F99E51DB3BAD215F5B56E228631EC87E677FA81E9A958ADDFC9C769F28C5D9AA3D8DCE701017396A9CFAFA6B64D49AAD25AFE76E6C9A7DF171765423ADCF23252354516203B3474A337EC4A29FD8C8C0A8A84C90F0E5A2E8E6CB69A873A10E1ED18ED1C1BD48CB720F6CB483DF4C1F0FB9565282CAB8C07907948D89F1D7F420F82E9E95F250FB5CF8F8D4BD5DB0EA1153DB4F6D997ADD5E8B530908BAF4A5C865ED2D1B2CA19EBA9A958D8269115A3BA7200770A9D712B74CC51588724737879B517E96D703CB69A2D4B9D824370DF204E4E06DA6BD30764DC4C740CAA90032BF4006D9D7CF4D173BDA3AC7CBEE9CA9977FED8E6DD50FF50B02127ADF478203B7B7562A6B015C28EA40AC2E761B0C07E0B45405C385DA487F1A521947ADD32114F8EFC56BE14AB97DC696A25156746B8FCA5DE1968073D00233D0ECB03AAAED0B7DBCB1B7D96E40DC0FA923EF8EAA6A74E6D183DD7AB689B62B6C2722E0EFD5C8FB1C746D92356889C608BE4FE466920C56FD02ADD5298A0AA4651BB82002A828A2274D4353EAE99F4752FA590B4BD8E2090720E3B7EF2363AA988A41344D95B901C33AEEB6566BAC89844C22FFD4BFC6113089844C22AB5F9B1F3F9FF471639CE52E3FFE0ACBD1EC1A229EC8DA528D994FD4749397C8FDC856E220DC9578EB6ECF4DA2A470E08ECAA4543028924BA4F1C99C3667D2B83F81BF168DB73BAF336DE4FC0C1A3A4C752776B3A0C7C4ED7181826AD7BE20F7271A4A3C1A9EAEDC37C31D5DF61E27205113756FBDD5D1B777FB237C6D2BC6D9BC4918FF007D8AF361909E7A8A2637C88C2348F1651B43C4B70002A0CDA2683440850226994A5000ED74743476F8453D0C4C8A11D1A00F53DCF89C92A873D44F532196A1EE7C87A939FF004F20B51E6D2C2A42782BC9A755F8F6D895FB369BD896175AE519E61217BD193134E5C6B2D830E4764526235DC1BC4E463EBD3524CC544D19A60DD392667381CA7393E691E06F7C396CBF53BA3AB8DA2A39486C807C6D3D0E74240FE52707EE24682E7576E903A171F679D5A4FC27D3A1F11AAB50FF004B5DEDCED7DB5E55F6C348B34057B666D5D457B6700B39FCE5A19CDC2CBD1B654E2CCFC88B549E1A318CA1113A808A7F60940DF1280FA0E69FC4A8052D2DB2949E692389EDCF7E5110CE3C4856AE1690CD355CA061AE7B4E3B64BCAB80E72957051E5E562D163A9703F40C85605C26F24616B5579170D44FF36F5CB75DEB759B382804FF00216CF60655C3557FE3EB5CC23FAF793DC311472DF206C98C025C3CDAD25BF700FA2D0BA39CCA190B77C01E84807ECA2778B7A87B2B47738EBDA5693F1DF2F71A42CC9C5893D81186B4FAD852736E0EBBDB73C70D21DC24E5CBC21134083F6A808B66C920412A691085B45E2DB69ADB84935657864D9C729C7C207E5DFD7CC93D545D1D4D5C34ED6434E4B37CEBAF8ADD3B57AE7BFF00716B6BC6ADBA78C3B1C9562F95996AD4B375CB715BEB4649AA88A2FDB01A0CA64A4229D0A6E9AAA4311541CA24513390E529834E96D563A4A8654C37268918E047CBD3A6FB1D8F82CD2D557CD1BA27D31E570C755A16ECD37FE99F09D35AE364D42E1AFE6DBEE34292E22ECAD8F1B2C96B69AB735BA26B91150C2E908891B1AE765F137C054218E4F429183E5BD09A1ACE311514EF648CF65CD91A8E70DE5FA81AFF009AC0F13C36631C80B4F3E35ED9CFEAA77F8A68F4BD7BC9BCF75DA0A4D02BAA6A7A55808F59813E137296B8165659DB0AC727B051CCF4CCAAEE8E3EFD00ABF12FA29400293789A69EE93C93E7DA7B570C760D3803D00C29BA36323A58DB1FCBC80F9E4649F5589F90BA252B60717F45C6DE916431D05ABAD975877CED303A9116DA643BBB0D56458A81E9745D8CD3149010484A75D15D4407E4454E4365B0CF34177A77419E6748D691DDAE38703E873E18CF45E2BD8C928E40FD8349F51A8513F0167B254FC00AD2157FBC8F642BF66AC48AED8C20742B76EE8F97AC5A3E6050113B777012CE1B2A1FEBEB5CC23FA01CB3BE38E5E39E59760E0479B6205BF700FA28C0E736C596EF823D0BF07ECA4F3C65D229D47E1DE7D469ADDA111B3D259DDEC6F5B7D275E52E368133FB2389072987C9CBB60F8463CBF3113A0DD9A487E8A91402B9C4734D35E6733672D7F28F068D063CC6BE2493D548DB98C65147C9D5B93E677FEDE8B78756D1A99B1F9B378D47603666E2A8FF00595BDE48AAFBEA04A2978386753B17604955BDA6D9E56E5A3507EDD51FD24BB721FF00E334AD934D4F70865809F6A246E31D727047A8383E6B3D5319253BD927CBCA7FD7D375033A23FF00623DEFFF00DD5C7FFDED372EF5BFFCD60F26FF00F9728383FF00647F99FD42FC7B12D16482F0AFC890D0C670943DD1F6AC81B71D1038A4BC3B0AF5CAD6C18BAF8FF8822AD92B8C570137EBEC6C50FF006219F6D31C6FE30AA7BFE760796F992D69FB123D52ADCE6D9E20363CA0F9609FD405B5F4AF60F77EA9D4BAEF5DEB6F197388D1AA952868CAE2B1C6B70369265F889B83CE1944610C574EEC2E5751F38702639DCB870754E631CE630EAD65A6C95555254545C5BED9CE24E7974F0DFA6C074030B2C3575D144D8E3A63C8069BFEF5DD61BD41BEBBD7AA34A5BF4B5DBC6A5A99C7D91362E2327D06F6D7B25569F8A7A8BE8BB0C41168647E0F9A28919330028982CD96551504C92AA10D96DB4364B65632B21B8B0B9B9C8F8407023041D76FEB83B80BC54CF5D530985F4C707AEBA1EEA63F83586CA87E3FD0903B7A0A6EB3B02B7484AAF3307636E2D66E3DA562524A02BA49040C75144D556B11ACD40F98FD8243809C00C220153BDBA9DF769DF48E6BA073F9811B1C804E3D4952F42241491B6504481B8C1F0D07D97F77B0B9B627ACB9F6F5A4E4E58D5E7761463E46B7632A00E820AD30120DE5A11F2ED7D80B98F59CB6FC6789944AA1D9AEA8266229F03971DA6E0EB5D7B2B1A39837208EED2307D7A8F1017DABA715503A12704EC7B11B7EFB288EA8F457936E0EAB30A36F8E6C47A134F6B78D6D18CF67EBF78E1CCA33A4C324466DDCBA9D8169265FE36162D129533CD41C7BC14D2F6E571F62A85AA5A0E1CBDC866A2A8F77AB90E791DB731F038D49FE5711D874514CA8B950B43278FDA44DEA3B7A7F5016CDEDFEB9A7F44F8ADD8BB5F43BD926909629AA5D02E518B1518EB051856B75706C3569F6CC5770DDB99E3570D9B981250E83A61244314C29ABEB35ACD6A968389A3A5AE00BDA1CE69DC3BE13870CFA9F023C164ADAB6545B1D2C1F29201EE351907F7B15203C0946A66BFE36E7388A2A4D02265354D3EDF20F5AFC04D2D66B942B3B2DA24DDAA5F6751D389D925CBF13889904C8547F4548A5082BE4D34F77A87CD9E612B9A3C034E1A3E83FAF55BF42C647491866C5A0FA9D4FDD7DDDD345A66C2E41E8984BDB566BC2B0D4D77B5B574F00A1FC35829F5E90B2D7275AAA3E8C8BA8A998C4552FC443EC2819237B21CC537CB2CD34175A77C04F3995ADF30E2011EA0AFB5AC64949235FB7213EA0641FAAAF7D9ECF63AFF821D671F047709B1B86F494AC5ACE80897FF1C26C1D89662917317F656EB586B71E4307B0037C80A3EC04406F71451C9C6D239FBB200E6F9F2B07E84A81739CDB2343762FC1F2C93FA80AC89CAF47A66B8E6FD214FD7EDD9A3528DD67517318B31FA4519552661DACE4958145500049CBCB24AC92EFDC2C5FD2CBB939FF00F9673EB9CD3545C26967CFB5323B39E983803D00C0F00AC34CC6474EC647F2068FEF9F5DD687F27147A75E38737FA5726ECCE955A9AE6F15B7AE7EA22F1571AC1CAF2B8E239CA80266CF241D9863CDF0103ACDDEAA87ECAA9807778726961BD4061CE5CFE53E2D3BE7CB7F319E8B05C98C7D149CFD064798DBFB7AAE05A071EBFEC9F135CBF51AB5A1BD3B63D10F277ED7B36FC5C122549C636CBDC7290D34BB345CBF631D22DE43E60E9BA4A2CD9D208A80450853A679C9EECDB4F1454CB2B79E9DF86B80DF05AD391D0918D8EE09F31A31D21ABB5C4C69C48DD41F1C95F833EF8EFEE4E8B4233B7393A42FB4182FA6227B746BFF00C6F6E589C3F1519A99750C79AA03F75222001F52A35F2A82A014E54D4F6537D363B15D1DCD66AA0C9DDA88DDDFB0CE1DA7FD4BE0AEAEA518AC8B9A31BB87EC8FD14D469CDBFAFF007CEB7AB6D5D5F3A8582996C600F235E265FA9C36553399BBE899466222A474C443D48EDDD373FF00924B2660FD87A11A855D24F4350EA5A96F2CCD3AFF00423B83B82A6619639E312C672C2B6766B2C89844C22FFFD5BFC6113089845CADDC3D128F26721745F4698AD557FA9B545B2CD5B68F89F63191BAFF001E78EA1C4BD282891859CBDCDFB06AAFA1F9026A888008FA0193B3501BA5D69EDFAF2CB2B41C6E1B9CB88F10D04AD4AEA9F74A392A7AB1848F3E9F7C2F21DB5DAAC77AB4D96ED719A90B25BAE33F316AB4D8A5DC1DE4ACF58EC322E65A726A4DDA822A3A90949376AAEB2861F91D450C23FB1CFD511451C113618406C4C686B40D8003000F00345C85EF748E2F79CBDC4927B93B958FE645E53089845E861FD2A5A25E6BEE0CD89BA6558A8D5DF416EE9A7302E4E8948592A36AE8D6B4B8D7492DEC545934AF26B2203EFD14A6487D7EC444783FF136B44F7B8E8DA72208467C1CF3CC7FEDE42BA1F0A4063A074E7791E71E4DD3F5CAB3DE7385685816D2D6D55DC3AE6EBAB6EEC8CFEA77DADCAD6271BA46226E4ACA51AA8DC5DB15CE9AA0D64D82862AED56F889907099140FD94333D3544B4950CA984E2563811E9DFC0EC7C1789636CD1989FF0023860A817D677DECCF144793D337DD3168E9AE5B427241FEB8D89AFD27E791ABC7CA3A70FDC37322D99CE25060F1CA875DC43490364D37EA2EA347AB226F92976A982D1C4F8AB8266D35CF9407B1D8C388D3C33D838674C65A0ED071BEB2D7986461929B3A11D3FB791EBB15BBEA5DF5DA3D4BB4F5EC1732F294EEBFD5B196C857FB3AFDB9DB3966C652A8570624D42A326AC7B48A8539D828650811C696953AE448C44CA90284574E5B1DA2D94D23EE354D92A4B086363DC3BA1C67275EFCADC78E319995D59532B5B4D116C59D4BBB7EFB64A955DFFA52A5D17A72FF00A5AF00B16BB7D83522D778D40867B0F22838424A0A7E3CAAFB44D215F9C64DDEA05380A67550294E06209806B343592DBEAE3AC87FE231D9F023620F811907CD49CF0B2A21742FF95C3FD0FA1D541FEA0DEBD9FE31E2CDA0B7BF3DDC77EE8CADBE7E8EAFDAFAC527920A47C1B976ABD24719E22C64DA9E34CA2AA1DB46CB1A3645809944C8AAED08DCA9DCAAE8AD1C46EF7EA29D9056B80E763F4C9DB3D35EE5B907B039CC3453D65B47B09E32F806CE1DBF7D0E08F2C2C27A8F7AF6DF914D5D76A769DE6EBC69AE7CAB40CBDE2F539756F2C8D9B67A34B66A58985420D02433634B3D7AF59242DE1A2519055D4811BFDCE9147D94D9ADB4566B054B25ABA864D5EE706B43718673685C75D37D5CEC60670095E2A67ADB846E6431B99001939DCE35C6DF619D548878FBD2A85D3C6450747EE1A9CFC2B1B855F6CD5ED35D9D8C795EB1328F9FD937BFA1EA2D25D991DC6BF2367493D60E0E88FC4DF52E4010F888C05F6B0C3C47256D239AE2C731CD20E41218DEDB8E84798521410F3DB5B0CC08043810743A93FB0B87F56DDBB3BC51A92BA66F3A52D1D33CB894F4948EBABFEBB45FAD2157612CF1CBF7298A2D18CD120FF9074A99C3A87922B54939155751A3D592389D49AA986D1C4F8AB8666D35CB9407B5F8C3881E6338E8E19D319683B6944FACB5E617B0C94D9D08E9FAFD0F5D8AFE4748F5D759F74EAFBE6BAD35A0AD5CF3A0DAD5E62C1BA3756DB52460913526B91AF27E661424C229BB3651EFDB47826E99C6FF002AFDF2670494FA19A8E3E7EADF6AB5D96A5951573B6A2BB9808E3660FC44E01C67719D09E5037D4E31E6A2AEAAB627470C6638319739DA683523FD324F9657CFCED51B4CD7831DB517075D9B9C95B3C8DDDE57E2A162DECACA4C366DB22BEC9C2B1D1EC1170EDE11BB887740714C86F8820711FD147D7DB84B1338D2273DCD6B5A1B9248007C04EA4F98FAA53B1C6CAE0D04939C63CC2908D57CBB15D0FE3075373D6CF8F96A93F96D3F59236712312BB59FA45C6244642BD387887FF82EC158D904D3170D4C66E674CD45501390AB09820AAAE4EA0E2496BE9887344A763A39A7423233B8D8EB8383D16FC54C2A2DACA79320960F307A2E29D55D67D93E3C60A3F9FF00A8F9B6F5B8E814948F07AE771EB433D97417AB478111848709234639899660C9914A9B449E2D1528C5A15345640E052FC662AAD768BF3CD75B6A190CEFD5F1BF4F88EE719C824EF8E604EA0AD38AAAAE81BEC2A6373E36ECE1DBF7DF042E94E7CEC4ED7EA9DFF4C91A77343AD3BCA70C6954AFB39B49278CA7AD283A8F12B1770526F6363945A5232413219BB38A6AE9B089942BD76529933231D5F69B3DB285ED9AA04D7338E50CD9BAF5193A11B97107B0EFB1055D6554ED2C8F92946E5DB9F2FF002CF89ED30195452CB907B8AB9D3D64D013C9723DC8B51DB915251D328B72348451FDBEBEC88E825AA50D2B3E4523ABD32F4EB22E50746000545A8B531D22B832C9CAD9A4B6C75CD375673D290475C34F47103523A11E39D7183A95ADA97407DD4E251AF98EDAEDFB1D546BA3E5B7A3236AE5A3CDF046E05FA35BA410A78A6D0B6B469CFA74A416C1329C512B2E2D0566B3BF4A847A46540E41F891FF00A10532C2785ADEE93DB32BA2FC3F7CE5BCC076CE797D7FEDE8A3BF15A80DE4303FDE36EB8CFD33E9F75B2B843C7CCE43F186E8D55D3319FC3CBF504C4858A7E9D1EA33FC8D7AC85933254DDA4DDBFE4C431B7C4CCB42CBA6913ED49A993688AC4FB115522EBDEEFAC7DDE1AAB71CB298001C7F3EBF178F291F0F8EA46E0AC94340E146F8AA74329C91DBB7AF5FA2E75D43B6FB3FC5AB377A2771E86B6744F3CC44AC82DAC7686B141E3A5A0E2641F387CB3232ADD8CB20D9A3B72AAAB96225CCC5DB372AAC08BA70D010F8C855D2DA3895C2B6927653D79039D8FEA40F31E5CCDC8231900E5608A5ACB60F6134664A707E123F7F638FA2C73A5BA13B57C896B4B8EBDD1DCDD7BD31A1A1E0656D9B1EDF796D2C8D82FD1F5266B5810A6C1268432277EBC9BA6889490F0A94A3E7CEC1022ABA0D0CB90F92DD4167B05432A2B6A193571706B1ADC61A5DA731D74C7F33B000CE0138C79A9A8ACB84663863732003249DCE35C0FEC33F45D5DC43CB88EE9F15513CEDB8EBF62A5A96D5B63014B3704F22EC558964F654E4DD52D0DA2655360EFE71F24DDBBA22671488ED0032426FA95308C5DE6E468F898D7D239AF0CE4D8E411C803864677191E1E616CD1537B6B60A798119CEE351AE85680D45D29D99E37211B73DF467395DB78EA7A71DDC66B1DBDAC0B212E04ADA6B0A91D0E123FC73D60F629B2471064CE44F17251C87FD8F8A88268913DEAAB7DA3885FEFF006FA864354FD5F1BF035EA719073DC8E604EBA1CE70C551576E1EEF511B9F10D9CDEDFBEF823F4D5FD63B9FB83C896A8BB426B3E70BAE99E72A4443DBD5A5C5B9BCD85A76CB8AA1129688AD45B44E0DB389C58B2281576F191AD9E21F98824AB978514D2286CDAE8ECD60AA63EA6A1935C1E435BCB8E56736849D74D37248D09006EB1554D5B7089CD8E37329DA3273BBB1D3FC867CD6FF00AAD6FBB28BE3978EEC3CC084BC5DC355BB989EDA7A465EAE8B2B46C0AE92F133251EC0C8CD9194E0326C920A03989682DDDCB3292051053ED4114D5D1964B24FC41571DCB0619400C903B469E5009D34F271C8691AE84E33B1B5ACB7C2EA6C87B757371A919F1FD3AE5639B43C9BEFBDE7AAED1A2B5F7066E26FB7B645527B5FD85ACFC44E4956EB44B2C4B983987E93152AAC1DC81516CED612964C23DAB51003B832A990E43E4A6E1CA1A2A96D6CF5D0FBA46E0E182013839033CC71E9927A63A7996E53CD1182381FED5C0839D8674EDFAE1493F8E8E69B5F2972D53B57DEDEB4737573233371B4328F588E98C04AD99545C1AB8DDF22A2ADE40F0CD504925D748C6414740A8A463A5F039ABD7FB8C573B9BEA60044380D19DC81D71D33D06F8C675DA46DF4CEA5A6113FE7DCF867A2EE7C855BA9844C22FFD6BFC6113089845117E7869F3B78F12BD9B0F5D45570FD85229F70728A206130C15036AD0AF56758E04298DF4B3ADD75DAE71F5E80A90888807B10B4F04CAC878A291F27CA5EE6FAB98E68FB901445F98E7DA260DDF941F40E04FD82F2C8CFD2CB95A611308B7D730739EC9EB6DFBAB79D352459A52F7B52D4CAB9182645C2AC61588828F2C16B9B16A92CBB7AE53EBED5D4A48AC5298C93268A980A610001D1B95C29ED7432DC2A8E2089B93DC9E8D1E2E3803C485B14B4D2D5D4329A11991E71E5DC9F00353E017AE4F3A68BA5732688D49CFBAED13A54DD4142AE5121165D26C8BE944E0A3916AF27E581A248B75272C72255A41FAA42941678E553FAF66CFCB570AD9AE35B2D7D47FC695E5C7C32761E00683C005D729A0652C0CA78FE463401E9D7CCEE56E8CD359D3089844C226113089844C22894E8689F2CD43DC578BDF394EEA4DC5A9ACAAB056B5AAEC6D21A15FD29B47B141A1DA93F9B93AB2AE9776721965DC273EA03A58E63036400134C2D340FE179E91905C1B2C354DCE5E3243B27C03BCB1CBA773A951538BA32673E9CB1F11D9A7A7E9FAAE71B4737F958EE0418D17A8ADDAF39D747B976C9D5CAA7427116FA5ECAD5A3C49D24D458D7E66DC79655155B9144D0909B41824A8116322B2A910A12115C3862CC4CD6D649515A07C2E767034EE4371E61A4F4C8056BBA9EE95BF05496C70F503AFD33F7385373AAB5853B4BEB9A6EABD7F1BFC4D3A8B04CE020D998E0AAFF008CD4A2655E3E70044C5DC9C9BB51472ED710032EE563A83FB30E536AAA66ACA87D54E732BDD93FE5E03603A0533146C863114630C68C05B03302C89844C226113089844C226113089844C226113089844C226113089845FFD7BFC61130898458E5C6A35AD8151B550AE70ED2C34FBBD7272A36B807E073319CAD59231D434EC3BD2A674D4334938B7AAA2A014C53090E3E8407F619229648256CF092D958E0E691B820E41F42BCBD8D9186378CB1C0823B83A10BCAA3CA4F8D6DAFE363A2E7F5D59636666B4DD9A464A6343EDA55A1D487BD52CCB7DCDA31F49A2D5BB06FB06A4DDC26D2723FE29289B8295CA498B274D1657F4CF0D710D2F10D036A232055B401233AB5DDC0DF95DBB4F6D0EA081CA6EB6D96DB526370261272C77423FB8EA3D7623319D962518B38D6DAD7606E2BDD5F586ACA7D82FF00B0AEB2A8C25569F568D712D3B3726B94E706EC993521D431514123AAB286F8A482099D554C44C873970D454414903AA6A5ED8E060CB9CE38007EFEA7459228A49A41144D2E91C7000DCAF48CF08FE1C20BC6EEBA79B3B6BFF1167EBBDA702830B9CBC71D37D0FAAAA0E5563263AAAA522531D2925CF22C91713B2897C517CF1BA48A1F26CD535DCFE7CE31E2D7F10540A6A5CB6D513B2D0777BB6E770E9A68D1D0124EA481D26C9666DB63F6B2E0D63C6BD9A3F947F53D4F80C99E7CA4A9E4C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C22FFD0BFC6113089844C22D45BC742698E95D772FA9B7D6B5A96D6D773864967F56B8452324C4AF5B915233968D587E0F616723C1738B67EC956EF5A98E2292A411F79B5455D576EA81554323A2A86ECE69C1F23D083D41C83D42C33D3C3531986A1A1F19E87F7A1F11AAAE16DCFE93FE25B858DDCD6A9DD1BDB4E44BC54550A828E2B5B120E300543185BC3BDB04731B391A95310297F3641FAA1EBD8A86FF59D0697F89F788A30CAA86095C3F36AC27CF048FA00AB73709D0BDDCD13E460EDA11F7D7EA4A986E09F16DC83E3AAAE31DA1A805777E948E458DC3755D8CDAC3B52D852953170DD59E16ADDBD6E09C2C914E3150E8308E31C843A8928B14551A9DF3896EB7F979AB9F8801CB636E8C6FA753FFD9C49F1034533416BA3B73714EDFF007846AE3AB8FAF41E030148A6402914C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226117FFD1BFC6113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C226113089844C22611308BFFFD9, N'Eagle360', NULL, NULL, 1, 0x89504E470D0A1A0A0000000D49484452000000960000009608060000003C0171E200000006624B474400FF00FF00FFA0BDA793000014E84944415478DAED9D0B981C5595802B090F3184C7B2B088B88B04F5D315591071551023E2BA3E76975D238288281A41F0115D6161971874619335AE0A621833DD35AF84641226EFC9E44132CF6498E9C74CF7744F4F7755CDE41D4C48425E302199DE73CEADEEAEEEA9EEAEEAC7BCFA9CEFBBDF7CD3D35D75BBEE3FE79C7BCEB9F74A120B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0BCB18952AF5AFA5DADD178CF87DCB95EB46E5BE2C23242F042E949CEA1AC919F9D088DD53561F9764ED497EF8135D9C919B00AEC330D85F29EA7DCA5CE7C27DAA25A7D228CD8D4EE6075F0AE250E7C2A00F4AB2F285A25C3F1A9D049A4A867B9C902AD5F7F3032F1599BBED1C18F85769E0E5FEBF2FBCF9D3FE17AE1D05707FC80FBBD464D1C07B61F08F417B4DAAEC7B77E14CADF65D82CAA9BAD80496AAC8EA4F090287BAA52010C8EAF570BD933A589FE3075CAA521B9D0200F408B305B3B77C9D7587DAAD43B59C1F6EC93BF2CA5D3A0C27F372B41DEA4FF4EB0C52DC8A850560E8D0A1782537A8765D059F3DAE5FE38FFC40C7AB5444A64B8BB4BF2A9CD6D2FE4987229A5308C2A93AE3DACAA9BCA770130CF88EF85D5946489E8B9C0F8338075A843444B9F6E9BC9C6FFCAC53F5EB7074D874D8DF079F39233EAB55E41706C17EF4DF0ED75C48DFCDA13C45DF956514349743DBA003310003F2634ADBE41626F86A5C6B39B4CFDBD0560EFD736F4BCEF0B5B969CCD0347D863AA0DF7F036BAA311136D066C2C0ECD307F87580E43FA5AA0353EDCF1035559F216EB476DFFE2BE1FD6FEAF7ADB5DD6FFC27105980A3FA7DF711E02C6348CA77FF050C4C4DC257C2415266D932910EE5E7F1CF5744FED682B69A93B85FE433F64C9EF27DF8DC81849654574A657D7FC9033966B597FAAF305007E303E6545BC80FB22238B04EF52D1DCCDF66D770EA2E710F2568DD745212BCCBD0BFC3A47159C68188E9FF66C3E09D82F6B0459F69B9FE993F133C69DFA77CD6A01DAD05579DDAA37A5FA2F1890227A9C799608581537D1ADA50C2DC285552D9BE77663187330CEF9F9101ACE7F5F7BD2955F65E965913C23D8D665AC0B890A2F52CE3549CDA7D71F3269A572A1B7857162063266E4106CDD61FF78DB26B4FA3E93B43517A9689E0D86BB7C080EE4F0CAEB29712C6E9B5D1023D2EA59A5F2F72A3E15A7767F0F7AE37CC56B11DE1E4F484830BF2774E356418E4FD694B941D914F649C1DCAEA2FF4BF9F486B5AF173C6599F53DD0DE189BFE38198A82109A7EA360CF62ED3148C0807EC4DEB9827728B2F9BDE07176D204889FB44A44591AB790026B294A917C340B71B065DA140E770787EA7FF7D73D2EB35918BE0B5B3BAA91C1ECC144153C570FD8054A55CC10FBE14046771B13A2CD1B652B9B27938E18DA4B08343BD353E1B4C4D1FE1359CDA36C37577163429CD321E668B91CB61E0C306087E97F4F7DAC079F1529845DA470C9A6CB6FEFEF52633D0DF1BAE7780F37DA52AC2C13EAC83304451FB24271E4209C2CFFA8EC171AFD15FFB41CA7BFFCD10333B2555289FE2075CCA224CDBA00EC4D1A485150EF5A161E91DA7DA2B00329838FC4C2C912C6ABABECE0F9645A2655A8988F80A83469BAEBFBE897E172BA9CF907F96ECE8AF3524937FC30F74BC082ED572280F88348AD2A0CFBA0E9BB430850064ED97F0F3CB3043BBC4BACF15CF1146E9B389D7156AC20C5EAF07457F9DD06A86EA539C6D5A4DD390A3DFFF71F8FC23F4BDB05407978C255A3BCD481DEA4B949A72A8DF80F77E8061C83BE644D1F2FF8B17BFE5D6CEEA71ABD9594B524418424FE540BA069D7701969366806275F3178556D397E70B073FD6BF63F40F9049A8F21522F5E8F8276AE4ED3511C95F42FEA0DCFF0E06C556AC09A2D9588D99DA70D5B2D0100F93D6C00D3E1C6A1FFC3C6D6150205FA855669CFECBDA9D7107DCA13DA8871DBE4FBF53490DD477D1B5604629FE362B717D58A89AD68F830A51A7F6AB94729E0C4D3B243496B6544F2F3D017DFB9E2868343467FF3F70E9725141C4357D6026D05CC86A39342DC3C09D02B3FA4CDA548C5359160F9CA2B9726837E8A0DDA0574B28F17BC6EE23AB4DA4D186993B8AE0CF4A49EDA4B6411DA2DF53FF3944312E42094F40F3A519D01084043E6A6282FF265133A57C4B2FE83B4E6650405BA3FB5BDF89572B60523A5528AD93142C35B6E3E43BA139E37DB3C63364EA1DFACC6D2865804F8326FA9989231F2B39EED4B55823993A5AB8A1FC480F4574A75D4728625A474C806A17D701D3C832A166971FA462BFF8722D43D19DB1361E1762C4FC218CBA933FA73C066D07553E6095422CAD939A671491F95480D71665571B963119140D240DBE43F953125CB8A62F069DACDE2B4A65348F0EDD8B7ACCEA852C50F59309652921C15081587A75C610DC9C9BD05A5091207CADC37AFC6A1E691E8A3F51CCEC6C525C09FDB104504314ADB7BB048D650209567426FCA12180E56B86BF09CD540E793F0ABA42C8007380C2B15F6D80EAB38690C7896139479652F5BDC08F4A94101F8D4FF96325C8A8C968579AC83F0344FF9D1424C5B8186EDE263E7B907DA9B164926251EED1142A5D8E578D26E25262F6D746008985111D04502C7523524C22A899A98E7E2425DB4AA4D271A621CA2D6BB715171C2C4B86E83DFA4E66C14C8A4DD16CEF88AE9166EAE03C46660EFD25513D7A861C7D7A3F68AD98F9732A9F4C7B6FCC5966BB7741CC3ADC0373AA99D643969488DD5EFE28522E396EAC91F077DE434964A7F25FF0B35ECFFFBD9532FD7F1B34512BEDBF9EBA60B45CFD929E63DC43D50C22601A15B94B80871658405C8CD24EB1256006BF8CFE5150B30190A8F99217A88A80AA30BBCDD09EA5F26634BDF90087F793D5FFA1504A6A256CC98B58CFF7840EC11A11D9865534667B2F60B41A811010C0145F2B235012457B76DA1095CA18818E851A100EE1C447C4A6B594373C22523DF11DFCE625A0861CA2437BCE04642BED0D0AA062741FF79090957FA1EF9F6E6649B9530883D05EF29016422DCA0B6033889875ED343CF0A3621798583314D415B6E1C0DE23C0A5344E33F583C20BCA2251764CAB9F97EB1A364C5B7AC70613CDB979B4BD10ED78F233A024B5F16FDF65702C399F50C2226AAAF2840836EBA00A014A1EDF23420BB80F16A465C80CC1D69089EAD15814BE9C60C1283DFA56B2F64DD006F7D3CECAB8E8825232B46FE9599A352264424BA596EB74E8653FB329B92CCA651E26132DA2FF9D624FAD9CBFDF69BA0E9A6A16BB3346307922EA5DA36BABA1349AA6579C91830309D504A8F516EFBCD4D23D28924E9BAEB90C70ADA372148CAC631A27B1D83524367B03C8B04F8913281291762A67D6CB6AACCCDE30118EE0A28F248A0DBDBA4632FBAEFB297E86F5F6BCA4ACC0D3680426D60A39FB2148609627EABBA242D3D14A9EA3D262D00AA244262255C3BE0FB4973B4D129E4ED44F01D085F6718CDF1567A42CE3585083095315D59DF8F964CE2A609F2D2C83C1526259FD839879925669C9B8C908CB38143457585D50E8D8105E0F8B01C9078268BB307D508BA595D3C28A32A855472D85CBC30A5D1E1CFB4E2CA33A83FCA8A10A7340841C6006870E3716DAE51D70A4B2E02E9AD2CB001A363491A4D1C0D7C9C7F451D52B6E3E8201586D95F0ADE2A921170FEED8002B5D1B100E386C719DCB76DDA4B970954CFF3C71A297329F1C679CD1E59236C1E83F8625C44ECF2732F49BC11AE360A5AC6E81823DBB070FE0CCB442ADA3CA06D4580E58B563571B8A0AD67A8B8B3E18AC710556A29DA45A293B8061DD951CF90598C0EF91CF650FA8961CFAC8608D43B08C803D6E3964E1506F96AAC21FB7F45EB9FF1A8A85E5DE37066B2C8235C9DE62D0B68246AF4525A9D58CC1DB86F30D19ACB10ED6135BFD0DAB3D9E7D0F6D0CB65D5913710F5B3C31BC1D24B3958F8852E717B2C134C9A91CBAA9B6AFE9574DFE8E36BFFBF8958B23AF3258E308ACEEA02B1A6B5BBA3C87BFBC36D83249A6F44FBA413F43618A9CA002073F795FF961ED824AB5F7A9265FBB3BE03A6DEC1B83358EC18AB5269FFB8D9B57845AD3E4E162B552F7DAEA030648C5861EA6404D066D387B8BBFCD1B709D35EB13833501C08AB505ADDDBE29B2722083DF636DCB6CAA218B2FC91FD62EAF563A37777B5FCBD417066B2C0A6E03940358D83675798F4CAB4ADA9EDBD85EB774FC2E56A0A6816AC6AADE76D05243D9FA9106ACAEA29630B3984839551A3CAE97FD0EE60A16B6F61EF79B5708E7DEAC966B47C65004AEC6319F140CDDDF106CB272FF0C6045F58D4416F3764545D74E609E842F33946DE665152C6C9D3DEEC1CBAB231ED36B99EDEB80224E78ED35FBCC7DF501CB5065012B9A74A20525C52DD679B158718E711F28D56D27C068072C6CDBFDEE53EFA830DDFAE89869411D026772DF4FD6855AECDCD7065889A02EEEEE8C8B275872D550B45860632E916BBB60615BE9F2EC9A246B268961A8754F820A3751C3535C93DF774955B8CB1B749F29325886AA5928AFE6655E3644ACD6999D26225D34B0B03DB4B1A7CD546B19AB3769CFD094A027C4C7D6793D7B73B9678E60C59A9B368463C91A13BA44DF9F33AF552DB98285EDD2EA88CFA432E2C706E887F956F7D4071B73BD5F9E60892D3063DB5AB2A499ED253633B3DA4C5335B33605721EE8F2F6AEB0C90421A0F7F1D3A9F73AAF42D9E94A89A68F305851BDBFF3394461E64FD9D81D191CEDC0D7EA7B1BE4F6AE06B3BF3FD8D0D39CEB4063BBF6A5C87093880B64C572AEA4D79FDCEADF91CFBDCCC0BAA82AB2FDE9C66E0FF4A3DD642575A6E6C8A9A071629A3F38083CF908B6B46D1AE4DBE635FB02B141D9E0F5741703AC9A8E2E75B839C44306709DA2515BA93BAD0441ED8205E6381EB2D8D2ED39F9999521EF24DC3DD01A5CD5ECD4E3197EB84742D68A00F5F8830D81E6AE60F220160B2C6C17572BA9BE567DAA89BC7B7D30EFFB64032BD6D679BD072FAF517C16B7F3AE2C5DA844454067B68734B54209ACF378F7980D4A31C17A7493BF355B2D5593CFF3FA4881850DFEB1A2F7D707ADADA0363BC0B34422E98BB33D9CE92F451A3B03EE53E906A5986035432544A601BCB45AF5E67B0FBB60C5DA6FDB7C21A8EB7A23EBA91CB2F285D2828AF632C80CD5CD2BC24DA9A66F24C1227358A9A49DA5DEB536F71043BE6061ABEEE8DA3F39DB2624B88004570695848823D8326E37F4B197FB367707B33BC5C5062B5328A098F7B00216B6259DDEBD934DB2002970D5948A097C36D383B8E6A5F08EAEA0B59956A983A5C7DDF641E47F30B3052885E435AE204E1B9F52FA76F8DD27AC3E54064BB4C75EF1AB59C0BAA91434D69A740F60A9CBA3D879A00C56A2DDB0BCAF272D58666706951258761F268395688F6CF47733580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C56031580C1683C5601502ACE94B23AD77ADEDDD765B5D6FE38C95BD8D0FC0FEA578A2E97A8F77DF6880E509B8DEAE78D51B845D61B6CF5C1F6CC47EDDB12AB40DF787871DA0FB18AC710256A636A542D9F37E00EF99669F2BDB1125F98085FB937E030E6CC2330B6D9E51CD608D47B0924E3F9595D73E55D7DBF44AB7FB50A1C05AB8BDDB77356C1E472746E4D82F066B9C83653C550BCD539BDF752C57B0967478C3975547DC85E80F833571C01266D2A9EC7DA6C5DF69072C38EE6410FDA57C34148335C1C18A9D4BF391DA701302930DACD52EF72E3C9DBED07D60B046192C7090FBAF5BDAD77A5B5D5FD3BDF5C1261CEC589B591FDC72C7CADE869B9687365C5AA5B44C726A7BED0C2E9E3F38AD2AFD49101F5CD6D78227D4DBB8E6E9C9B2EABB6A89B2EEC6E5A1D59F5BDDBBFAEBEB02EBBE59DFD3106B9F5F1DDAF0A1A591FADB57F5D63258A30816B68E1E77747187F7C87F6CF5871EDDDC1300C07CD8E05C66FF8F36F7049F6EF60FD4B9BCA771CABFB9DBDD3BA7D1B7E97D4B236B60A6B6AB08DA2EE964B2F364B5EDCED5A1650BB7773574065CA1569FFB8CA3DD7BF4DF5FE9E97B78534F30D6D76F6F08F8B0AFF35B7C5ABDC773BA2B87E7C060E5091698A8A1F9CDFEF0AD7521D7D44A3A31EC8C958106904E5F51ADF4DDBD3EE0ADEDF41EF204DC879EDCE65F31B54AD95A60A00E7FB8365CBBD2ED69ECEC719D9DDFEC53E1485FEF0515EA7EEBB355EDE4554BC23DF7425F97757A5F67B08A08D65A8F77F7AD75BDAD5937CCB76AEAAA23E11F6EEEE9EE08B8DFFA4DABAFEEDC8AECE7FA643375601E9735FA3D5DABDC9EA33356865C532AB4C385E8EB45550A6AB80E3818FD34835520B0567A3C031F58166EC1812B86C98280E99FBFB521E069EF711FBCE5E5704D2EF701DF29FC871DDDABEBDCDE231FAEEDF35AD5A2B6FB2AAB07EEDB106C33038CC1B20816C4944EDDBAB2AF195E1F2CB22F44ED7C59D9B3A0C5A73CB5CDB75CB21129BFA052DBBEC9EBE9FBC7D5416FB1E01F7EAA6B64CF9C467F80C1B209D6F3DBBB83E7C8CADE9118A4D476C3F2B0E7D916DF163A643CBB896A7EBEAD3B08F9BE3DA3D1D76B9784BD4D3ED729062B0B58381BFACADA600B1D89360A0315D75E904FFCE29A507D2693768E53097C696D6FBBA5B3038BD8D03C56B477F5335819C0BA6649389783B78FC329EE1BE0E73C38E9EAA79243B95F92B599F0FBB7E1F59FD121DC4E6D29FC74D981609243397EAEACA43DA3E6C24A2564FF40704DA5EFEFD09E837EFE1CCE159A259AF6A8E8A7FA321D0567F719C8CAA9AB9784BB18ACFCFE4B419B69DBE1E71CC911F9843477DB3996EFFD42E04280EE4EF87C9954A0D9659676421CF8A97D55AA895C64B99F8E5D57017C0F02644DA9C705E7D418AC8CED201D49B768E0BD05E9476DE03CD26E4ED55770A01C5063E5D01E91CAD48BF3EE6745643A5CF3C5BC26310C96E9418E1A998AB27DEF2C4A7FA2D149A4510A13898F90199E1B9D5CF07E8A83D95FCCC9FF64B092DA6BA0511EB065EAF291AA0353C1DF5990E3C4E1181DEEFD5CE4FCA2F713CDBF5D2DCB60E94EAE43F9D3A89D65EC5066401F76DB18B83552D9C0BB46B48F65AE73E19FE0D70C9675B014C9D97FFBA8F7B1B2F732F0935AB30CD820BCE727644A47ED596AF7413FDE64B032820547FAA2391A2B823E9D535D9F66B0F60054378F897ECAEAC7A03F07182C53B09445526D74CA98EB2B9A1C595D91DC57CD2355F6BD7B4CF5B35CB94E4C72182CC3AC4FFBE5A89A132B6109A7D2A087115A254768DA98EC27FA790EB59BC1C27489ACFE605CF4194D3445CBC7285471B3D87F093CD7965206EB1845C0598AA561979522584EA95CBB850928265CE0AFCAEAC2D2020BF3752CC517CA28E8B1AE92008B6564057396E5911BF941B014477BB1B0B0B0B0B0B0B0B08C4BF97F895EFB1C5C3610160000000049454E44AE426082, 0x00000100010010100000010020006804000016000000280000001000000020000000010020000000000000040000C30E0000C30E00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F2F0FFD6CCC2FFD7CCC2FFD6CCC2FFBFAF9FFFD5CBC1FFD6CCC2FFC9BCAEFFC5B7A9FFDAD0C7FFE3DBD4FFDBD1C8FFD8CFC5FFFEFDFDFFFFFFFFFFFFFFFFFFEEE9E6FF9D836EFFA89281FFB09C8DFF987E67FFBFAEA1FF92765EFF9F8673FFC9BBB1FFCFC3BAFFB4A092FFA99380FFA8927FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F7FFEEE9E5FFECE7E3FFE9E3DEFFDAD0C7FFE3DCD5FFEBE6E1FFE9E3DEFFF2EEEBFFE2DBD4FFD5CBC0FFEFEBE7FFEEEAE5FFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6F4FFF7F5F3FFFFFFFFFFFEFEFEFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFFFEFEFEFFBDAD9CFFF4F1EEFFFEFEFEFFEFEBE7FFE3DCD5FFC5B6A8FFD4C9BFFFF5F3F0FFFFFFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFBFAF9FF755231FFEBE6E2FFDED6CDFFD5CAC0FFF5F3F0FFF2EEEBFFF1EDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFAFFCFC3B8FFF9F7F5FFE8E2DDFFD4C9BEFFCEC1B5FFD2C7BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F6FFE5DFD8FFE3DCD5FFEFEBE7FFF6F4F2FFF3F0EDFFEFECE8FFF4F1EEFFF8F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFF7F4F2FFE1D9D2FFEAE5E0FFFFFFFFFFFCFBFAFFEEE9E5FFFEFEFDFFF4F2EFFFE5DFD8FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFF5F2EFFFE9E4DEFFEAE4DFFFDED6CEFFD3C7BDFFD8CEC5FFD3C8BDFFEAE5E0FFE1DAD2FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFF2EFECFFE9E4DFFFE5DFD9FFEAE5E0FFFDFCFBFFFFFFFFFFFAF9F7FFDCD3CBFFE5DFD9FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFFFFFFFFDED6CEFFDDD5CCFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFDFFFEFEFEFFFFFFFFFFE8E3DDFFEDE9E4FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8FFE8E2DCFFE4DDD7FFF6F3F1FFFFFFFFFFFFFFFFFFFDFCFCFFF3F0EDFFF2EFECFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F5FFE9E4DFFFEAE4DFFFEEE9E5FFEFEBE7FFFAF8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFBFAF9FFF7F5F4FFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, N'/Upload/images/favicon.ico', N'/Upload/images/08252019175206book.png', N'/Upload/images/build-icon.jpg', N'HIENLTH', N'hien.luong@zimitech.vn', N'HIENLTH', N'0989366990', N'PM')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[CompanyEmailDomain] ON 

INSERT [dbo].[CompanyEmailDomain] ([ID], [EmailDomain], [CompanyId], [IsReadOnly], [IsActive]) VALUES (1, N'zimitech.vn', 1, 0, 1)
INSERT [dbo].[CompanyEmailDomain] ([ID], [EmailDomain], [CompanyId], [IsReadOnly], [IsActive]) VALUES (2, N'gmail.com', 1, 0, 1)
INSERT [dbo].[CompanyEmailDomain] ([ID], [EmailDomain], [CompanyId], [IsReadOnly], [IsActive]) VALUES (1002, N'hienlth.info', 1, 0, 1)
INSERT [dbo].[CompanyEmailDomain] ([ID], [EmailDomain], [CompanyId], [IsReadOnly], [IsActive]) VALUES (1003, N'hcmue.edu.vn', 1, 0, 1)
SET IDENTITY_INSERT [dbo].[CompanyEmailDomain] OFF
INSERT [dbo].[CompanyTable] ([CompanyTableId], [ItemText], [ItemDescription], [ItemQuestionText], [RespondentIncluded], [QuestionnaireIncluded], [Status], [OrderNumber], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [ContractorIncluded]) VALUES (N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Job', N'<p>Job</p>', NULL, 1, 1, 1, NULL, NULL, NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[CompanyTable] ([CompanyTableId], [ItemText], [ItemDescription], [ItemQuestionText], [RespondentIncluded], [QuestionnaireIncluded], [Status], [OrderNumber], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [ContractorIncluded]) VALUES (N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', N'Favorite restaurants', N'<p>Favorite restaurants<br></p>', NULL, 1, 1, 1, NULL, NULL, NULL, CAST(N'2019-07-02T22:38:58.183' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'28508f99-a052-4ad0-bdc5-01f2a2ac5224', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Worker', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'a7d2ddce-fd97-406f-b523-1032258fb2d9', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Software Engineer', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'066dc2c3-1bf7-4eac-867d-10cd5bf4a975', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Children', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'91c50e3a-89ae-47f6-b62c-2bb90d831071', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Fresher', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'0f4db1c0-09c4-4048-b611-35dbdaa9c52d', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'SA', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'78449911-69e1-4c0d-bc6b-38206907013a', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Cloud', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'ca9586a0-4374-4c19-bfc0-46b8abb1567f', N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', N'Rita Vo', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-02T22:38:58.183' AS DateTime), CAST(N'2019-07-02T22:38:58.183' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'0d9a5b6a-f16d-4ba7-a94e-4acdfa46eee9', N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', N'Nhat Nguyet', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-01T20:40:46.957' AS DateTime), CAST(N'2019-07-01T20:40:46.957' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'877a9793-6d3e-474e-b649-5d42fd721359', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Scrum Master', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'57b1e07b-2a13-4434-b1cf-6d931b0a9350', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Doctor', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'406a47e5-1724-4291-8df1-839c8018ba56', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Nurse', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'52ec0369-ee17-405f-8253-a590788e8657', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Teacher', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'1c10f1cd-48e8-4554-9469-b2338d06d608', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Senior', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'61a958d8-a7b6-433d-9f0b-ba301d9379e3', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Pilot', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'bb989855-25f0-42e1-84a3-c11997b7c3c2', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'QA/QC', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'e26ccb20-08e8-4931-bd73-c1661a53819d', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Driver', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'c615049c-a326-4188-a4bd-c74e7fe8d4b5', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Project Manager', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'afa27361-1aa2-41bc-bbca-c8533e6ded21', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Lecturer', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'0eff8da3-b6f5-4caf-ad53-ca8b3c4815b4', N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', N'Jollibe', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-01T20:40:46.957' AS DateTime), CAST(N'2019-07-01T20:40:46.957' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'1f2b9dc7-1d94-4652-ad3c-cfdeaa7316fc', N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', N'Sai gon Ngo', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-01T20:40:46.957' AS DateTime), CAST(N'2019-07-01T20:40:46.957' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'2aa9762d-0c53-496b-bc11-d3f8d2a8563d', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'DevOps', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'656f44a7-93f5-4bd7-8d5e-dc241280bac7', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Student', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T23:19:06.920' AS DateTime), CAST(N'2019-07-21T23:19:06.920' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'7ac82f02-f9bf-4158-9fcb-e8ab5c703b7f', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Software Tester', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'543d2f1a-4c65-44ea-9bad-ea2f7e745fa5', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Product Owner', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'f71f7caa-5e42-4497-abaa-f6e2e12170ab', N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', N'Junior', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-21T22:23:21.343' AS DateTime), CAST(N'2019-07-21T22:23:21.343' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
INSERT [dbo].[CompanyTableDetail] ([CompanyTableDetailId], [CompanyTableId], [ItemText], [ItemValue], [CreateUserId], [OrderNumber], [CreateDate], [LastModifyDate], [LastModifyUserId]) VALUES (N'c4834bfc-a52b-4065-bd80-ff0b30f7123a', N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', N'KFC', NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', NULL, CAST(N'2019-07-01T20:40:46.957' AS DateTime), CAST(N'2019-07-01T20:40:46.957' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df')
SET IDENTITY_INSERT [dbo].[CustomTable] ON 

INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (1, N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', 2005, 2, 1, 1, 4, 2, N'AFLQ1003S1003Q2005RE1')
INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (2, N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', 2012, 2, 1, 1, 4, 2, N'AFLQ1005S1005Q2012CT2')
INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (3, N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', 2013, 2, 1, 1, 10, 2, N'AFLQ1005S1005Q2013RE3')
INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (1003, N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', 4006, 3, 1, 1, 6, 2, N'AFLQ1004S2003Q4006CT1003')
INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (1004, N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', 4007, 3, 1, 1, 6, 1, N'AFLQ1004S1004Q4007CT1004')
INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (1005, N'704dcb6e-c2b7-4c50-9c38-4955ec657c99', 4008, 3, 1, 1, 5, 1, N'AFLQ1004S1004Q4008CT1005')
INSERT [dbo].[CustomTable] ([CustomTableId], [CompanyTableId], [QuestionId], [SelectionTypeId], [IsMultiple], [IsPortrait], [Max], [Min], [UniqueId]) VALUES (1006, N'd81e5238-67bc-4c40-bc4d-da62ef066c1f', 4009, 2, 0, 1, 2, 1, N'AFLQ1004S1004Q4009CT1006')
SET IDENTITY_INSERT [dbo].[CustomTable] OFF
SET IDENTITY_INSERT [dbo].[CustomTableAnswer] ON 

INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (1, N'0d9a5b6a-f16d-4ba7-a94e-4acdfa46eee9', 1, N'AFLQ1003S1003Q2005CT1CTA1')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (2, N'0eff8da3-b6f5-4caf-ad53-ca8b3c4815b4', 1, N'AFLQ1003S1003Q2005CT1CTA2')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3, N'1f2b9dc7-1d94-4652-ad3c-cfdeaa7316fc', 1, N'AFLQ1003S1003Q2005CT1CTA3')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (4, N'c4834bfc-a52b-4065-bd80-ff0b30f7123a', 1, N'AFLQ1003S1003Q2005CT1CTA4')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (25, N'ca9586a0-4374-4c19-bfc0-46b8abb1567f', 2, N'AFLQ1005S1005Q2012CT2CTA25')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (26, N'0d9a5b6a-f16d-4ba7-a94e-4acdfa46eee9', 2, N'AFLQ1005S1005Q2012CT2CTA26')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (27, N'0eff8da3-b6f5-4caf-ad53-ca8b3c4815b4', 2, N'AFLQ1005S1005Q2012CT2CTA27')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (28, N'1f2b9dc7-1d94-4652-ad3c-cfdeaa7316fc', 2, N'AFLQ1005S1005Q2012CT2CTA28')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (29, N'c4834bfc-a52b-4065-bd80-ff0b30f7123a', 2, N'AFLQ1005S1005Q2012CT2CTA29')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (30, N'ca9586a0-4374-4c19-bfc0-46b8abb1567f', 3, N'AFLQ1005S1005Q2013RE3REA30')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (31, N'0d9a5b6a-f16d-4ba7-a94e-4acdfa46eee9', 3, N'AFLQ1005S1005Q2013RE3REA31')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (32, N'0eff8da3-b6f5-4caf-ad53-ca8b3c4815b4', 3, N'AFLQ1005S1005Q2013RE3REA32')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (33, N'1f2b9dc7-1d94-4652-ad3c-cfdeaa7316fc', 3, N'AFLQ1005S1005Q2013RE3REA33')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (34, N'c4834bfc-a52b-4065-bd80-ff0b30f7123a', 3, N'AFLQ1005S1005Q2013RE3REA34')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3110, N'52ec0369-ee17-405f-8253-a590788e8657', 1004, N'AFLQ1004S1004Q4007CT1004CTA3110')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3111, N'7ac82f02-f9bf-4158-9fcb-e8ab5c703b7f', 1004, N'AFLQ1004S1004Q4007CT1004CTA3111')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3112, N'656f44a7-93f5-4bd7-8d5e-dc241280bac7', 1004, N'AFLQ1004S1004Q4007CT1004CTA3112')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3113, N'2aa9762d-0c53-496b-bc11-d3f8d2a8563d', 1004, N'AFLQ1004S1004Q4007CT1004CTA3113')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3114, N'afa27361-1aa2-41bc-bbca-c8533e6ded21', 1004, N'AFLQ1004S1004Q4007CT1004CTA3114')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3115, N'c615049c-a326-4188-a4bd-c74e7fe8d4b5', 1004, N'AFLQ1004S1004Q4007CT1004CTA3115')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3116, N'e26ccb20-08e8-4931-bd73-c1661a53819d', 1004, N'AFLQ1004S1004Q4007CT1004CTA3116')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3117, N'bb989855-25f0-42e1-84a3-c11997b7c3c2', 1004, N'AFLQ1004S1004Q4007CT1004CTA3117')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3118, N'61a958d8-a7b6-433d-9f0b-ba301d9379e3', 1004, N'AFLQ1004S1004Q4007CT1004CTA3118')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3119, N'1c10f1cd-48e8-4554-9469-b2338d06d608', 1004, N'AFLQ1004S1004Q4007CT1004CTA3119')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3120, N'f71f7caa-5e42-4497-abaa-f6e2e12170ab', 1004, N'AFLQ1004S1004Q4007CT1004CTA3120')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3121, N'406a47e5-1724-4291-8df1-839c8018ba56', 1004, N'AFLQ1004S1004Q4007CT1004CTA3121')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3122, N'57b1e07b-2a13-4434-b1cf-6d931b0a9350', 1004, N'AFLQ1004S1004Q4007CT1004CTA3122')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3123, N'877a9793-6d3e-474e-b649-5d42fd721359', 1004, N'AFLQ1004S1004Q4007CT1004CTA3123')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3124, N'78449911-69e1-4c0d-bc6b-38206907013a', 1004, N'AFLQ1004S1004Q4007CT1004CTA3124')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3125, N'0f4db1c0-09c4-4048-b611-35dbdaa9c52d', 1004, N'AFLQ1004S1004Q4007CT1004CTA3125')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3126, N'91c50e3a-89ae-47f6-b62c-2bb90d831071', 1004, N'AFLQ1004S1004Q4007CT1004CTA3126')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3127, N'066dc2c3-1bf7-4eac-867d-10cd5bf4a975', 1004, N'AFLQ1004S1004Q4007CT1004CTA3127')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3128, N'a7d2ddce-fd97-406f-b523-1032258fb2d9', 1004, N'AFLQ1004S1004Q4007CT1004CTA3128')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3129, N'28508f99-a052-4ad0-bdc5-01f2a2ac5224', 1004, N'AFLQ1004S1004Q4007CT1004CTA3129')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3130, N'543d2f1a-4c65-44ea-9bad-ea2f7e745fa5', 1004, N'AFLQ1004S1004Q4007CT1004CTA3130')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3131, N'a7d2ddce-fd97-406f-b523-1032258fb2d9', 1005, N'AFLQ1004S1004Q4008CT1005CTA3131')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3132, N'91c50e3a-89ae-47f6-b62c-2bb90d831071', 1005, N'AFLQ1004S1004Q4008CT1005CTA3132')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3133, N'877a9793-6d3e-474e-b649-5d42fd721359', 1005, N'AFLQ1004S1004Q4008CT1005CTA3133')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3134, N'1c10f1cd-48e8-4554-9469-b2338d06d608', 1005, N'AFLQ1004S1004Q4008CT1005CTA3134')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3135, N'bb989855-25f0-42e1-84a3-c11997b7c3c2', 1005, N'AFLQ1004S1004Q4008CT1005CTA3135')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3136, N'c615049c-a326-4188-a4bd-c74e7fe8d4b5', 1005, N'AFLQ1004S1004Q4008CT1005CTA3136')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3137, N'7ac82f02-f9bf-4158-9fcb-e8ab5c703b7f', 1005, N'AFLQ1004S1004Q4008CT1005CTA3137')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3138, N'543d2f1a-4c65-44ea-9bad-ea2f7e745fa5', 1005, N'AFLQ1004S1004Q4008CT1005CTA3138')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3139, N'f71f7caa-5e42-4497-abaa-f6e2e12170ab', 1005, N'AFLQ1004S1004Q4008CT1005CTA3139')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3140, N'ca9586a0-4374-4c19-bfc0-46b8abb1567f', 1006, N'AFLQ1004S1004Q4009CT1006CTA3140')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3141, N'0eff8da3-b6f5-4caf-ad53-ca8b3c4815b4', 1006, N'AFLQ1004S1004Q4009CT1006CTA3141')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3142, N'1f2b9dc7-1d94-4652-ad3c-cfdeaa7316fc', 1006, N'AFLQ1004S1004Q4009CT1006CTA3142')
INSERT [dbo].[CustomTableAnswer] ([CustomTableAnswerId], [CompanyTableDetailId], [CustomTableId], [UniqueId]) VALUES (3143, N'c4834bfc-a52b-4065-bd80-ff0b30f7123a', 1006, N'AFLQ1004S1004Q4009CT1006CTA3143')
SET IDENTITY_INSERT [dbo].[CustomTableAnswer] OFF
SET IDENTITY_INSERT [dbo].[EmailConfig] ON 

INSERT [dbo].[EmailConfig] ([Id], [EmailAddress], [Host], [Password], [Port], [SenderName], [TimeOut]) VALUES (1, N'aspnhatnghe@gmail.com', N'smtp.gmail.com', N'Nh@tNghe@123', 587, N'HiTech Mail', 30)
SET IDENTITY_INSERT [dbo].[EmailConfig] OFF
SET IDENTITY_INSERT [dbo].[EmailContent] ON 

INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (1, 1, N'<p>Dear Dr&nbsp;{Doctor_FirstName},<br><br>Please be informed that you have created a new association with student&nbsp;{Student_FirstName}&nbsp;{Student_LastName}.<br><br>Best regards,<br>Eagle360</p>', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Association Created', N'Association confirmation email for Mentor', NULL, NULL, NULL, 0)
INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (2, 1, N'Dear Dr&nbsp;{Student_FirstName}, <br><br>Please be informed that you have been created a new association by Dr&nbsp;{Doctor_FirstName}&nbsp;{Doctor_LastName}.<br><br>Best regards,<br>Eagle360', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Association Created', N'Association confirmation email for Student', NULL, NULL, NULL, 0)
INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (3, 1, N'Dear Dr&nbsp;{Doctor_FirstName},<br/><br/>Please be informed that you have deleted the association with student&nbsp;{Student_FirstName}&nbsp;{Student_LastName}.<br><br>Best regards,<br>Eagle360', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Association Deleted', N'Delete association email for Mentor', NULL, NULL, NULL, 0)
INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (4, 1, N'Dear Dr&nbsp;{Student_FirstName},<br><br>Please be informed that your association with Dr&nbsp;{Doctor_FirstName}&nbsp;{Doctor_LastName}&nbsp;have been deleted.<br><br>Best regards,<br>Eagle360', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Association Deleted', N'Delete association email for Student', NULL, NULL, NULL, 0)
INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (5, 1, N'<p>Dear {Participant_FirstName},<br><br>The survey {Survey_Name} is assigned to you. Please click at the link below to complete this survey.<br /> <a href={Survey_FullUrl}>{Survey_FullUrl}</a> <br><br>Best regards,<br>Eagle360</p>', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Survey is assigned', N'Survey assigned notification email for respondent', NULL, NULL, NULL, 0)
INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (6, 1, N'<p>Dear {Participant_FirstName},<br><br>Please complete the survey {Survey_Name} before {Survey_DueDate}.<br /> <a href={Survey_FullUrl}>{Survey_FullUrl}</a> <br><br>Best regards,<br>Eagle360</p>', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Survey overdue notification', N'Survey overdue notification email for respondent', NULL, NULL, NULL, 0)
INSERT [dbo].[EmailContent] ([Id], [Active], [Body], [Disclaimer], [SenderName], [Signature], [Subject], [Title], [Default], [EmailTypeId], [ApplicationRoleId], [IsDeleted]) VALUES (7, 1, N'<p>Dear {Participant_FirstName},<br><br>Thank for completed the survey {Survey_Name}. Click at the link below to review your answer.<br /> <a href={Survey_FullUrl}>{Survey_FullUrl}</a> <br><br>Best regards,<br>Eagle360</p>', NULL, N'Eagle 360 Team', N'<p style ="margin-top: 0cm;" ><span style = "font-size: 10pt; font-family: Arial, sans-serif;" > Regards,<br></span><span style = "font-family: Arial, sans-serif; font-size: 10pt;" > Eagle 360 Team </span></p>', N'Survey is completed', N'Survey completed notification email for respondent', NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[EmailContent] OFF
SET IDENTITY_INSERT [dbo].[EmailDomain] ON 

INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (1, N'hcmue.edu.vn', 1)
INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (2, N'hcmue.edu.vn', 1)
INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (3, N'hcmue.edu.vn', 1)
INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (1002, N'zimitech.vn', 1)
INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (2002, N'hcmue.edu.vn', 1)
INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (2003, N'gmail.com', 1)
INSERT [dbo].[EmailDomain] ([EmailDomainId], [DomainName], [Status]) VALUES (2004, N'hcmue.edu.vn', 1)
SET IDENTITY_INSERT [dbo].[EmailDomain] OFF
SET IDENTITY_INSERT [dbo].[EmailType] ON 

INSERT [dbo].[EmailType] ([Id], [Name], [Description], [OrderNumber]) VALUES (1, N'Invitation', N'Invitation', 1)
INSERT [dbo].[EmailType] ([Id], [Name], [Description], [OrderNumber]) VALUES (2, N'Thank you', N'Thank you', 3)
INSERT [dbo].[EmailType] ([Id], [Name], [Description], [OrderNumber]) VALUES (3, N'Closed', N'Closed', 5)
INSERT [dbo].[EmailType] ([Id], [Name], [Description], [OrderNumber]) VALUES (4, N'Reminder', N'Reminder', 4)
INSERT [dbo].[EmailType] ([Id], [Name], [Description], [OrderNumber]) VALUES (5, N'Starter', N'Starter', 2)
INSERT [dbo].[EmailType] ([Id], [Name], [Description], [OrderNumber]) VALUES (6, N'Ad Hoc', N'Ad Hoc', 6)
SET IDENTITY_INSERT [dbo].[EmailType] OFF
SET IDENTITY_INSERT [dbo].[Equation] ON 

INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (1, N'A', N'A', 1, 0, 0, 0, 1, 0, 0, N'', 1, 2, 3002, 0, 1, N'00000000-0000-0000-0000-000000000000', 0, 5)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (2, N'B', N'B', 1, 0, 0, 0, 1, 0, 0, N'', 0, 2, 3002, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 10)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (3, N'A', N'A', 1, 0, 0, 0, 1, 0, 0, N'', 1, 0, 2, 0, 1, N'473b0afe-a2ab-4b28-bcb7-28826b9d22c4', 1, 5)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (4, N'B', N'B', 1, 0, 0, 0, 1, 0, 0, N'', 0, 0, 2, 0, 0, N'473b0afe-a2ab-4b28-bcb7-28826b9d22c4', 2, 10)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (5, N'C', N'C', 1, 0, 0, 0, 1, 0, 0, N'', 0, NULL, 2, 0, 0, N'473b0afe-a2ab-4b28-bcb7-28826b9d22c4', 0, 15)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (1002, N'PLC', N'PLC', 1, 1, 1, 1, 1, 0, 1, N'', 1, 3003, NULL, 0, 1, NULL, 0, 3)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (1003, N'EMO', N'EMO', 1, 1, 1, 1, 1, 0, 1, N'', 1, 3003, NULL, 0, 1, NULL, 0, 4)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (1005, N'SUBQ', N'SUB', 1, 1, 1, 1, 1, 0, 1, N'', 1, 3003, NULL, 0, 1, NULL, 0, 2)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (1006, N'Q1', N'Q1', 1, 1, 1, 1, 1, 0, 1, N'', 1, 5003, NULL, 0, 1, NULL, 0, 3)
INSERT [dbo].[Equation] ([ID], [Name], [CodeName], [EquationTypeID], [ShowOutcomeValue], [ShowTarget], [ShowPercentage], [IsBasedOnQuestion], [Multiplier], [ShowInCalculationAndQuery], [Status], [ShowInRespondentSurvey], [QuestionnaireID], [SurveyID], [IsPositionalMultiplier], [ShowForSupplier], [DuplicateCode], [OldId], [Target]) VALUES (1010, N'A', N'A', 1, 1, 1, 1, 1, 0, 1, N'', 1, 5017, NULL, 0, 1, NULL, 0, 3)
SET IDENTITY_INSERT [dbo].[Equation] OFF
SET IDENTITY_INSERT [dbo].[EquationDetail] ON 

INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (1, 1, 1, 1, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (2, 2, 1, 2, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (3, 3, 1, 1, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (4, 4, 1, 2, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (5, 5, 1, 3, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (1002, 1002, 1, 1, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (1003, 1003, 1, 1, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (1006, 1005, 1, 1, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (1018, 1006, 1, 1, NULL)
INSERT [dbo].[EquationDetail] ([ID], [EquationID], [EquationDetailTypeID], [Multiplier], [RawValue]) VALUES (1020, 1010, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[EquationDetail] OFF
SET IDENTITY_INSERT [dbo].[EquationDetailType] ON 

INSERT [dbo].[EquationDetailType] ([ID], [Name], [Description]) VALUES (1, N'Normal', N'Normal')
INSERT [dbo].[EquationDetailType] ([ID], [Name], [Description]) VALUES (2, N'Nominator', N'Nominator')
INSERT [dbo].[EquationDetailType] ([ID], [Name], [Description]) VALUES (3, N'Denominator', N'Denominator')
SET IDENTITY_INSERT [dbo].[EquationDetailType] OFF
SET IDENTITY_INSERT [dbo].[EquationItem] ON 

INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (1, N'AFLQ2S2Q4GL1', 0, 1, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (2, N'AFLQ2S2Q4GL1', 0, 2, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (3, N'AFLQ2S2Q4GL1', 0, 3, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (4, N'AFLQ2S2Q4GL1', 0, 4, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (5, N'AFLQ2S2Q4GL1', 0, 5, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (1002, N'AFLQ3003S4003Q8009GS2002', 0, 1002, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (1003, N'AFLQ3003S4003Q7009.R2002', 0, 1003, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (1006, N'AFLQ3003S4003Q8013GS2006', 0, 1006, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (1025, N'AFLQ5003S6003Q8016GS2008', 0, 1018, 0)
INSERT [dbo].[EquationItem] ([ID], [SelectedControlUniqueID], [SelectedEquationID], [EquationDetailID], [Multiplier]) VALUES (1027, N'AFLQ5017S7007Q9032GS3019', 0, 1020, 0)
SET IDENTITY_INSERT [dbo].[EquationItem] OFF
SET IDENTITY_INSERT [dbo].[EquationType] ON 

INSERT [dbo].[EquationType] ([ID], [Name], [Description]) VALUES (1, N'Simple', N'Simple')
INSERT [dbo].[EquationType] ([ID], [Name], [Description]) VALUES (2, N'Complex', N'Complex')
SET IDENTITY_INSERT [dbo].[EquationType] OFF
SET IDENTITY_INSERT [dbo].[GPSGroupSelection] ON 

INSERT [dbo].[GPSGroupSelection] ([GPSGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue]) VALUES (1, 2, 1, NULL, N'AFLQ2S2Q4GL1', NULL)
INSERT [dbo].[GPSGroupSelection] ([GPSGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue]) VALUES (2, 2, 1, NULL, N'AFLQ3S3Q6GL2', NULL)
INSERT [dbo].[GPSGroupSelection] ([GPSGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue]) VALUES (1002, 2, 1, NULL, N'AFLQ1004S1004Q2006GL1002', NULL)
SET IDENTITY_INSERT [dbo].[GPSGroupSelection] OFF
SET IDENTITY_INSERT [dbo].[GPSSelectionGroup] ON 

INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1, 1, 1, 1)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2, 1, 2, 2)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3, 1, 3, 3)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (4, 2, 4, 1)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (5, 2, 5, 2)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (6, 2, 6, 3)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1004, 1002, 1004, 1)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1005, 1002, 1005, 2)
INSERT [dbo].[GPSSelectionGroup] ([GPSSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1006, 1002, 1006, 3)
SET IDENTITY_INSERT [dbo].[GPSSelectionGroup] OFF
SET IDENTITY_INSERT [dbo].[GPSSingleSelection] ON 

INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (1, 2, N'GEO code', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ2S2Q4GL1.SL1', 1)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (2, 2, N'Not record location', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ2S2Q4GL1.SL2', 0)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (3, 2, N'At Office', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ2S2Q4GL1.SL3', 0)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (4, 2, N'GEO code', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q6GL2.SL4', 1)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (5, 2, N'Not record location', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q6GL2.SL5', 0)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (6, 2, N'At Office', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q6GL2.SL6', 0)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (1004, 2, N'GEO code', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2006GL1002.SL1004', 1)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (1005, 2, N'Not record location', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2006GL1002.SL1005', 0)
INSERT [dbo].[GPSSingleSelection] ([GPSSingleSelectionId], [SelectionTypeID], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsShowGPSInfo]) VALUES (1006, 2, N'At Office', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2006GL1002.SL1006', 0)
SET IDENTITY_INSERT [dbo].[GPSSingleSelection] OFF
SET IDENTITY_INSERT [dbo].[GroupSelection] ON 

INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (1, NULL, NULL, 1, 1, N'AFLQ3S3Q5GS1')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2, NULL, NULL, 1, 2, N'AFLQ3S3Q9GS2')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (3, NULL, NULL, 1, 2, N'AFLQ3S3Q10GS3')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (4, NULL, NULL, 1, 2, N'AFLQ3S3Q11GS4')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (5, NULL, NULL, 1, 2, N'AFLQ3S3Q12GS5')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (1002, NULL, NULL, 1, 2, N'AFLQ1004S1004Q2009GS1002')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2002, NULL, NULL, 0, 2, N'AFLQ3003S4003Q8009GS2002')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2003, NULL, NULL, 1, 1, N'AFLQ3003S4003Q8010GS2003')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2006, NULL, NULL, 2, 2, N'AFLQ3003S4003Q8013GS2006')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2007, NULL, NULL, 1, 2, N'AFLQ3003S4003Q8014GS2007')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2008, NULL, NULL, 0, 2, N'AFLQ5003S6003Q8016GS2008')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2010, NULL, NULL, 0, 2, N'AFLQ5003S6003Q8022GS2010')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2011, NULL, NULL, 0, 2, N'AFLQ5003S6003Q8023GS2011')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2012, NULL, NULL, 0, 2, N'AFLQ5003S6003Q8024GS2012')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2013, NULL, NULL, 0, 2, N'AFLQ5003S6003Q8025GS2013')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2014, NULL, NULL, 0, 2, N'AFLQ5003S6004Q8026GS2014')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2015, NULL, NULL, 0, 2, N'AFLQ5017S6005Q8027GS2015')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2017, NULL, NULL, 0, 2, N'AFLQ5018S6006Q8029GS2017')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2018, NULL, NULL, 0, 2, N'AFLQ5018S6006Q8032GS2018')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2019, NULL, NULL, 0, 2, N'AFLQ5018S6006Q8033GS2019')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2020, NULL, NULL, 0, 2, N'AFLQ5018S6006Q8034GS2020')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2021, NULL, NULL, 0, 2, N'AFLQ5018S6006Q8035GS2021')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (2022, NULL, NULL, 0, 2, N'AFLQ5018S6007Q8036GS2022')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (3018, NULL, NULL, 0, 2, N'AFLQ5017S6005Q9031GS3018')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (3019, NULL, NULL, 0, 2, N'AFLQ5017S7007Q9032GS3019')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (3020, NULL, NULL, 0, 2, N'AFLQ5017S6005Q9033GS3020')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (3021, NULL, NULL, 0, 2, N'AFLQ0S0Q9034GS3021')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (3022, NULL, NULL, 0, 2, N'AFLQ5017S7007Q9035GS3022')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (4018, NULL, NULL, 0, 2, N'AFLQ5019S8007Q10030GS4018')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (4019, NULL, NULL, 0, 2, N'AFLQ5019S8007Q10031GS4019')
INSERT [dbo].[GroupSelection] ([GroupSelectionID], [DefaultValue], [HeadText], [QuestionLayoutID], [SelectionTypeID], [UniqueID]) VALUES (4020, NULL, NULL, 0, 2, N'AFLQ5019S8007Q10032GS4020')
SET IDENTITY_INSERT [dbo].[GroupSelection] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageId], [ContentType], [Height], [ImageUrl], [IsMultiPoint], [MaximumPoints], [RequireAllPoints], [Width], [UniqueId], [QuestionId]) VALUES (1, NULL, 0, N'Upload\Images\QuestionId_1006\AFLQ3S3Q1006.IM1.png', 1, 6, 0, 0, N'AFLQ3S3Q1006.IM1', NULL)
INSERT [dbo].[Image] ([ImageId], [ContentType], [Height], [ImageUrl], [IsMultiPoint], [MaximumPoints], [RequireAllPoints], [Width], [UniqueId], [QuestionId]) VALUES (2, NULL, 0, N'Upload\Images\QuestionId_2010\AFLQ1004S1004Q2010.IM2.png', 1, 6, 0, 0, N'AFLQ1004S1004Q2010.IM2', 2010)
INSERT [dbo].[Image] ([ImageId], [ContentType], [Height], [ImageUrl], [IsMultiPoint], [MaximumPoints], [RequireAllPoints], [Width], [UniqueId], [QuestionId]) VALUES (1002, NULL, 0, N'Upload\Images\QuestionId_3006\AFLQ1004S2003Q3006.IM1002.png', 1, 8, 0, 0, N'AFLQ1004S2003Q3006.IM1002', 3006)
INSERT [dbo].[Image] ([ImageId], [ContentType], [Height], [ImageUrl], [IsMultiPoint], [MaximumPoints], [RequireAllPoints], [Width], [UniqueId], [QuestionId]) VALUES (2002, NULL, 0, N'Upload\Images\QuestionId_9030\AFLQ5017S6005Q9030.IM2002.png', 0, 0, 0, 0, N'AFLQ5017S6005Q9030.IM2002', 9030)
SET IDENTITY_INSERT [dbo].[Image] OFF
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'64bdfc4a-5a9d-40b0-a078-0c94e8d50c4b', N'8b006f06-e897-4cde-b34d-ed0616c39705', N'fa601fef-5c56-4a67-b739-9c13f55cc20a', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'908e4ddb-33e7-4ba3-b984-1031d1bb4fbc', N'4b0cca41-a020-48ec-ade1-fc28e1fdfa03', N'b5d9ef7d-f0b2-4e05-85f3-7599c56c0184', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'e3343069-c4fd-4db6-b2a9-20db9a72f953', N'ab055d4a-0234-41a4-a145-9573c2301748', N'bdae3a9a-7dcb-4f3c-b53e-d0356ff4003a', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'8890fda6-a315-4218-8ca1-2d84cc066c01', N'000c2b86-0ae6-457f-bede-93ba25a92300', N'd0ac2570-61cc-4acd-96e9-5d0434efb8bf', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'c2a2f6c3-4984-47b0-bfe5-379b4a021d94', N'5723a0b7-0167-492d-9b08-46f963a277ab', N'3eb4f36a-4134-4ed5-8fa5-04e627de54f6', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'df31f27e-67cc-4ad2-bb65-7493619c8e41', N'e593c72a-7c82-4aa4-a521-d14403f99ee4', N'f0acc1e1-a25c-4832-a950-debc14198ab6', N'Value cannot be null.
Parameter name: connectionString')
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'60b086ec-ebcf-4759-9913-8ec27de2b0f1', N'0d9c1627-d54e-4b3c-89aa-c337f834b701', N'f0acc1e1-a25c-4832-a950-debc14198ab6', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'1ff223a7-c627-4d6d-83be-a1f98449aed5', N'b3593a89-6fb4-4f5a-be40-d20beca8f33b', N'e40b6299-8ab6-4b6a-af96-7b2e25114020', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'bad790c6-7191-4d17-872e-aa6cbeec25d0', N'47fb0dd8-ceeb-4c12-a05f-b5bd74e3f5db', N'fa601fef-5c56-4a67-b739-9c13f55cc20a', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'0ce20bd6-471a-4c7a-bec9-b74320cd5cea', N'b998b35a-c8af-4004-bff0-9baf49dbbb94', N'bdae3a9a-7dcb-4f3c-b53e-d0356ff4003a', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'4ede17c6-c2ee-4a76-8532-b919c5537495', N'aeac1b07-28c0-4d22-8a70-8af044c2bb1a', N'e40b6299-8ab6-4b6a-af96-7b2e25114020', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'3d95fca1-da62-485a-a3fd-d3d383094b86', N'e8502510-733c-402a-8a8f-ca14cfeb2835', N'd0ac2570-61cc-4acd-96e9-5d0434efb8bf', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'619ea031-61c7-4bb2-804f-df9a675b2ef5', N'bc041e8c-7b1b-4e3d-ac8d-67558bfc2d47', N'3eb4f36a-4134-4ed5-8fa5-04e627de54f6', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'7da3cff9-673b-476b-abe9-f819bdb7816b', N'2a7fd947-26a4-4c48-ab84-e4726a5c30c7', N'b5d9ef7d-f0b2-4e05-85f3-7599c56c0184', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'd07d8696-9f29-41c4-b65c-f96f3fa4fe9a', N'66e57913-73ed-4234-ac6e-9a26fc58e61d', N'81923371-fbe0-4a8a-bcc3-923ce17d6bde', NULL)
INSERT [dbo].[MessageDetail] ([MessageDetailId], [MessageQueueId], [ObjectInfo], [ProcessMessage]) VALUES (N'3e3b8b0c-d73d-4043-b557-fa0c416387b7', N'a1d14588-1b2b-4146-96a1-0ba652aa8054', N'81923371-fbe0-4a8a-bcc3-923ce17d6bde', NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'a1d14588-1b2b-4146-96a1-0ba652aa8054', CAST(N'2019-06-28T00:09:36.677' AS DateTime), CAST(N'2019-07-01T20:31:25.467' AS DateTime), 1, 1, 3, CAST(N'2019-07-01T20:31:25.943' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), N'66e57913-73ed-4234-ac6e-9a26fc58e61d')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'5723a0b7-0167-492d-9b08-46f963a277ab', CAST(N'2019-06-28T00:20:40.280' AS DateTime), CAST(N'2019-07-01T20:31:36.330' AS DateTime), 1, 1, 3, CAST(N'2019-07-01T20:31:36.587' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), N'bc041e8c-7b1b-4e3d-ac8d-67558bfc2d47')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'bc041e8c-7b1b-4e3d-ac8d-67558bfc2d47', CAST(N'2019-06-28T00:20:40.187' AS DateTime), CAST(N'2019-07-01T20:31:31.893' AS DateTime), 1, 2, 3, CAST(N'2019-07-01T20:31:36.013' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'aeac1b07-28c0-4d22-8a70-8af044c2bb1a', CAST(N'2019-06-28T00:26:07.500' AS DateTime), CAST(N'2019-07-01T20:31:36.160' AS DateTime), 1, 2, 3, CAST(N'2019-07-01T20:31:39.943' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'000c2b86-0ae6-457f-bede-93ba25a92300', CAST(N'2019-06-27T23:53:07.517' AS DateTime), CAST(N'2019-07-01T20:31:07.003' AS DateTime), 253, 1, 3, CAST(N'2019-07-01T20:31:09.483' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-28T00:00:00.000' AS DateTime), N'e8502510-733c-402a-8a8f-ca14cfeb2835')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'ab055d4a-0234-41a4-a145-9573c2301748', CAST(N'2019-08-09T08:17:20.917' AS DateTime), CAST(N'2019-08-15T22:31:16.047' AS DateTime), 457, 1, 3, CAST(N'2019-08-15T22:31:17.707' AS DateTime), CAST(N'2019-08-17T00:00:00.000' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), N'b998b35a-c8af-4004-bff0-9baf49dbbb94')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'66e57913-73ed-4234-ac6e-9a26fc58e61d', CAST(N'2019-06-28T00:09:36.577' AS DateTime), CAST(N'2019-07-01T20:31:07.003' AS DateTime), 1, 2, 3, CAST(N'2019-07-01T20:31:24.643' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'b998b35a-c8af-4004-bff0-9baf49dbbb94', CAST(N'2019-08-09T08:17:18.843' AS DateTime), CAST(N'2019-08-09T08:19:40.037' AS DateTime), 1, 2, 3, CAST(N'2019-08-09T08:19:47.717' AS DateTime), CAST(N'2019-08-17T00:00:00.000' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'47fb0dd8-ceeb-4c12-a05f-b5bd74e3f5db', CAST(N'2019-06-20T23:25:52.780' AS DateTime), CAST(N'2019-06-20T23:26:15.973' AS DateTime), 1, 2, 3, CAST(N'2019-06-20T23:26:16.800' AS DateTime), CAST(N'2019-06-30T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'0d9c1627-d54e-4b3c-89aa-c337f834b701', CAST(N'2019-06-20T23:33:45.210' AS DateTime), CAST(N'2019-06-20T23:36:16.070' AS DateTime), 1, 2, 3, CAST(N'2019-06-20T23:36:18.193' AS DateTime), CAST(N'2019-06-30T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'e8502510-733c-402a-8a8f-ca14cfeb2835', CAST(N'2019-06-27T23:53:07.313' AS DateTime), CAST(N'2019-06-27T23:53:08.010' AS DateTime), 1, 2, 3, CAST(N'2019-06-27T23:53:12.540' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'e593c72a-7c82-4aa4-a521-d14403f99ee4', CAST(N'2019-06-20T23:33:45.310' AS DateTime), CAST(N'2019-06-24T23:41:27.193' AS DateTime), 12, 1, 4, CAST(N'2019-06-24T23:41:27.577' AS DateTime), CAST(N'2019-06-30T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), N'0d9c1627-d54e-4b3c-89aa-c337f834b701')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'b3593a89-6fb4-4f5a-be40-d20beca8f33b', CAST(N'2019-06-28T00:26:07.593' AS DateTime), CAST(N'2019-07-01T20:31:40.327' AS DateTime), 1, 1, 3, CAST(N'2019-07-01T20:31:40.463' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), N'aeac1b07-28c0-4d22-8a70-8af044c2bb1a')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'2a7fd947-26a4-4c48-ab84-e4726a5c30c7', CAST(N'2019-06-28T00:10:49.223' AS DateTime), CAST(N'2019-07-01T20:31:32.350' AS DateTime), 1, 1, 3, CAST(N'2019-07-01T20:31:32.590' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), N'4b0cca41-a020-48ec-ade1-fc28e1fdfa03')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'8b006f06-e897-4cde-b34d-ed0616c39705', CAST(N'2019-06-20T23:25:52.940' AS DateTime), CAST(N'2019-06-25T22:24:26.763' AS DateTime), 20, 1, 3, CAST(N'2019-06-25T22:24:29.460' AS DateTime), CAST(N'2019-06-30T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), N'47fb0dd8-ceeb-4c12-a05f-b5bd74e3f5db')
INSERT [dbo].[MessageQueue] ([MessageQueueId], [CreatedDate], [LastStartProcessDate], [ProcessedTimes], [ServiceId], [Status], [LastEndProcessDate], [EndDate], [StartDate], [WaitMessageQueueId]) VALUES (N'4b0cca41-a020-48ec-ade1-fc28e1fdfa03', CAST(N'2019-06-28T00:10:49.147' AS DateTime), CAST(N'2019-07-01T20:31:25.010' AS DateTime), 1, 2, 3, CAST(N'2019-07-01T20:31:31.730' AS DateTime), CAST(N'2019-07-06T00:00:00.000' AS DateTime), CAST(N'2019-06-29T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([PhotoId], [IsMultiPoint], [MaximumPoints], [RequireAllPoints], [UniqueId], [QuestionId], [RespondentAnswerId]) VALUES (1, 1, 4, 1, N'AFLQ3S3Q1007.IM1', 1007, NULL)
INSERT [dbo].[Photo] ([PhotoId], [IsMultiPoint], [MaximumPoints], [RequireAllPoints], [UniqueId], [QuestionId], [RespondentAnswerId]) VALUES (2, 1, 4, 0, N'AFLQ1004S1004Q2011.IM2', 2011, NULL)
SET IDENTITY_INSERT [dbo].[Photo] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (1, 0, 0, NULL, 1, NULL, N'Question 1', 1, NULL, 1, N'AFLQ1S1Q1', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2, 0, 0, NULL, 1, NULL, N'Full name', 1, NULL, 2, N'AFLQ2S2Q2', 1, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (3, 0, 0, NULL, 1, NULL, N'ID Card', 1, NULL, 2, N'AFLQ2S2Q3', 1, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (4, 0, 0, NULL, 1, NULL, N'Location', 12, NULL, 2, N'AFLQ2S2Q4', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (5, 0, 0, N'often dine', 1, NULL, N'How often do you dine with us ?', 3, NULL, 3, N'AFLQ3S3Q5', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (6, 0, 0, N'location', 1, NULL, N'Which location?', 12, NULL, 3, N'AFLQ3S3Q6', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7, 0, 0, N'rate', 1, NULL, N'Please rate the following regarding the ambiance of our restaurant.', 6, NULL, 3, N'AFLQ3S3Q7', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8, 0, 0, N'favourite restaurant', 1, NULL, N'Which are you favourite restaurant? (up to 3)', 14, NULL, 3, N'AFLQ3S3Q8', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9, 0, 0, N'special', 1, NULL, N'Why is  {Pipe_RepeatAnswerValue} special to you?', 3, NULL, 3, N'AFLQ3S3Q9', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (10, 0, 0, N'tip', 1, NULL, N'Do you tip the staff at  {Pipe_RepeatAnswerValue} ?', 3, NULL, 3, N'AFLQ3S3Q10', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (11, 0, 0, N'indoor or outdoor', 1, NULL, N'Is  {Pipe_RepeatAnswerValue} indoors AND outdoors or indoor only?', 3, NULL, 3, N'AFLQ3S3Q11', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (12, 0, 0, N'friendly', 1, NULL, N'Is  {Pipe_RepeatAnswerValue} child friendly?', 3, NULL, 3, N'AFLQ3S3Q12', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (13, 0, 0, NULL, 1, NULL, N'What do you like most about  {Pipe_RepeatAnswerValue} ?', 1, NULL, 3, N'AFLQ3S3Q13', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (1005, 0, 0, N'rate', 1, NULL, N'Please rate the following regarding the ambiance of our restaurant._Copy', 6, NULL, 3, N'AFLQ3S3Q1005', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (1006, 0, 0, NULL, 1, NULL, N'pick point on picture for  {Pipe_RepeatAnswerValue}', 7, NULL, 3, N'AFLQ3S3Q1006', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (1007, 0, 0, NULL, 1, NULL, N'Upload logo of  {Pipe_RepeatAnswerValue}', 13, NULL, 3, N'AFLQ3S3Q1007', 0, 0, 8)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2005, 0, 0, N'nha hang', 1, NULL, N'Chon nha hang de an', 14, NULL, 1003, N'AFLQ1003S1003Q2005', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2006, 0, 0, N'location', 1, NULL, N'Where location?', 12, NULL, 1004, N'AFLQ1004S1004Q2006', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2007, 0, 0, N'favourite restaurant', 1, NULL, N'Which favourite restaurant?', 14, N'pick 2 up to 5', 1004, N'AFLQ1004S1004Q2007', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2008, 0, 0, NULL, 1, NULL, N'Good word {Pipe_RepeatAnswerValue}  {Pipe_RepeatNum}/{Pipe_RepeatTotal} ', 1, NULL, 1004, N'AFLQ1004S1004Q2008', 0, 0, 2007)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2009, 0, 0, NULL, 1, NULL, N'Quality of  {Pipe_RepeatAnswerValue}', 3, NULL, 1004, N'AFLQ1004S1004Q2009', 1, 0, 2007)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2010, 0, 0, NULL, 1, NULL, N'pick on  {Pipe_RepeatAnswerValue} logo', 7, NULL, 1004, N'AFLQ1004S1004Q2010', 1, 0, 2007)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2011, 0, 0, NULL, 1, NULL, N'Upload your photo', 13, NULL, 1004, N'AFLQ1004S1004Q2011', 0, 0, 2007)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2012, 0, 0, NULL, 1, NULL, N'Choose favourite restaurant', 8, N'pick 2 to 4', 1005, N'AFLQ1005S1005Q2012', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2013, 0, 0, NULL, 1, NULL, N'Hello', 14, NULL, 1005, N'AFLQ1005S1005Q2013', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2014, 0, 0, NULL, 1, NULL, N'Name', 1, NULL, 1005, N'AFLQ1005S1005Q2014', 1, 0, 2013)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (2015, 0, 0, NULL, 1, NULL, N'Age', 1, NULL, 1005, N'AFLQ1005S1005Q2015', 1, 0, 2013)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (3005, 0, 0, N'Scale subQ', 1, NULL, N'Scale sub-question', 5, NULL, 1004, N'AFLQ1004S1004Q3005', 0, 0, 2007)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (3006, 0, 0, N'image', 1, NULL, N'Image demo', 7, NULL, 2003, N'AFLQ1004S2003Q3006', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (4006, 1, 0, N'CL Multiple', 1, NULL, N'Custom List (Multiple)', 8, NULL, 2003, N'AFLQ1004S2003Q4006', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (4007, 0, 0, N'CL Single', 1, NULL, N'Custom List 21 item', 8, N'Select 1 - 6 item', 1004, N'AFLQ1004S1004Q4007', 1, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (4008, 0, 0, N'CL Multiple', 1, NULL, N'CL Multiple 9 items', 8, N'Select 1 up to 5 item', 1004, N'AFLQ1004S1004Q4008', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (4009, 0, 0, NULL, 1, NULL, N'Custom list 4 item', 8, NULL, 1004, N'AFLQ1004S1004Q4009', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (5009, 0, 0, N'satisfied about service', 1, NULL, N'How satisfied are you with our services?', 5, NULL, 3003, N'AFLQ2003S3003Q5009', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7009, 0, 0, N'Emoji scale', 1, NULL, N'Emoji scale', 5, NULL, 4003, N'AFLQ3003S4003Q7009', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7010, 0, 0, N'Standard scale', 1, NULL, N'Standard scale', 5, NULL, 4003, N'AFLQ3003S4003Q7010', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7011, 0, 0, N'Emoji scale', 1, NULL, N'Emoji scale', 5, NULL, 5003, N'AFLQ4003S5003Q7011', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7012, 0, 0, N'Standard scale', 1, NULL, N'Standard scale', 5, NULL, 5003, N'AFLQ4003S5003Q7012', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7013, 0, 0, N'Repeating question', 1, NULL, N'Repeating question', 14, NULL, 5003, N'AFLQ4003S5003Q7013', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7014, 0, 0, N'Scale emoji', 1, NULL, N'Scale emoji', 5, NULL, 5003, N'AFLQ4003S5003Q7014', 0, 0, 7013)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (7015, 0, 0, NULL, 1, NULL, N'Stand scale', 5, NULL, 5003, N'AFLQ4003S5003Q7015', 0, 0, 7013)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8009, 0, 0, N'premier league champion', 1, NULL, N'Premier League - Champion', 3, NULL, 4003, N'AFLQ3003S4003Q8009', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8010, 0, 0, N'UEFACL', 1, NULL, N'Premier League - Top 4', 3, NULL, 4003, N'AFLQ3003S4003Q8010', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8013, 0, 0, N'Sub-ques', 1, NULL, N'Selection with sub-question', 3, NULL, 4003, N'AFLQ3003S4003Q8013', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8014, NULL, 0, N'choose', NULL, NULL, N'If true, please choose', 3, NULL, 4003, N'AFLQ3003S4003Q8014', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8015, NULL, 0, NULL, NULL, NULL, N'Address', 1, NULL, 4003, N'AFLQ3003S4003Q8015', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8016, 0, 0, N'Selection', 1, NULL, N'Selection', 3, NULL, 6003, N'AFLQ5003S6003Q8016', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8020, 0, 0, N'Emoji', 1, NULL, N'Emoji', 5, NULL, 6003, N'AFLQ5003S6003Q8020', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8021, 0, 0, N'Rating', 1, NULL, N'Rating', 5, NULL, 6003, N'AFLQ5003S6003Q8021', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8022, 0, 0, N'Selection', 1, NULL, N'Selection - Copy', 3, NULL, 6003, N'AFLQ5003S6003Q8022', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8023, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (1)', 3, NULL, 6003, N'AFLQ5003S6003Q8023', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8024, 0, 0, N'Selection', 1, NULL, N'Selection - Copy - Copy', 3, NULL, 6003, N'AFLQ5003S6003Q8024', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8025, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (2)', 3, NULL, 6003, N'AFLQ5003S6003Q8025', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8026, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (3)', 3, NULL, 6004, N'AFLQ5003S6004Q8026', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8027, 0, 0, N'Selection', 1, NULL, N'Selection', 3, NULL, 6005, N'AFLQ5017S6005Q8027', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8029, 0, 0, N'Selection', 1, NULL, N'Selection', 3, NULL, 6006, N'AFLQ5018S6006Q8029', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8030, 0, 0, N'Emoji', 1, NULL, N'Emoji', 5, NULL, 6006, N'AFLQ5018S6006Q8030', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8031, 0, 0, N'Rating', 1, NULL, N'Rating', 5, NULL, 6006, N'AFLQ5018S6006Q8031', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8032, 0, 0, N'Selection', 1, NULL, N'Selection - Copy', 3, NULL, 6006, N'AFLQ5018S6006Q8032', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8033, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (1)', 3, NULL, 6006, N'AFLQ5018S6006Q8033', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8034, 0, 0, N'Selection', 1, NULL, N'Selection - Copy - Copy', 3, NULL, 6006, N'AFLQ5018S6006Q8034', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8035, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (2)', 3, NULL, 6006, N'AFLQ5018S6006Q8035', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (8036, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (3)', 3, NULL, 6007, N'AFLQ5018S6007Q8036', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9030, 0, 0, NULL, 1, NULL, N'Image', 7, NULL, 6005, N'AFLQ5017S6005Q9030', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9031, 0, 0, N'Selection', 1, NULL, N'Selection - Copy', 3, NULL, 6005, N'AFLQ5017S6005Q9031', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9032, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (1)', 3, NULL, 7007, N'AFLQ5017S7007Q9032', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9033, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (2)', 3, NULL, 6005, N'AFLQ5017S6005Q9033', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9034, 0, 0, N'Selection', 1, NULL, N'Selection', 3, NULL, NULL, N'AFLQ0S0Q9034', 0, NULL, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9035, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (3)', 3, NULL, 7007, N'AFLQ5017S7007Q9035', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9036, 0, 0, N'Rating', 1, NULL, N'Rating', 14, NULL, 7007, N'AFLQ5017S7007Q9036', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9037, 0, 0, N'Full name', 1, NULL, N'Full name', 1, NULL, 7007, N'AFLQ5017S7007Q9037', 0, 0, 9036)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9038, 0, 0, N'Emoji', 1, NULL, N'Emoji', 5, NULL, 7007, N'AFLQ5017S7007Q9038', 0, 0, 9036)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9039, 1, 0, N'Rating', 1, NULL, N'Rating - Copy', 14, NULL, 7007, N'AFLQ5017S7007Q9039', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9042, 1, 0, N'Rating', 1, NULL, N'Rating - Copy (1)', 14, NULL, 7007, N'AFLQ5017S7007Q9042', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9045, 1, 0, N'Rating', 1, NULL, N'Rating - Copy (2)', 14, NULL, 7007, N'AFLQ5017S7007Q9045', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9048, 0, 0, N'Rating', 1, NULL, N'Rating - Copy', 14, NULL, 7007, N'AFLQ5017S7007Q9048', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9049, 0, 0, N'Full name', 1, NULL, N'Full name - Copy', 1, NULL, 7007, N'AFLQ5017S7007Q9049', 0, 0, 9048)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (9050, 0, 0, N'Emoji', 1, NULL, N'Emoji - Copy', 5, NULL, 7007, N'AFLQ5017S7007Q9050', 0, 0, 9048)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (10030, 0, 0, N'Selection', 1, NULL, N'Selection - Copy', 3, NULL, 8007, N'AFLQ5019S8007Q10030', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (10031, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (1)', 3, NULL, 8007, N'AFLQ5019S8007Q10031', 0, 0, NULL)
INSERT [dbo].[Question] ([QuestionID], [IsDeleted], [IsSkip], [Keywords], [LayoutID], [PrintoutComment], [QuestionText], [QuestionTypeID], [ScreenComment], [SectionID], [UniqueID], [Mandatory], [LinkedQuestionId], [RepeatingQuestionId]) VALUES (10032, 0, 0, N'Selection', 1, NULL, N'Selection - Copy (2)', 3, NULL, 8007, N'AFLQ5019S8007Q10032', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[Questionnaire] ON 

INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (1, 1, NULL, CAST(N'2019-06-20T23:22:06.153' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Bang cau hoi 1', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-20T23:24:27.427' AS DateTime), N'Question Text (1 ques)', NULL, NULL, N'AFLQ1', 1, CAST(N'2019-06-20T23:24:35.6202871' AS DateTime2), 2, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (2, 1, NULL, CAST(N'2019-06-20T23:28:21.277' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Q1', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-20T23:30:45.170' AS DateTime), N'Q1', NULL, NULL, N'AFLQ2', 1, CAST(N'2019-06-20T23:32:58.5153021' AS DateTime2), 2, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (3, 1, NULL, CAST(N'2019-06-20T23:41:56.593' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Repeat Question', N'<p>Thank you for your joining survey!</p>', N'<p>Let begin!</p>', NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-26T22:00:20.223' AS DateTime), N'Repeat Question', NULL, NULL, N'AFLQ3', 1, CAST(N'2019-06-27T23:51:38.6321373' AS DateTime2), 2, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (1003, 1, NULL, CAST(N'2019-07-01T20:38:49.977' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Repeat Question Test 01-July', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-07-01T20:41:58.883' AS DateTime), N'Repeat Question Test 01-July', NULL, NULL, N'AFLQ1003', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (1004, 1, NULL, CAST(N'2019-07-02T22:42:54.837' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Repeat Question July', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-09-04T06:57:59.087' AS DateTime), N'Repeat Question July', NULL, NULL, N'AFLQ1004', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (1005, 1, NULL, CAST(N'2019-07-03T07:23:35.177' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Repeat Question CL', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-07-03T07:36:42.053' AS DateTime), N'Repeat Question CL', NULL, NULL, N'AFLQ1005', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (2003, 1, NULL, CAST(N'2019-07-31T22:37:57.537' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Emoji question', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-05T20:38:29.100' AS DateTime), N'Emoji question', NULL, NULL, N'AFLQ2003', 1, CAST(N'2019-08-05T21:13:45.7801534' AS DateTime2), 2, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (3003, 1, NULL, CAST(N'2019-08-01T07:33:32.013' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Scale Emoji', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-23T07:28:29.210' AS DateTime), N'Scale Emoji', NULL, NULL, N'AFLQ3003', 1, CAST(N'2019-08-23T07:34:24.1067252' AS DateTime2), 2, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (4003, 1, NULL, CAST(N'2019-08-08T23:34:30.567' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Scale Emoji - Normal and repeating', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-09T00:52:26.720' AS DateTime), N'Scale Emoji', NULL, NULL, N'AFLQ4003', 1, CAST(N'2019-08-09T08:11:04.9957533' AS DateTime2), 2, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5003, 1, NULL, CAST(N'2019-08-21T22:23:28.010' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-29T22:37:29.657' AS DateTime), N'Test duplicate', NULL, NULL, N'AFLQ5003', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5004, 1, NULL, CAST(N'2019-08-21T22:23:45.127' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:23:45.127' AS DateTime), N'Test duplicate - Copy', NULL, NULL, N'AFLQ5004', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5005, 1, NULL, CAST(N'2019-08-21T22:24:03.953' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:24:03.953' AS DateTime), N'Test duplicate - Copy', NULL, NULL, N'AFLQ5005', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5006, 1, NULL, CAST(N'2019-08-21T22:29:07.733' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:29:07.733' AS DateTime), N'Test duplicate - Copy (1)', NULL, NULL, N'AFLQ5006', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5007, 1, NULL, CAST(N'2019-08-21T22:39:24.687' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:39:24.687' AS DateTime), N'Test duplicate - Copy (2)', NULL, NULL, N'AFLQ5007', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5008, 1, NULL, CAST(N'2019-08-21T22:40:01.280' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:40:01.280' AS DateTime), N'Test duplicate - Copy (1) - Copy', NULL, NULL, N'AFLQ5008', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5009, 1, NULL, CAST(N'2019-08-21T22:40:24.683' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:40:24.683' AS DateTime), N'Test duplicate - Copy (3)', NULL, NULL, N'AFLQ5009', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5010, 1, NULL, CAST(N'2019-08-21T22:41:37.713' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:41:37.713' AS DateTime), N'Test duplicate - Copy (1) - Copy', NULL, NULL, N'AFLQ5010', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5011, 1, NULL, CAST(N'2019-08-21T22:44:37.723' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:44:37.723' AS DateTime), N'Test duplicate - Copy (1) - Copy (1)', NULL, NULL, N'AFLQ5011', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5012, 1, NULL, CAST(N'2019-08-21T22:47:37.773' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:47:37.773' AS DateTime), N'Test duplicate - Copy', NULL, NULL, N'AFLQ5012', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5013, 1, NULL, CAST(N'2019-08-21T22:48:00.013' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:48:00.013' AS DateTime), N'Test duplicate - Copy (1)', NULL, NULL, N'AFLQ5013', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5014, 1, NULL, CAST(N'2019-08-21T22:48:23.497' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:48:23.497' AS DateTime), N'Test duplicate - Copy (2)', NULL, NULL, N'AFLQ5014', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5015, 1, NULL, CAST(N'2019-08-21T22:48:47.387' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:48:47.387' AS DateTime), N'Test duplicate - Copy (1) - Copy', NULL, NULL, N'AFLQ5015', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5016, 1, NULL, CAST(N'2019-08-21T22:50:07.067' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-21T22:50:07.067' AS DateTime), N'Test duplicate - Copy (3)', NULL, NULL, N'AFLQ5016', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5017, 1, NULL, CAST(N'2019-08-29T22:39:02.383' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test copy question', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-09-01T16:32:17.043' AS DateTime), N'Test copy question', NULL, NULL, N'AFLQ5017', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5018, 1, NULL, CAST(N'2019-08-29T22:41:23.330' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test duplicate', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-29T22:41:23.330' AS DateTime), N'Test duplicate - Copy', NULL, NULL, N'AFLQ5018', 0, NULL, 0, 0, 0)
INSERT [dbo].[Questionnaire] ([QuestionnaireID], [ClientID], [CompleteMessage], [CreateTime], [CreatorID], [Description], [InfoEnd], [InfoStart], [IntroduceMessage], [IsDefault], [IsDeleted], [IsEnding], [IsHeader], [IsPrintCompMessage], [IsPrintIntroMessage], [IsScreenCompMessage], [IsScreenIntroMessage], [IsStart], [LanguageID], [ModifierID], [ModifyTime], [Name], [ShortDescription], [StatusID], [UniqueID], [IsPublic], [PublishedTime], [Status], [HaveMultipleSections], [IsLongitudinal]) VALUES (5019, 1, NULL, CAST(N'2019-09-02T20:43:21.570' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'Test copy question from another questionnaire', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-09-02T20:44:24.740' AS DateTime), N'Test copy question from another questionnaire', NULL, NULL, N'AFLQ5019', 0, NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Questionnaire] OFF
SET IDENTITY_INSERT [dbo].[QuestionType] ON 

INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (1, N'TQ        ', N'Text question', N'Text Question')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (3, N'SS        ', N'Single selection question', N'Selection Question')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (5, N'TS        ', N'Table scale question', N'Scale Question')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (6, N'TB        ', N'Table question', N'Table Question')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (7, N'IM        ', N'Image Question', N'Image Question')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (8, N'CT        ', N'Custom Table Question', N'Custom Table Question')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (10, N'DL        ', N'Data List', N'Data List')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (11, N'DS        ', N'Data Scale', N'Data Scale')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (12, N'GL        ', N'GPS Locale', N'GPS Locale')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (13, N'GL        ', N'Upload Photo', N'Upload Photo')
INSERT [dbo].[QuestionType] ([QuestionTypeID], [Code], [Description], [Name]) VALUES (14, N'RE        ', N'Repeating', N'Repeating')
SET IDENTITY_INSERT [dbo].[QuestionType] OFF
SET IDENTITY_INSERT [dbo].[RepeatingGroupSelection] ON 

INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (1, 1, 1, NULL, N'AFLQ3S3Q8RE1', NULL, 3, NULL, 3, 1, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (2, 1, 1, NULL, N'AFLQ1003S1003Q2005RE2', NULL, 8, NULL, 4, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (3, 1, 1, NULL, N'AFLQ1004S1004Q2007RE3', NULL, 3, N'Welcome to select and answer some question below  {Pipe_RepeatAnswerValue}  {Pipe_RepeatNum}/{Pipe_RepeatTotal} ', 5, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (4, 1, 1, NULL, N'AFLQ1005S1005Q2013RE4', NULL, 8, NULL, 10, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (1002, 1, 1, NULL, N'AFLQ4003S5003Q7013RE1002', NULL, 3, N'Hello everyone to select  {Pipe_RepeatAnswerValue} ', 10, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (2002, 1, 1, NULL, N'AFLQ5017S7007Q9036RE2002', NULL, 3, NULL, 10, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (2003, 1, 1, NULL, N'AFLQ5017S7007Q9039RE2003', NULL, 3, NULL, 10, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (2004, 1, 1, NULL, N'AFLQ5017S7007Q9042RE2004', NULL, 3, NULL, 10, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (2005, 1, 1, NULL, N'AFLQ5017S7007Q9045RE2005', NULL, 3, NULL, 10, 2, 0)
INSERT [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId], [SelectionTypeID], [QuestionLayoutID], [HeadText], [UniqueID], [DefaultValue], [AnswerDataTypeId], [Introduction], [Max], [Min], [IsRepeatFirstAnswerOnly]) VALUES (2006, 1, 1, NULL, N'AFLQ5017S7007Q9048RE2006', NULL, 3, NULL, 10, 2, 0)
SET IDENTITY_INSERT [dbo].[RepeatingGroupSelection] OFF
SET IDENTITY_INSERT [dbo].[RepeatingRespondentAnswer] ON 

INSERT [dbo].[RepeatingRespondentAnswer] ([RepeatingRespondentAnswerID], [VisitQuestionnaireId], [QuestionnaireID], [AnswerID], [ControlTypeID], [AnswerControlID], [AnswerControlUniqueID], [AnswerValue], [AnswerTime], [PatientId], [RespondentSurveyId], [QuestionId], [ChosenAnswerControlUniqueCode], [RespondentAnswerId]) VALUES (1, NULL, 4003, 2013, 5, 4023, N'AFLQ4003S5003Q7013RE1002.SL2003.AFLQ4003S5003Q7015.R2013_2003_2003', N'1', NULL, NULL, 2002, 7015, N'AFLQ4003S5003Q7015.R2013__4023__2003', 1)
INSERT [dbo].[RepeatingRespondentAnswer] ([RepeatingRespondentAnswerID], [VisitQuestionnaireId], [QuestionnaireID], [AnswerID], [ControlTypeID], [AnswerControlID], [AnswerControlUniqueID], [AnswerValue], [AnswerTime], [PatientId], [RespondentSurveyId], [QuestionId], [ChosenAnswerControlUniqueCode], [RespondentAnswerId]) VALUES (2, NULL, 4003, 2028, 5, 4020, N'AFLQ4003S5003Q7013RE1002.SL2003.AFLQ4003S5003Q7014.R2028_2003_2003', N'5', NULL, NULL, 2002, 7014, N'AFLQ4003S5003Q7014.R2028__4020__2003', 1)
SET IDENTITY_INSERT [dbo].[RepeatingRespondentAnswer] OFF
SET IDENTITY_INSERT [dbo].[RepeatingSelectionGroup] ON 

INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1, 1, 1, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2, 1, 2, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3, 1, 3, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (4, 1, 4, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (5, 1, 5, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (6, 1, 6, 6)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (7, 1, 7, 7)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1002, 2, 1002, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1003, 3, 1003, 6)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1004, 3, 1004, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1005, 3, 1005, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1006, 3, 1006, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1007, 3, 1007, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1008, 3, 1008, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (1009, 4, 1009, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2002, 1002, 2002, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2003, 1002, 2003, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2004, 1002, 2004, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2005, 1002, 2005, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (2006, 1002, 2006, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3002, 2002, 3002, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3003, 2002, 3003, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3004, 2002, 3004, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3005, 2002, 3005, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3006, 2002, 3006, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3007, 2003, 3007, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3008, 2003, 3008, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3009, 2003, 3009, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3010, 2003, 3010, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3011, 2003, 3011, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3012, 2004, 3012, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3013, 2004, 3013, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3014, 2004, 3014, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3015, 2004, 3015, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3016, 2004, 3016, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3017, 2005, 3017, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3018, 2005, 3018, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3019, 2005, 3019, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3020, 2005, 3020, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3021, 2005, 3021, 5)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3022, 2006, 3022, 1)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3023, 2006, 3023, 2)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3024, 2006, 3024, 3)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3025, 2006, 3025, 4)
INSERT [dbo].[RepeatingSelectionGroup] ([RepeatingSelectionGroupId], [GroupID], [SelectionID], [OrderNumber]) VALUES (3026, 2006, 3026, 5)
SET IDENTITY_INSERT [dbo].[RepeatingSelectionGroup] OFF
SET IDENTITY_INSERT [dbo].[RepeatingSingleSelection] ON 

INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1, 1, 1, N'None', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL1', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (2, 1, 0, N'McDonalds', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL2', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3, 1, 0, N'Lottie', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL3', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (4, 1, 0, N'KFC', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL4', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (5, 1, 0, N'SaiGon Ngo', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL5', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (6, 1, 0, N'Fannys', N'6', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL6', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (7, 1, 0, N'Noir', N'7', NULL, 0, NULL, 0, NULL, 0, N'AFLQ3S3Q8RE1.SL7', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1002, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1003S1003Q2005RE2.SL1002', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1003, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2007RE3.SL1003', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1004, 1, 0, N'KFC', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2007RE3.SL1004', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1005, 1, 0, N'Jolibee', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2007RE3.SL1005', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1006, 1, 0, N'SaiGonNgo', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2007RE3.SL1006', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1007, 1, 0, N'McDonald''s', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2007RE3.SL1007', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1008, 1, 0, N'Noins', N'6', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1004S1004Q2007RE3.SL1008', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (1009, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ1005S1005Q2013RE4.SL1009', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (2002, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ4003S5003Q7013RE1002.SL2002', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (2003, 1, 0, N'AC Milan', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ4003S5003Q7013RE1002.SL2003', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (2004, 1, 0, N'MU', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ4003S5003Q7013RE1002.SL2004', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (2005, 1, 0, N'Chease FC', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ4003S5003Q7013RE1002.SL2005', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (2006, 1, 0, N'Real Madrid', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ4003S5003Q7013RE1002.SL2006', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3002, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9036RE2002.SL3002', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3003, 1, 0, N'KFC', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9036RE2002.SL3003', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3004, 1, 0, N'Jollibee', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9036RE2002.SL3004', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3005, 1, 0, N'MC Donalds', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9036RE2002.SL3005', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3006, 1, 0, N'Sai gon ngo', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9036RE2002.SL3006', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3007, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9039RE2003.SL3007', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3008, 1, 0, N'KFC', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9039RE2003.SL3008', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3009, 1, 0, N'Jollibee', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9039RE2003.SL3009', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3010, 1, 0, N'MC Donalds', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9039RE2003.SL3010', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3011, 1, 0, N'Sai gon ngo', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9039RE2003.SL3011', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3012, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9042RE2004.SL3012', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3013, 1, 0, N'KFC', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9042RE2004.SL3013', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3014, 1, 0, N'Jollibee', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9042RE2004.SL3014', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3015, 1, 0, N'MC Donalds', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9042RE2004.SL3015', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3016, 1, 0, N'Sai gon ngo', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9042RE2004.SL3016', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3017, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9045RE2005.SL3017', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3018, 1, 0, N'KFC', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9045RE2005.SL3018', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3019, 1, 0, N'Jollibee', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9045RE2005.SL3019', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3020, 1, 0, N'MC Donalds', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9045RE2005.SL3020', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3021, 1, 0, N'Sai gon ngo', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9045RE2005.SL3021', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3022, 1, 1, N'None of them', N'1', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9048RE2006.SL3022', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3023, 1, 0, N'KFC', N'2', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9048RE2006.SL3023', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3024, 1, 0, N'Jollibee', N'3', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9048RE2006.SL3024', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3025, 1, 0, N'MC Donalds', N'4', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9048RE2006.SL3025', 1)
INSERT [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId], [SelectionTypeID], [IsShowRepeatingInfo], [Text], [Value], [Comment], [IsGoTo], [GoToQuestionID], [IsSubQuestion], [SubQuestionID], [IsSameRow], [UniqueID], [IsActive]) VALUES (3026, 1, 0, N'Sai gon ngo', N'5', NULL, 0, NULL, 0, NULL, 0, N'AFLQ5017S7007Q9048RE2006.SL3026', 1)
SET IDENTITY_INSERT [dbo].[RepeatingSingleSelection] OFF
SET IDENTITY_INSERT [dbo].[RespondentAnswer] ON 

INSERT [dbo].[RespondentAnswer] ([RespondentAnswerID], [AnswerControlID], [AnswerControlUniqueID], [AnswerID], [AnswerTime], [AnswerValue], [ControlTypeID], [QuestionnaireID], [PatientId], [VisitQuestionnaireId], [RespondentSurveyId], [QuestionId], [ChosenAnswerControlUniqueCode]) VALUES (1, 2003, N'AFLQ4003S5003Q7013RE1002.SL2003', 2003, NULL, N'1', 3, 4003, NULL, NULL, 2002, 7013, N'AFLQ4003S5003Q7013RE1002.SL2003')
INSERT [dbo].[RespondentAnswer] ([RespondentAnswerID], [AnswerControlID], [AnswerControlUniqueID], [AnswerID], [AnswerTime], [AnswerValue], [ControlTypeID], [QuestionnaireID], [PatientId], [VisitQuestionnaireId], [RespondentSurveyId], [QuestionId], [ChosenAnswerControlUniqueCode]) VALUES (2, 2004, N'AFLQ4003S5003Q7013RE1002.SL2004', 2004, NULL, N'2', 3, 4003, NULL, NULL, 2002, 7013, N'AFLQ4003S5003Q7013RE1002.SL2004')
SET IDENTITY_INSERT [dbo].[RespondentAnswer] OFF
SET IDENTITY_INSERT [dbo].[RespondentSurvey] ON 

INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1, 0, 0, NULL, 0, 0, 0, 1, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (2, 0, 0, NULL, 0, 0, 0, 2, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1002, 0, 0, NULL, 0, 0, 0, 1002, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1003, 0, 0, NULL, 0, 0, 0, 1003, N'10f883e8-0399-472c-af88-d395956b5540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1004, 0, 0, NULL, 0, 0, 0, 1003, N'9e01e90a-35f5-4470-b6b7-8935a7fc8cab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1005, 0, 0, NULL, 0, 0, 0, 1003, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1006, 0, 0, NULL, 0, 0, 0, 1005, N'10f883e8-0399-472c-af88-d395956b5540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1007, 0, 0, NULL, 0, 0, 0, 1005, N'9e01e90a-35f5-4470-b6b7-8935a7fc8cab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1008, 0, 0, NULL, 0, 0, 0, 1005, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1009, 0, 0, NULL, 0, 0, 0, 1006, N'10f883e8-0399-472c-af88-d395956b5540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1010, 0, 0, NULL, 0, 0, 0, 1006, N'9e01e90a-35f5-4470-b6b7-8935a7fc8cab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (1011, 0, 0, NULL, 0, 0, 0, 1006, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (2002, 0, 0, NULL, 0, 1, 0, 3002, N'10f883e8-0399-472c-af88-d395956b5540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (2003, 0, 0, NULL, 0, 0, 0, 3002, N'9e01e90a-35f5-4470-b6b7-8935a7fc8cab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
INSERT [dbo].[RespondentSurvey] ([RespondentSurveyId], [Avg], [Calc], [CompleteSurveyDate], [Max], [Status], [Sum], [SurveyId], [UserId], [SurveyAssignId], [SurveyAssignReminderId], [UsedName], [Code], [LastSendSurveyClosureDate], [LastSendSurveyInvitationDate], [LastSendSurveyReminderDate], [LastSendSurveyStarterDate], [LastSendSurveyThankyouDate], [TotalTimesSendReminder], [TotalTimesSendStarter], [AssignNumber]) VALUES (2004, 0, 0, NULL, 0, 0, 0, 3002, N'bbdf8f74-4a73-4b22-8cdf-32859d7872dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[RespondentSurvey] OFF
SET IDENTITY_INSERT [dbo].[RespondentType] ON 

INSERT [dbo].[RespondentType] ([RespondentTypeID], [Name]) VALUES (1, N'Respondent')
INSERT [dbo].[RespondentType] ([RespondentTypeID], [Name]) VALUES (2, N'Participant')
SET IDENTITY_INSERT [dbo].[RespondentType] OFF
SET IDENTITY_INSERT [dbo].[Scale] ON 

INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (1, 0, 0, 0, 0, 1, 0, 5, 0, 2, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2, 1, 0, 0, 0, 1, 0, 4, 0, 1, 1)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2002, 0, 0, 0, 0, 1, 0, 4, 0, 1, 1)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2003, 0, 0, 0, 1, 1, 0, 3, 2, 2, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2004, 2, 0, 0, 0, 1, 0, 4, 0, 1, 1)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2005, 1, 0, 0, 1, 1, 0, 3, 2, 2, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2006, 3, 0, 0, 0, 1, 0, 7, 0, 1, 1)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (2007, 3, 0, 0, 1, 1, 0, 4, 2, 2, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (3002, 0, 0, 0, 0, 1, 0, 3, 0, 1, 1)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (3003, 0, 0, 0, 1, 1, 0, 3, 3, 2, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (3004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (3005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (4004, 0, 0, 0, 0, 1, 0, 3, 0, 1, 1)
INSERT [dbo].[Scale] ([ScaleID], [DefaultValueColumn], [IsCountValue], [IsDefaultValue], [IsRangeText], [IsRowLabel], [IsSumValue], [NumOfCols], [NumOfRange], [NumOfRows], [IsEmoji]) VALUES (4008, NULL, 0, 0, 0, 1, 0, 3, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Scale] OFF
SET IDENTITY_INSERT [dbo].[ScaleColumn] ON 

INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (1, 1, N'1', 1, NULL, N'1', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (2, 2, N'2', 1, NULL, N'2', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (3, 3, N'3', 1, NULL, N'3', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4, 4, N'4', 1, NULL, N'4', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5, 5, N'5', 1, NULL, N'5', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (3002, 1, N'Happy', 2, NULL, N'1', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (3003, 2, N'Normal', 2, NULL, N'2', NULL, N'blushing.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (3004, 3, N'Sad', 2, NULL, N'3', NULL, N'speechless.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (3005, 4, N'Worried', 2, NULL, N'4', NULL, N'worried.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4002, 1, N'Sad', 2002, NULL, N'1', NULL, N'sadsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4003, 2, N'Normal', 2002, NULL, N'2', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4004, 3, N'Surprise', 2002, NULL, N'3', NULL, N'worried.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4005, 4, N'Happy', 2002, NULL, N'4', NULL, N'bigsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4006, 1, N'C1', 2003, NULL, N'1', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4007, 2, N'C2', 2003, NULL, N'2', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4008, 3, N'C2', 2003, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4009, 1, N'Sad', 2004, NULL, N'1', NULL, N'sadsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4010, 2, N'Normal', 2004, NULL, N'2', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4011, 3, N'Surprise', 2004, NULL, N'3', NULL, N'worried.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4012, 4, N'Happy', 2004, NULL, N'4', NULL, N'bigsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4013, 1, N'C1', 2005, NULL, N'1', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4014, 2, N'C2', 2005, NULL, N'2', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4015, 3, N'C2', 2005, NULL, NULL, NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4016, 1, N'Happy', 2006, NULL, N'1', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4017, 2, N'Contented', 2006, NULL, N'2', NULL, N'angry.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4018, 3, N'Excited', 2006, NULL, N'3', NULL, N'bigsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4019, 4, N'Restless', 2006, NULL, N'4', NULL, N'doh.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4020, 5, N'Sad', 2006, NULL, N'5', NULL, N'sadsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4021, 6, N'Worried', 2006, NULL, N'6', NULL, N'worried.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4022, 7, N'Angry', 2006, NULL, N'7', NULL, N'angry.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4023, 1, N'C1', 2007, NULL, N'1', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4024, 2, N'C2', 2007, NULL, N'2', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4025, 3, N'C3', 2007, NULL, N'3', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (4026, 4, N'C4', 2007, NULL, N'4', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5002, 1, N'Happy', 3002, NULL, N'1', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5003, 2, N'Sad', 3002, NULL, N'2', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5004, 3, N'Normal', 3002, NULL, N'3', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5005, 1, N'C1', 3003, NULL, N'1', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5006, 2, N'C3', 3003, NULL, N'3', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (5007, 3, N'C2', 3003, NULL, N'2', NULL, NULL)
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (6008, 1, N'Happy', 4004, NULL, N'1', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (6009, 2, N'Normal', 4004, NULL, N'2', NULL, N'angry.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (6010, 3, N'Sad', 4004, NULL, N'3', NULL, N'sadsmile.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (6020, 1, N'Happy', 4008, NULL, N'1', NULL, N'happy.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (6021, 2, N'Normal', 4008, NULL, N'2', NULL, N'angry.png')
INSERT [dbo].[ScaleColumn] ([ScaleColumnID], [ColNumber], [FirstLabel], [ScaleID], [SecondLabel], [Value], [Width], [Emoji]) VALUES (6022, 3, N'Sad', 4008, NULL, N'3', NULL, N'sadsmile.png')
SET IDENTITY_INSERT [dbo].[ScaleColumn] OFF
SET IDENTITY_INSERT [dbo].[ScaleRange] ON 

INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (1, N'R1', 1, 2003)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (2, N'R2', 2, 2003)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (3, N'R1', 1, 2005)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (4, N'R2', 2, 2005)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (5, N'R1', 1, 2007)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (6, N'R2', 2, 2007)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (1002, N'Range 1', 1, 3003)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (1003, N'Range 2', 2, 3003)
INSERT [dbo].[ScaleRange] ([RangeID], [RangeLabel], [RangeNumber], [ScaleID]) VALUES (1004, N'Range 3', 3, 3003)
SET IDENTITY_INSERT [dbo].[ScaleRange] OFF
SET IDENTITY_INSERT [dbo].[ScaleRow] ON 

INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (1, NULL, N'Color', N'Color', 1, 1, N'AFLQ1004S1004Q3005.R1', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2, NULL, N'Taste', N'Taste', 2, 1, N'AFLQ1004S1004Q3005.R2', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (1002, NULL, N'satisfied about service', N'How satisfied are you with our services?', 1, 2, N'AFLQ2003S3003Q5009.R1002', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2002, NULL, N'Emoji scale', N'Emoji scale', 1, 2002, N'AFLQ3003S4003Q7009.R2002', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2003, NULL, N'R1', N'R1', 1, 2003, N'AFLQ3003S4003Q7010.R2003', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2004, NULL, N'R2', N'R2', 2, 2003, N'AFLQ3003S4003Q7010.R2004', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2006, NULL, N'R1', N'R1', 1, 2005, N'AFLQ4003S5003Q7012.R2006', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2007, NULL, N'R2', N'R2', 2, 2005, N'AFLQ4003S5003Q7012.R2007', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2013, NULL, N'R1', N'R1', 1, 2007, N'AFLQ4003S5003Q7015.R2013', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2014, NULL, N'R2', N'R2', 2, 2007, N'AFLQ4003S5003Q7015.R2014', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2027, NULL, N'Emoji scale', N'Emoji scale', 1, 2004, N'AFLQ4003S5003Q7011.R2027', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (2028, NULL, N'Scale emoji', N'Scale emoji', 1, 2006, N'AFLQ4003S5003Q7014.R2028', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (3002, NULL, N'Emoji', N'Emoji', 1, 3002, N'AFLQ5003S6003Q8020.R3002', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (3003, NULL, N'R1', N'R1', 1, 3003, N'AFLQ5003S6003Q8021.R3003', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (3004, NULL, N'R2', N'R2', 2, 3003, N'AFLQ5003S6003Q8021.R3004', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (4005, NULL, N'Emoji', N'Emoji', 1, 4004, N'AFLQ5017S7007Q9038.R4005', NULL)
INSERT [dbo].[ScaleRow] ([ScaleRowID], [Height], [Keywords], [RowLabel], [RowNumber], [ScaleID], [UniqueID], [DataListAnswerID]) VALUES (4009, NULL, N'Emoji', N'Emoji', 1, 4008, N'AFLQ5017S7007Q9050.R4009', NULL)
SET IDENTITY_INSERT [dbo].[ScaleRow] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (1, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 1, N'Section A', N'AFLQ1S1', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (2, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 2, N'Section A', N'AFLQ2S2', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (3, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 3, N'Restaurant', N'AFLQ3S3', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (1003, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 1003, N'Section A', N'AFLQ1003S1003', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (1004, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'B', 2, 1004, N'Section AA', N'AFLQ1004S1004', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (1005, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 1005, N'Section A', N'AFLQ1005S1005', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (2003, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'B', 2, 1004, N'Section B', N'AFLQ1004S2003', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (3003, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 2003, N'Section A', N'AFLQ2003S3003', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (4003, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 3003, N'Section A', N'AFLQ3003S4003', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (5003, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 4003, N'Section A', N'AFLQ4003S5003', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (6003, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 5003, N'Section A', N'AFLQ5003S6003', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (6004, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'B', 2, 5003, N'Section B', N'AFLQ5003S6004', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (6005, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 5017, N'Simple question', N'AFLQ5017S6005', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (6006, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 5018, N'Section A', N'AFLQ5018S6006', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (6007, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'B', 2, 5018, N'Section B', N'AFLQ5018S6007', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (7007, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'B', 2, 5017, N'Complex', N'AFLQ5017S7007', 1)
INSERT [dbo].[Section] ([SectionID], [Header], [IsCountValue], [IsDeleted], [IsExcludeDefaultValue], [IsNumberingQuestion], [IsNumberingSection], [IsPrintOut], [IsScreen], [IsSumValue], [IsTitlePrintOut], [IsTitleScreen], [NumberingTypeID], [OrderCharacter], [OrderNumber], [QuestionnaireID], [Title], [UniqueID], [IsEnable]) VALUES (8007, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, N'A', 1, 5019, N'Section A', N'AFLQ5019S8007', 1)
SET IDENTITY_INSERT [dbo].[Section] OFF
SET IDENTITY_INSERT [dbo].[SectionContextTag] ON 

INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (1, NULL, NULL, 1)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (2, NULL, NULL, 2)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (3, N'restaurant', NULL, 3)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (1003, NULL, NULL, 1003)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (1004, NULL, NULL, 1004)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (1005, NULL, NULL, 1005)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (2003, NULL, NULL, 2003)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (3003, NULL, NULL, 3003)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (4003, NULL, NULL, 4003)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (5003, NULL, NULL, 5003)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (6003, NULL, NULL, 6003)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (6004, NULL, NULL, 6004)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (6005, NULL, NULL, 6005)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (6006, NULL, NULL, 6006)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (6007, NULL, NULL, 6007)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (7006, NULL, NULL, 7007)
INSERT [dbo].[SectionContextTag] ([SectionTagID], [ContextTag], [OrderNumber], [SectionID]) VALUES (8006, NULL, NULL, 8007)
SET IDENTITY_INSERT [dbo].[SectionContextTag] OFF
SET IDENTITY_INSERT [dbo].[SectionItems] ON 

INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2, 2, 1, 1, 2)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (3, 3, 1, 2, 2)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (4, 4, 1, 3, 2)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (5, 5, 1, 1, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (6, 6, 1, 2, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7, 7, 1, 3, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8, 8, 1, 4, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9, 9, 1, 1, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (10, 10, 1, 2, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (11, 11, 1, 3, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (12, 12, 1, 4, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (13, 13, 1, 5, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (1005, 1005, 1, 6, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (1006, 1006, 1, 6, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (1007, 1007, 1, 7, 3)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2005, 2005, 1, 0, 1003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2006, 2006, 1, 4, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2007, 2007, 1, 5, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2008, 2008, 1, 1, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2009, 2009, 1, 2, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2010, 2010, 1, 3, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2011, 2011, 1, 4, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2012, 2012, 1, 1, 1005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2013, 2013, 1, 2, 1005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2014, 2014, 1, 1, 1005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (2015, 2015, 1, 2, 1005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (3005, 3005, 1, 5, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (3006, 3006, 1, 1, 2003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (4005, 4005, 1, 2, 2003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (4006, 4006, 1, 3, 2003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (4007, 4007, 1, 1, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (4008, 4008, 1, 2, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (4009, 4009, 1, 3, 1004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (5009, 5009, 1, 1, 3003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (6009, 6009, 1, 1, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7009, 7009, 1, 1, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7010, 7010, 1, 2, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7011, 7011, 1, 1, 5003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7012, 7012, 1, 2, 5003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7013, 7013, 1, 3, 5003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7014, 7014, 1, 1, 5003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (7015, 7015, 1, 2, 5003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8009, 8009, 1, 3, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8010, 8010, 1, 4, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8011, 8011, 1, 5, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8012, 8013, 1, 5, 4003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8013, 8016, 1, 1, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8014, 8017, 1, 2, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8015, 8020, 1, 2, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8016, 8021, 1, 3, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8017, 8022, 1, 4, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8018, 8023, 1, 5, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8019, 8024, 1, 6, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8020, 8025, 1, 7, 6003)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8021, 8026, 1, 1, 6004)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8022, 8027, 1, 1, 6005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8023, 8028, 1, 2, 6005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8024, 8029, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8025, 8030, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8026, 8031, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8027, 8032, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8028, 8033, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8029, 8034, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8030, 8035, 1, 0, 6006)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (8031, 8036, 1, 0, 6007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9025, 9030, 1, 2, 6005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9026, 9031, 1, 3, 6005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9027, 9032, 1, 1, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9028, 9033, 1, 4, 6005)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9029, 9035, 1, 2, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9030, 9036, 1, 3, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9031, 9037, 1, 1, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9032, 9038, 1, 2, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9033, 9039, 1, 4, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9034, 9040, 1, 1, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9035, 9041, 1, 2, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9036, 9042, 1, 5, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9037, 9043, 1, 1, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9038, 9044, 1, 2, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9039, 9045, 1, 6, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9040, 9046, 1, 1, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9041, 9047, 1, 2, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9042, 9048, 1, 7, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9043, 9049, 1, 1, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (9044, 9050, 1, 2, 7007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (10025, 10030, 1, 1, 8007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (10026, 10031, 1, 2, 8007)
INSERT [dbo].[SectionItems] ([SectionOrderID], [ItemID], [ItemTypeID], [OrderNumber], [SectionID]) VALUES (10027, 10032, 1, 3, 8007)
SET IDENTITY_INSERT [dbo].[SectionItems] OFF
SET IDENTITY_INSERT [dbo].[SectionItemType] ON 

INSERT [dbo].[SectionItemType] ([ItemTypeID], [Code], [Description], [Name]) VALUES (1, N'QUESTION  ', NULL, N'Question')
INSERT [dbo].[SectionItemType] ([ItemTypeID], [Code], [Description], [Name]) VALUES (2, N'HEADER    ', NULL, N'Header')
SET IDENTITY_INSERT [dbo].[SectionItemType] OFF
SET IDENTITY_INSERT [dbo].[SelectionGroup] ON 

INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (1, 1, 1, 1)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2, 1, 2, 2)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3, 1, 3, 3)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4, 1, 4, 4)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (5, 2, 1, 5)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (6, 2, 2, 6)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (7, 2, 3, 7)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (8, 3, 1, 8)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (9, 3, 2, 9)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (10, 4, 1, 10)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (11, 4, 2, 11)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (12, 4, 3, 12)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (13, 5, 1, 13)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (14, 5, 2, 14)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (1002, 1002, 1, 1002)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (1003, 1002, 2, 1003)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (1004, 1002, 3, 1004)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2002, 2002, 1, 2002)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2003, 2002, 2, 2003)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2004, 2002, 3, 2004)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2005, 2003, 1, 2005)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2006, 2003, 2, 2006)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2007, 2003, 3, 2007)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2008, 2003, 4, 2008)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2009, 2003, 5, 2009)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2014, 2006, 1, 2014)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2015, 2007, 1, 2015)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2016, 2007, 2, 2016)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2017, 2007, 3, 2017)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2018, 2006, 2, 2018)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2019, 2008, 1, 2019)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2020, 2008, 3, 2020)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2021, 2008, 2, 2021)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2025, 2010, 1, 2025)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2026, 2010, 3, 2026)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2027, 2010, 2, 2027)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2028, 2011, 1, 2028)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2029, 2011, 3, 2029)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2030, 2011, 2, 2030)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2031, 2012, 1, 2031)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2032, 2012, 3, 2032)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2033, 2012, 2, 2033)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2034, 2013, 1, 2034)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2035, 2013, 3, 2035)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2036, 2013, 2, 2036)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2037, 2014, 1, 2037)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2038, 2014, 3, 2038)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2039, 2014, 2, 2039)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2040, 2015, 1, 2040)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2041, 2015, 3, 2041)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2042, 2015, 2, 2042)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2046, 2017, 1, 2046)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2047, 2017, 3, 2047)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2048, 2017, 2, 2048)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2049, 2018, 1, 2049)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2050, 2018, 3, 2050)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2051, 2018, 2, 2051)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2052, 2019, 1, 2052)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2053, 2019, 3, 2053)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2054, 2019, 2, 2054)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2055, 2020, 1, 2055)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2056, 2020, 3, 2056)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2057, 2020, 2, 2057)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2058, 2021, 1, 2058)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2059, 2021, 3, 2059)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2060, 2021, 2, 2060)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2061, 2022, 1, 2061)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2062, 2022, 3, 2062)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (2063, 2022, 2, 2063)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3049, 3018, 1, 3049)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3050, 3018, 3, 3050)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3051, 3018, 2, 3051)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3052, 3019, 1, 3052)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3053, 3019, 3, 3053)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3054, 3019, 2, 3054)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3055, 3020, 1, 3055)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3056, 3020, 3, 3056)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3057, 3020, 2, 3057)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3058, 3021, 1, 3058)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3059, 3021, 3, 3059)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3060, 3021, 2, 3060)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3061, 3022, 1, 3061)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3062, 3022, 3, 3062)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (3063, 3022, 2, 3063)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4049, 4018, 1, 4049)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4050, 4018, 3, 4050)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4051, 4018, 2, 4051)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4052, 4019, 1, 4052)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4053, 4019, 3, 4053)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4054, 4019, 2, 4054)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4055, 4020, 1, 4055)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4056, 4020, 3, 4056)
INSERT [dbo].[SelectionGroup] ([SelectionGroupID], [GroupID], [OrderNumber], [SelectionID]) VALUES (4057, 4020, 2, 4057)
SET IDENTITY_INSERT [dbo].[SelectionGroup] OFF
SET IDENTITY_INSERT [dbo].[SelectionType] ON 

INSERT [dbo].[SelectionType] ([SelectionTypeID], [Code], [Description], [Name]) VALUES (1, N'CB        ', NULL, N'Checkbox')
INSERT [dbo].[SelectionType] ([SelectionTypeID], [Code], [Description], [Name]) VALUES (2, N'RB        ', NULL, N'Radio Button')
INSERT [dbo].[SelectionType] ([SelectionTypeID], [Code], [Description], [Name]) VALUES (3, N'DD        ', N'Dropdown List', N'Dropdown')
SET IDENTITY_INSERT [dbo].[SelectionType] OFF
SET IDENTITY_INSERT [dbo].[SingleSelection] ON 

INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (1, NULL, NULL, 0, 0, 0, 1, NULL, N'Daily', N'AFLQ3S3Q5GS1.SS1', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2, NULL, NULL, 0, 0, 0, 1, NULL, N'Weekly', N'AFLQ3S3Q5GS1.SS2', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3, NULL, NULL, 0, 0, 0, 1, NULL, N'Monthly', N'AFLQ3S3Q5GS1.SS3', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4, NULL, NULL, 0, 0, 0, 1, NULL, N'Once in three months', N'AFLQ3S3Q5GS1.SS4', N'4')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (5, NULL, NULL, 0, 0, 0, 2, NULL, N'The food is great', N'AFLQ3S3Q9GS2.SS5', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (6, NULL, NULL, 0, 0, 0, 2, NULL, N'It is romantic', N'AFLQ3S3Q9GS2.SS6', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (7, NULL, NULL, 0, 0, 0, 2, NULL, N'Family friendly', N'AFLQ3S3Q9GS2.SS7', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (8, NULL, NULL, 0, 0, 0, 2, NULL, N'Yes', N'AFLQ3S3Q10GS3.SS8', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (9, NULL, NULL, 0, 0, 0, 2, NULL, N'No', N'AFLQ3S3Q10GS3.SS9', N'0')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (10, NULL, NULL, 0, 0, 0, 2, NULL, N'Indoors only', N'AFLQ3S3Q11GS4.SS10', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (11, NULL, NULL, 0, 0, 0, 2, NULL, N'Outdoors only', N'AFLQ3S3Q11GS4.SS11', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (12, NULL, NULL, 0, 0, 0, 2, NULL, N'Both indoors and outdoors', N'AFLQ3S3Q11GS4.SS12', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (13, NULL, NULL, 0, 0, 0, 2, NULL, N'Yes', N'AFLQ3S3Q12GS5.SS13', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (14, NULL, NULL, 0, 0, 0, 2, NULL, N'No', N'AFLQ3S3Q12GS5.SS14', N'0')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (1002, NULL, NULL, 0, 0, 0, 2, NULL, N'Bad', N'AFLQ1004S1004Q2009GS1002.SS1002', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (1003, NULL, NULL, 0, 0, 0, 2, NULL, N'Good', N'AFLQ1004S1004Q2009GS1002.SS1003', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (1004, NULL, NULL, 0, 0, 0, 2, NULL, N'Excited', N'AFLQ1004S1004Q2009GS1002.SS1004', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2002, NULL, NULL, 0, 0, 0, 2, NULL, N'MU', N'AFLQ3003S4003Q8009GS2002.SS2002', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2003, NULL, NULL, 0, 0, 0, 2, NULL, N'Chease', N'AFLQ3003S4003Q8009GS2002.SS2003', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2004, NULL, NULL, 0, 0, 0, 2, NULL, N'Man City', N'AFLQ3003S4003Q8009GS2002.SS2004', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2005, NULL, NULL, 0, 0, 0, 1, NULL, N'MU', N'AFLQ3003S4003Q8010GS2003.SS2005', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2006, NULL, NULL, 0, 0, 0, 1, NULL, N'Chease', N'AFLQ3003S4003Q8010GS2003.SS2006', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2007, NULL, NULL, 0, 0, 0, 1, NULL, N'Man City', N'AFLQ3003S4003Q8010GS2003.SS2007', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2008, NULL, NULL, 0, 0, 0, 1, NULL, N'Tottenham Hotspur', N'AFLQ3003S4003Q8010GS2003.SS2008', N'4')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2009, NULL, NULL, 0, 0, 0, 1, NULL, N'Arsenal', N'AFLQ3003S4003Q8010GS2003.SS2009', N'5')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2014, NULL, NULL, 0, 0, 1, 2, 8014, N'AAA', N'AFLQ3003S4003Q8013GS2006.SS2014', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2015, NULL, NULL, 0, 0, 0, 2, NULL, N'ABC', N'AFLQ3003S4003Q8014GS2007.SS2015', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2016, NULL, NULL, 0, 0, 0, 2, NULL, N'DEF', N'AFLQ3003S4003Q8014GS2007.SS2016', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2017, NULL, NULL, 0, 0, 0, 2, NULL, N'MNP', N'AFLQ3003S4003Q8014GS2007.SS2017', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2018, NULL, NULL, 0, 0, 1, 2, 8015, N'BBB', N'AFLQ3003S4003Q8013GS2006.SS2018', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2019, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5003S6003Q8016GS2008.SS2019', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2020, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5003S6003Q8016GS2008.SS2020', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2021, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5003S6003Q8016GS2008.SS2021', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2025, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5003S6003Q8022GS2010.SS2025', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2026, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5003S6003Q8022GS2010.SS2026', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2027, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5003S6003Q8022GS2010.SS2027', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2028, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5003S6003Q8023GS2011.SS2028', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2029, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5003S6003Q8023GS2011.SS2029', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2030, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5003S6003Q8023GS2011.SS2030', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2031, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5003S6003Q8024GS2012.SS2031', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2032, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5003S6003Q8024GS2012.SS2032', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2033, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5003S6003Q8024GS2012.SS2033', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2034, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5003S6003Q8025GS2013.SS2034', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2035, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5003S6003Q8025GS2013.SS2035', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2036, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5003S6003Q8025GS2013.SS2036', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2037, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5003S6004Q8026GS2014.SS2037', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2038, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5003S6004Q8026GS2014.SS2038', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2039, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5003S6004Q8026GS2014.SS2039', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2040, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5017S6005Q8027GS2015.SS2040', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2041, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5017S6005Q8027GS2015.SS2041', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2042, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5017S6005Q8027GS2015.SS2042', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2046, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5018S6006Q8029GS2017.SS2046', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2047, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5018S6006Q8029GS2017.SS2047', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2048, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5018S6006Q8029GS2017.SS2048', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2049, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5018S6006Q8032GS2018.SS2049', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2050, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5018S6006Q8032GS2018.SS2050', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2051, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5018S6006Q8032GS2018.SS2051', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2052, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5018S6006Q8033GS2019.SS2052', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2053, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5018S6006Q8033GS2019.SS2053', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2054, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5018S6006Q8033GS2019.SS2054', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2055, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5018S6006Q8034GS2020.SS2055', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2056, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5018S6006Q8034GS2020.SS2056', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2057, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5018S6006Q8034GS2020.SS2057', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2058, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5018S6006Q8035GS2021.SS2058', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2059, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5018S6006Q8035GS2021.SS2059', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2060, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5018S6006Q8035GS2021.SS2060', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2061, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5018S6007Q8036GS2022.SS2061', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2062, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5018S6007Q8036GS2022.SS2062', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (2063, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5018S6007Q8036GS2022.SS2063', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3049, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5017S6005Q9031GS3018.SS3049', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3050, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5017S6005Q9031GS3018.SS3050', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3051, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5017S6005Q9031GS3018.SS3051', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3052, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5017S7007Q9032GS3019.SS3052', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3053, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5017S7007Q9032GS3019.SS3053', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3054, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5017S7007Q9032GS3019.SS3054', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3055, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5017S6005Q9033GS3020.SS3055', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3056, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5017S6005Q9033GS3020.SS3056', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3057, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5017S6005Q9033GS3020.SS3057', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3058, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ0S0Q9034GS3021.SS3058', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3059, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ0S0Q9034GS3021.SS3059', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3060, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ0S0Q9034GS3021.SS3060', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3061, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5017S7007Q9035GS3022.SS3061', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3062, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5017S7007Q9035GS3022.SS3062', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (3063, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5017S7007Q9035GS3022.SS3063', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4049, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5019S8007Q10030GS4018.SS4049', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4050, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5019S8007Q10030GS4018.SS4050', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4051, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5019S8007Q10030GS4018.SS4051', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4052, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5019S8007Q10031GS4019.SS4052', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4053, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5019S8007Q10031GS4019.SS4053', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4054, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5019S8007Q10031GS4019.SS4054', N'3')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4055, NULL, NULL, 0, 0, 0, 2, NULL, N'A', N'AFLQ5019S8007Q10032GS4020.SS4055', N'1')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4056, NULL, NULL, 0, 0, 0, 2, NULL, N'B', N'AFLQ5019S8007Q10032GS4020.SS4056', N'2')
INSERT [dbo].[SingleSelection] ([SingleSelectionID], [Comment], [GoToQuestionID], [IsGoTo], [IsSameRow], [IsSubQuestion], [SelectionTypeID], [SubQuestionID], [Text], [UniqueID], [Value]) VALUES (4057, NULL, NULL, 0, 0, 0, 2, NULL, N'C', N'AFLQ5019S8007Q10032GS4020.SS4057', N'3')
SET IDENTITY_INSERT [dbo].[SingleSelection] OFF
SET IDENTITY_INSERT [dbo].[SingleText] ON 

INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ1S1Q1.ST1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (2, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ2S2Q2.ST2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (3, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ2S2Q3.ST3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (4, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R1.C1.ST4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (5, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R1.C2.ST5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (6, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R1.C3.ST6', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (7, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R1.C4.ST7', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (8, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R1.C5.ST8', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (9, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R2.C1.ST9', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (10, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R2.C2.ST10', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (11, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R2.C3.ST11', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (12, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R2.C4.ST12', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (13, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R2.C5.ST13', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (14, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R3.C1.ST14', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (15, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R3.C2.ST15', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (16, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R3.C3.ST16', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (17, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R3.C4.ST17', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (18, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R3.C5.ST18', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (19, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R4.C1.ST19', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (20, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R4.C2.ST20', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (21, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R4.C3.ST21', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (22, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R4.C4.ST22', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (23, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3.R4.C5.ST23', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (24, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ3S3Q13.ST24', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1004, 5, N'Input here1', 0, 0, N'Excellent', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1005, 5, N'Input here1', 0, 0, N'Excellent', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1006, 5, N'Input here1', 0, 0, N'Excellent', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1007, 5, N'Input here1', 0, 0, N'Excellent', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1008, 5, N'Input here1', 0, 0, N'Good', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1009, 5, N'Input here1', 0, 0, N'Good', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1010, 5, N'Input here1', 0, 0, N'Good', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1011, 5, N'Input here1', 0, 0, N'Good', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1012, 5, N'Input here1', 0, 0, N'Average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1013, 5, N'Input here1', 0, 0, N'Average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1014, 5, N'Input here1', 0, 0, N'Average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1015, 5, N'Input here1', 0, 0, N'Average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1016, 5, N'Input here1', 0, 0, N'Below average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1017, 5, N'Input here1', 0, 0, N'Below average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1018, 5, N'Input here1', 0, 0, N'Below average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1019, 5, N'Input here1', 0, 0, N'Below average', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1020, 5, N'Input here1', 0, 0, N'Poor', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1021, 5, N'Input here1', 0, 0, N'Poor', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1022, 5, N'Input here1', 0, 0, N'Poor', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1023, 5, N'Input here1', 0, 0, N'Poor', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1024, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1025, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1026, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1027, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1028, 5, N'Input here', 0, 0, N'Cleanliness', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R1.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1029, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1030, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1031, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1032, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1033, 5, N'Input here', 0, 0, N'Lighting', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R2.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1034, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1035, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1036, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1037, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1038, 5, N'Input here', 0, 0, N'Music', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R3.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1039, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C1', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1040, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C2', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1041, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C3', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1042, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C4', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (1043, 5, N'Input here', 0, 0, N'Comfort', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'AFLQ3S3Q1005.R4.C5', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (2004, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ1004S1004Q2008.ST2004', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (2005, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ1005S1005Q2014.ST2005', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (2006, 1, N'0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ1005S1005Q2015.ST2006', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (3004, 0, N'0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'AFLQ3003S4003Q8015.ST3004', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (3005, 0, N'0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'AFLQ3003S4003Q8015.ST3005', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (3006, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ5017S7007Q9037.ST3006', 0)
INSERT [dbo].[SingleText] ([TextboxID], [DataTypeID], [Hint], [IsMultiple], [IsSameRow], [Keywords], [Label], [MaxDate], [MaxLength], [MaxValue], [MinDate], [MinValue], [NumberOfRows], [Prefix], [Suffix], [UniqueID], [CharactorWidth]) VALUES (3010, 5, N'...', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'AFLQ5017S7007Q9049.ST3010', 0)
SET IDENTITY_INSERT [dbo].[SingleText] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (1, NULL, N'HCMUE', N'Ms Hong', N'hong@hcmue.edu.vn', N'0918789123', N'Principal', 1, NULL, 0)
INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (2, 3, N'FIT-HCMUE', N'Mr Viet', N'viet@hcmue.edu.vn', N'0903456789', N'Dean', 2, NULL, 0)
INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (3, 1, N'MATH-HCMUE', N'Mr Quang', N'quang@hcmue.edu.vn', N'0919678234', N'Dean', 2, NULL, 0)
INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (1002, NULL, N'HCMUS', N'Hien Luong', N'hien.luong@zimitech.vn', N'933391777', N'CEO', 1, NULL, 1)
INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (2002, 2, N'CS', N'Hung', N'hungnv@hcmue.edu.vn', N'0908123456', N'Dean', 2, NULL, 0)
INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (2003, NULL, N'Supplier', N'Supplier', N'supplier@gmail.com', N'0989123456', N'CEO', 1, NULL, 1)
INSERT [dbo].[Supplier] ([SupplierId], [ParentSupplierId], [OrganisationName], [ContactName], [ContactEmail], [ContactPhone], [Position], [TypeId], [PrimeSupplierId], [Status]) VALUES (2004, 2, N'SE & NC', N'Hai Tran', N'haits@hcmue.edu.vn', N'0914029299', N'Dean', 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[SupplierBrandLogo] ON 

INSERT [dbo].[SupplierBrandLogo] ([SupplierBrandLogoId], [BrandLogoId], [SupplierId], [Status], [IsInheritFromParent]) VALUES (1, 1, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[SupplierBrandLogo] OFF
SET IDENTITY_INSERT [dbo].[SupplierEmailDomain] ON 

INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (1, 1, 1, 1)
INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (2, 2, 2, 1)
INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (3, 3, 3, 1)
INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (1002, 1002, 1002, 1)
INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (2002, 2002, 2002, 1)
INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (2003, 2003, 2003, 1)
INSERT [dbo].[SupplierEmailDomain] ([SupplierEmailDomainId], [EmailDomainId], [SupplierId], [Status]) VALUES (2004, 2004, 2004, 1)
SET IDENTITY_INSERT [dbo].[SupplierEmailDomain] OFF
SET IDENTITY_INSERT [dbo].[Survey] ON 

INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (1, N'<p>Survey for Question Text (1 ques)<br></p>', CAST(N'2019-06-30T00:00:00.000' AS DateTime), 0, N'Survey for Question Text (1 ques)', 1, CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-20T23:25:51.9169892' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-20T23:25:51.9169892' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (2, N'<p>Survey for Q1<br></p>', CAST(N'2019-06-30T00:00:00.000' AS DateTime), 0, N'Survey for Q1', 2, CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-20T23:33:44.7427782' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-20T23:33:44.7427782' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (1002, N'<p>Test Repeat Question<br></p>', CAST(N'2019-07-06T00:00:00.000' AS DateTime), 0, N'Test Repeat Question', 3, CAST(N'2019-06-28T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-27T23:53:06.5963106' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-27T23:53:06.5963106' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (1003, N'<p>Test Repeating<br></p>', CAST(N'2019-07-06T00:00:00.000' AS DateTime), 0, N'Test Repeating', 3, CAST(N'2019-06-29T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-28T00:09:36.1429550' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:09:36.1429550' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (1004, N'<p>t</p>', CAST(N'2019-07-06T00:00:00.000' AS DateTime), 0, N'repeating contractor', 3, CAST(N'2019-06-28T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-28T00:10:48.8828980' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:10:48.8828980' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (1005, N'<p>HIENLTH&nbsp;&nbsp;&nbsp;&nbsp;</p>', CAST(N'2019-07-06T00:00:00.000' AS DateTime), 0, N'HIENLTH', 3, CAST(N'2019-06-29T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-28T00:20:39.9163274' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:20:39.9163274' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (1006, N'<p>hhh</p>', CAST(N'2019-07-06T00:00:00.000' AS DateTime), 0, N'hh', 3, CAST(N'2019-06-28T00:00:00.000' AS DateTime), 0, CAST(N'2019-06-28T00:26:07.2192878' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:26:07.2192878' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (2002, N'<p>hh</p>', NULL, 0, N'hh', 1, NULL, 0, CAST(N'2019-07-25T22:51:34.0552988' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-07-25T22:51:34.0552988' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', 0)
INSERT [dbo].[Survey] ([SurveyId], [Description], [EndDate], [Mandatory], [Name], [QuestionnaireId], [StartDate], [Status], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [IsRecurring]) VALUES (3002, N'<p>Scale emoji survey<br></p>', CAST(N'2019-08-17T00:00:00.000' AS DateTime), 0, N'Scale emoji survey', 4003, CAST(N'2019-08-10T00:00:00.000' AS DateTime), 0, CAST(N'2019-08-09T08:13:10.0000000' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-09T08:17:23.2066931' AS DateTime2), N'10f883e8-0399-472c-af88-d395956b5540', 0)
SET IDENTITY_INSERT [dbo].[Survey] OFF
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'3eb4f36a-4134-4ed5-8fa5-04e627de54f6', 1005, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-28T00:20:39.9163274' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:20:39.9163274' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'edc900ca-ee99-4209-b4bb-203df4f3ad71', 2002, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-07-25T22:51:34.0552988' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-07-25T22:51:34.0552988' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'd0ac2570-61cc-4acd-96e9-5d0434efb8bf', 1002, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-27T23:53:06.5963106' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-27T23:53:06.5963106' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'b5d9ef7d-f0b2-4e05-85f3-7599c56c0184', 1004, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-28T00:10:48.8828980' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:10:48.8828980' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'153563b0-d7b0-4fce-b4a0-44844eceb70d')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'e40b6299-8ab6-4b6a-af96-7b2e25114020', 1006, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-28T00:26:07.2192878' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:26:07.2192878' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'81923371-fbe0-4a8a-bcc3-923ce17d6bde', 1003, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-28T00:09:36.1429550' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-28T00:09:36.1429550' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'fa601fef-5c56-4a67-b739-9c13f55cc20a', 1, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-20T23:25:51.9169892' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-20T23:25:51.9169892' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'bdae3a9a-7dcb-4f3c-b53e-d0356ff4003a', 3002, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-08-09T08:13:10.4165960' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-08-09T08:17:23.2066931' AS DateTime2), N'10f883e8-0399-472c-af88-d395956b5540', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyAssign] ([SurveyAssignId], [SurveyId], [SurveyUrl], [Locations], [Departments], [JobTitles], [Genders], [RespondentSurveys], [CreateDate], [CreateUserId], [LastModifyDate], [LastModifyUserId], [AssignRoleId]) VALUES (N'f0acc1e1-a25c-4832-a950-debc14198ab6', 2, N'https://localhost:44372/survey/', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-20T23:33:44.7427782' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', CAST(N'2019-06-20T23:33:44.7427782' AS DateTime2), N'fd221e2b-1937-43de-830b-458bb0ae57df', N'52f3d95e-4f44-4495-868d-0116a25787d3')
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'c9ac16f0-8141-4681-9cf5-3d5f725324a3', 3002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, N'10f883e8-0399-472c-af88-d395956b5540', CAST(N'2019-08-09T08:17:23.207' AS DateTime), CAST(N'2019-08-09T08:17:23.207' AS DateTime), N'10f883e8-0399-472c-af88-d395956b5540', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'cd84e69b-3b60-4229-906e-4e78f89b88e3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-20T23:25:51.917' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'c97d837f-e7a8-47b8-b46c-59f75175a85c', 1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-28T00:20:39.917' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'90866d9f-c344-43fd-9af8-7dbfa13ce693', 1003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-28T00:09:36.143' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'02578881-5b32-4d51-aa23-b261bec66483', 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-28T00:26:07.220' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'cdfe49a2-0256-4231-b12d-b67ea6cbaa62', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-20T23:33:44.743' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'e625a876-9ccb-4ca9-87eb-bb2dc9632eb5', 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-27T23:53:06.597' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'76a08076-d93a-4bf0-8aa3-bf8acfa81ab1', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-07-25T22:51:34.057' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
INSERT [dbo].[SurveyNotification] ([SurveyNotificationId], [SurveyId], [ReminderSurveyNotificationScheduleId], [StarterSurveyNotificationScheduleId], [InvitationEmailContentId], [ThankyouEmailContentId], [ClosureEmailContentId], [ReminderEmailContentId], [StarterEmailContentId], [InvitationNotificationEnable], [ThankyouNotificationEnable], [ClosureNotificationEnable], [ReminderNotificationEnable], [StarterNotificationEnable], [CreateUserId], [CreateDate], [LastModifyDate], [LastModifyUserId], [Status]) VALUES (N'310ef1d7-4009-49ff-9793-e0a4e2ca9df8', 1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, CAST(N'2019-06-28T00:10:48.883' AS DateTime), N'fd221e2b-1937-43de-830b-458bb0ae57df', 1)
SET IDENTITY_INSERT [dbo].[Table] ON 

INSERT [dbo].[Table] ([TableID], [CellInputTypeID], [IsRowLabel], [NumOfCols], [NumOfHeaders], [NumOfRows]) VALUES (1, 1, 1, 5, 1, 4)
INSERT [dbo].[Table] ([TableID], [CellInputTypeID], [IsRowLabel], [NumOfCols], [NumOfHeaders], [NumOfRows]) VALUES (2, 1, 1, 5, 1, 4)
SET IDENTITY_INSERT [dbo].[Table] OFF
SET IDENTITY_INSERT [dbo].[TableCell] ON 

INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1, 1, 1, 4, 1, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (2, 1, 2, 5, 1, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (3, 1, 3, 6, 1, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (4, 1, 4, 7, 1, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (5, 1, 5, 8, 1, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (6, 1, 1, 9, 2, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (7, 1, 2, 10, 2, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (8, 1, 3, 11, 2, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (9, 1, 4, 12, 2, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (10, 1, 5, 13, 2, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (11, 1, 1, 14, 3, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (12, 1, 2, 15, 3, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (13, 1, 3, 16, 3, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (14, 1, 4, 17, 3, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (15, 1, 5, 18, 3, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (16, 1, 1, 19, 4, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (17, 1, 2, 20, 4, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (18, 1, 3, 21, 4, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (19, 1, 4, 22, 4, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (20, 1, 5, 23, 4, 1)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1002, 1, 1, 1004, 1, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1003, 1, 1, 1005, 2, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1004, 1, 1, 1006, 3, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1005, 1, 1, 1007, 4, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1006, 1, 2, 1008, 1, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1007, 1, 2, 1009, 2, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1008, 1, 2, 1010, 3, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1009, 1, 2, 1011, 4, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1010, 1, 3, 1012, 1, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1011, 1, 3, 1013, 2, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1012, 1, 3, 1014, 3, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1013, 1, 3, 1015, 4, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1014, 1, 4, 1016, 1, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1015, 1, 4, 1017, 2, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1016, 1, 4, 1018, 3, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1017, 1, 4, 1019, 4, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1018, 1, 5, 1020, 1, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1019, 1, 5, 1021, 2, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1020, 1, 5, 1022, 3, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1021, 1, 5, 1023, 4, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1022, 5, 1, 1024, 1002, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1023, 5, 2, 1025, 1002, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1024, 5, 3, 1026, 1002, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1025, 5, 4, 1027, 1002, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1026, 5, 5, 1028, 1002, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1027, 5, 1, 1029, 1003, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1028, 5, 2, 1030, 1003, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1029, 5, 3, 1031, 1003, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1030, 5, 4, 1032, 1003, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1031, 5, 5, 1033, 1003, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1032, 5, 1, 1034, 1004, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1033, 5, 2, 1035, 1004, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1034, 5, 3, 1036, 1004, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1035, 5, 4, 1037, 1004, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1036, 5, 5, 1038, 1004, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1037, 5, 1, 1039, 1005, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1038, 5, 2, 1040, 1005, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1039, 5, 3, 1041, 1005, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1040, 5, 4, 1042, 1005, 2)
INSERT [dbo].[TableCell] ([CellID], [AnswerTypeID], [ColumnNumber], [ControllerID], [RowID], [TableID]) VALUES (1041, 5, 5, 1043, 1005, 2)
SET IDENTITY_INSERT [dbo].[TableCell] OFF
SET IDENTITY_INSERT [dbo].[TableColumn] ON 

INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (1, 1, N'Excellent', N'Excellent', NULL, 1, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (2, 2, N'Good', N'Good', NULL, 1, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (3, 3, N'Average', N'Average', NULL, 1, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (4, 4, N'Below average', N'Below average', NULL, 1, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (5, 5, N'Poor', N'Poor', NULL, 1, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (1002, 1, N'Excellent', N'Excellent', NULL, 2, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (1003, 2, N'Good', N'Good', NULL, 2, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (1004, 3, N'Average', N'Average', NULL, 2, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (1005, 4, N'Below average', N'Below average', NULL, 2, NULL)
INSERT [dbo].[TableColumn] ([TableColumnID], [ColNumber], [FirstHeaderText], [Keywords], [SecondHeaderText], [TableID], [Width]) VALUES (1006, 5, N'Poor', N'Poor', NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[TableColumn] OFF
SET IDENTITY_INSERT [dbo].[TableRow] ON 

INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (1, NULL, N'Cleanliness', N'Cleanliness', 1, 1)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (2, NULL, N'Lighting', N'Lighting', 2, 1)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (3, NULL, N'Music', N'Music', 3, 1)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (4, NULL, N'Comfort', N'Comfort', 4, 1)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (1002, NULL, N'Cleanliness', N'Cleanliness', 1, 2)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (1003, NULL, N'Lighting', N'Lighting', 2, 2)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (1004, NULL, N'Music', N'Music', 3, 2)
INSERT [dbo].[TableRow] ([TableRowID], [Height], [Keywords], [RowLabel], [RowNumber], [TableID]) VALUES (1005, NULL, N'Comfort', N'Comfort', 4, 2)
SET IDENTITY_INSERT [dbo].[TableRow] OFF
SET IDENTITY_INSERT [dbo].[TwoFAConfig] ON 

INSERT [dbo].[TwoFAConfig] ([TwoFAConfigId], [BaseAddress], [AuthTokenKey], [AccountSID], [Status], [AuthyApiKey]) VALUES (1, N'https://api.authy.com', N'9081254', N'188721860', 1, N'ewVddV6biZvrO8EG02E9Q5NjmHtYwc37')
SET IDENTITY_INSERT [dbo].[TwoFAConfig] OFF
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'22882f52-f2ab-4700-a090-04eaa5e58c94', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIwOTY3NCwiZXhwIjoxNTk5NzQ1Njc0LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.oNVW20xCsexf2HluqfE4ETYxOmbup29v2jANu-S0NOI', CAST(N'2019-09-11T20:47:54.6826538' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'32fa026e-cedd-4a40-ae01-13afd85c9487', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIxNDQxOSwiZXhwIjoxNTk5NzUwNDE5LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ._zfNj0LuoR70eR82yExIthSyviBZqmadOlLflHYWWbs', CAST(N'2019-09-11T22:06:59.3925856' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'8cae1ee1-07be-4c25-b00c-25b44b64fd43', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODMwMzQ5NiwiZXhwIjoxNTk5ODM5NDk2LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.gbD-00JbgM6v-m7lOmHQfyLOgqOJatA1GBwg4wy8dAI', CAST(N'2019-09-12T22:51:36.0988578' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'4fdb99e3-3920-48d8-80d8-2e1e1cf4be77', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1hc3RlckBsb2NhbGhvc3QiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIwODc4MSwiZXhwIjoxNTk5NzQ0NzgxLCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.BcjX_LZPm7DJhzWJs1JIlNDQjnSpn3jtMp7alIQ8pYU', CAST(N'2019-09-11T20:33:01.7207770' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'37f0f268-dfd1-4121-863e-31504cb21ce7', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1hc3RlckBsb2NhbGhvc3QiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2NzYwNDA4MiwiZXhwIjoxNTk5MTQwMDgyLCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.mujCKKDfz0EU_s_JQQaH6HjAn9LEmBgZ4FlKKNP_nnw', CAST(N'2019-09-04T20:34:42.8458648' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'fea0cf6c-9987-42f5-9a60-40e341208464', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIxNjM0OCwiZXhwIjoxNTk5NzUyMzQ4LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.9kq8VD0uNXceUGTMCJ--Yzacb4YKTkIuNa6bxIPyjCQ', CAST(N'2019-09-11T22:39:08.1886665' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'99d911fd-380a-4aab-9919-549281ce8e03', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODMwMTg5MCwiZXhwIjoxNTk5ODM3ODkwLCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.evBZDAiBsys2YJ92yRms5YxJ6lVzRt9g8cY7cSqiJ1E', CAST(N'2019-09-12T22:24:50.9115630' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'3541b2cb-72dc-4726-b0d9-5515394b35db', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIxNTU1OCwiZXhwIjoxNTk5NzUxNTU4LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.N8PhrHMxqIKTF_W250i3VLzW_gsDLSk7TZ4jecsHPLQ', CAST(N'2019-09-11T22:25:58.4949128' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'c36ac7ba-05f9-437a-bb14-55e97a5dd2b8', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1hc3RlckBsb2NhbGhvc3QiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2NzU1NDk3NywiZXhwIjoxNTk5MDkwOTc3LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.2yuT2xlHdD3xt0aKLgjumJ5rfmDRkhQLsWFsE8FJJB0', CAST(N'2019-09-04T06:56:17.7547218' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'f1bccd53-a94b-4fb9-97bd-63b03e084d5d', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIxNjAxOSwiZXhwIjoxNTk5NzUyMDE5LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.Lwj-0rhszoBC5Da5e4GT20qQiXhJaG7VNeVA9HcYjZ8', CAST(N'2019-09-11T22:33:39.1587292' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'c1f00968-882f-4731-9d80-874be60c8184', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODMwMzA1MCwiZXhwIjoxNTk5ODM5MDUwLCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.D3iLvMqh5-aD9c7eCmO9T5fy9hZIIGDvlu_w302Ss9s', CAST(N'2019-09-12T22:44:10.8481932' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'242572d8-b618-49c2-a39a-9e68b3f82430', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODMzNDY0NCwiZXhwIjoxNTk5ODcwNjQ0LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.LV_LDW-6lSuAVa3baMnOWGkQsv7hxGzzsF6dRvzeS8g', CAST(N'2019-09-13T07:30:44.3026554' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'885a53ea-8286-46ec-9eaf-c17dab81c7e3', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1hc3RlckBsb2NhbGhvc3QiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2NzU1NDk1OSwiZXhwIjoxNTk5MDkwOTU5LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.Cr33k5F2ZXZbwLe7POoUwDz2AwRnZsGbNbbgKNKGEWw', CAST(N'2019-09-04T06:55:59.2050397' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'e0a9f546-ab87-4c1f-bcfc-cc1feb87e14a', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1hc3RlckBsb2NhbGhvc3QiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIwOTUyMSwiZXhwIjoxNTk5NzQ1NTIxLCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.3127cwCj30qZ00Utuf0vvalovxTy-TZ8fGdKVgUH_ks', CAST(N'2019-09-11T20:45:21.4962729' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'ad09f756-2102-40f4-9b04-e66ef17867f5', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODIxNTk5OSwiZXhwIjoxNTk5NzUxOTk5LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.G3OcrKHq6yV4JQFb4H0mdd7CQP2JiYW0BkECGjAEl9s', CAST(N'2019-09-11T22:33:19.9196142' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'5b2724e0-7d30-4255-9cdf-e92855356306', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1hc3RlckBsb2NhbGhvc3QiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2NzYwNTQ1MSwiZXhwIjoxNTk5MTQxNDUxLCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.NFnBUQaoAM4pQjDi9abWFOWpSSp3O-Rev_fMVFK1D7I', CAST(N'2019-09-04T20:57:31.1071555' AS DateTime2))
INSERT [dbo].[UserJwtToken] ([Id], [UserId], [StatusId], [JwtToken], [CreatedDate]) VALUES (N'785ac5b5-3ca7-4ec1-b10d-f836f52995af', N'fd221e2b-1937-43de-830b-458bb0ae57df', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImZkMjIxZTJiLTE5MzctNDNkZS04MzBiLTQ1OGJiMGFlNTdkZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Imh5aGllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwic3ViIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRWFnbGUgU3VwZXIgQWRtaW5pc3RyYXRvciIsIm5iZiI6MTU2ODMzNTQ1NSwiZXhwIjoxNTk5ODcxNDU1LCJpc3MiOiJlYWdsZTM2MC5uZXQiLCJhdWQiOiJlYWdsZTM2MC5uZXQifQ.zPIVivnldjyUXotsSFhZrjqoBfa2wl_zDg-2CNDLj20', CAST(N'2019-09-13T07:44:15.8259919' AS DateTime2))
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'7ca036c7-4b0d-4968-be67-0779bdab9462', N'8cae1ee1-07be-4c25-b00c-25b44b64fd43', CAST(N'2019-09-12T22:51:36.1693465' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'eae3dbca-8eb4-4daa-bb77-12adaedd7b7a', N'242572d8-b618-49c2-a39a-9e68b3f82430', CAST(N'2019-09-13T07:30:45.9753060' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'04c96a33-54f5-4736-add5-1a5bac485625', N'37f0f268-dfd1-4121-863e-31504cb21ce7', CAST(N'2019-09-04T20:34:43.0240888' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'4a1fee73-b609-4ea6-b6dc-1e4468365db2', N'5b2724e0-7d30-4255-9cdf-e92855356306', CAST(N'2019-09-04T20:57:31.1591592' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'6f10a5a3-2cc6-48cc-ba65-21accb8cc76d', N'99d911fd-380a-4aab-9919-549281ce8e03', CAST(N'2019-09-12T22:24:51.0867290' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'f5001b19-7f0b-4ae2-92b9-281c9e5c4596', N'e0a9f546-ab87-4c1f-bcfc-cc1feb87e14a', CAST(N'2019-09-11T20:45:21.5504924' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'c885d677-0cb0-457d-996a-451485955723', N'3541b2cb-72dc-4726-b0d9-5515394b35db', CAST(N'2019-09-11T22:25:58.6627828' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'828ba909-2e9c-49d9-a9e4-46d3dfc4c652', N'785ac5b5-3ca7-4ec1-b10d-f836f52995af', CAST(N'2019-09-13T07:44:15.9609988' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'57bb9027-a589-4ba3-808a-63ee276fa295', N'c1f00968-882f-4731-9d80-874be60c8184', CAST(N'2019-09-12T22:44:11.0067339' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'e01c2c78-2e01-4d59-9146-75473d518abd', N'ad09f756-2102-40f4-9b04-e66ef17867f5', CAST(N'2019-09-11T22:33:20.0996407' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'419d9483-a738-4cbd-94e8-957d99fdaec9', N'22882f52-f2ab-4700-a090-04eaa5e58c94', CAST(N'2019-09-11T20:47:54.7295561' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'd1d7c5fb-6160-4313-99fe-9670bd7cc4bf', N'c36ac7ba-05f9-437a-bb14-55e97a5dd2b8', CAST(N'2019-09-04T06:56:17.8177147' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'3c155361-75e0-412c-8b34-ae732e53726d', N'fea0cf6c-9987-42f5-9a60-40e341208464', CAST(N'2019-09-11T22:39:08.3630635' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'dd41347c-5f9b-411f-aa08-b940db32ac61', N'885a53ea-8286-46ec-9eaf-c17dab81c7e3', CAST(N'2019-09-04T06:55:59.3728752' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'e9cf493d-8f89-40c7-bbe6-b9d35f921012', N'32fa026e-cedd-4a40-ae01-13afd85c9487', CAST(N'2019-09-11T22:06:59.5430098' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'92022085-b89a-4d49-ac79-c397e6b163ae', N'f1bccd53-a94b-4fb9-97bd-63b03e084d5d', CAST(N'2019-09-11T22:33:39.2067873' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
INSERT [dbo].[UserJwtTokenHistory] ([Id], [UserJwtTokenId], [ModifyDate], [UserAgent], [ActionHistory]) VALUES (N'0fbc059c-7d2b-4d8a-8fb7-ecce52706283', N'4fdb99e3-3920-48d8-80d8-2e1e1cf4be77', CAST(N'2019-09-11T20:33:02.0027918' AS DateTime2), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', N'User signed in system')
ALTER TABLE [dbo].[AspNetRoles] ADD  DEFAULT ((1)) FOR [OrderDisplay]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [IsImportedByCSV]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [PhoneConfirmed]
GO
ALTER TABLE [dbo].[Calculation] ADD  DEFAULT ((0)) FOR [IsAverage]
GO
ALTER TABLE [dbo].[Calculation] ADD  DEFAULT ((0)) FOR [IsCount]
GO
ALTER TABLE [dbo].[Calculation] ADD  DEFAULT ((0)) FOR [IsMaximum]
GO
ALTER TABLE [dbo].[Calculation] ADD  DEFAULT ((0)) FOR [IsMinimum]
GO
ALTER TABLE [dbo].[Calculation] ADD  DEFAULT ((0)) FOR [IsSum]
GO
ALTER TABLE [dbo].[CompanyTable] ADD  DEFAULT ((0)) FOR [ContractorIncluded]
GO
ALTER TABLE [dbo].[CustomTable] ADD  DEFAULT ((0)) FOR [IsMultiple]
GO
ALTER TABLE [dbo].[CustomTable] ADD  DEFAULT ((0)) FOR [IsPortrait]
GO
ALTER TABLE [dbo].[CustomTable] ADD  DEFAULT ((0)) FOR [Max]
GO
ALTER TABLE [dbo].[CustomTable] ADD  DEFAULT ((0)) FOR [Min]
GO
ALTER TABLE [dbo].[DataListAttribute] ADD  DEFAULT ((0)) FOR [IsDisplayedForDropDown]
GO
ALTER TABLE [dbo].[EmailContent] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[EmailRecord] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [Id]
GO
ALTER TABLE [dbo].[EmailSetting] ADD  DEFAULT ((1)) FOR [EmailType]
GO
ALTER TABLE [dbo].[Equation] ADD  DEFAULT ((0)) FOR [ShowForSupplier]
GO
ALTER TABLE [dbo].[Equation] ADD  DEFAULT ((0)) FOR [OldId]
GO
ALTER TABLE [dbo].[EquationItemRule] ADD  DEFAULT ((0)) FOR [OrderNumber]
GO
ALTER TABLE [dbo].[GPSSingleSelection] ADD  DEFAULT ((0)) FOR [IsShowGPSInfo]
GO
ALTER TABLE [dbo].[ImageAnswer] ADD  DEFAULT ((0)) FOR [ImageId]
GO
ALTER TABLE [dbo].[MedicalRecord] ADD  DEFAULT ((0)) FOR [IsStopped]
GO
ALTER TABLE [dbo].[Medication] ADD  DEFAULT ((0)) FOR [PatientStopped]
GO
ALTER TABLE [dbo].[Medication] ADD  DEFAULT ((0)) FOR [VisitId]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[QueryQuestion] ADD  DEFAULT ((0)) FOR [IsNumericQuestion]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT ((0)) FOR [Mandatory]
GO
ALTER TABLE [dbo].[Questionnaire] ADD  DEFAULT ((0)) FOR [IsPublic]
GO
ALTER TABLE [dbo].[Questionnaire] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Questionnaire] ADD  DEFAULT ((1)) FOR [HaveMultipleSections]
GO
ALTER TABLE [dbo].[RepeatingGroupSelection] ADD  DEFAULT ((0)) FOR [AnswerDataTypeId]
GO
ALTER TABLE [dbo].[RepeatingGroupSelection] ADD  DEFAULT ((0)) FOR [Max]
GO
ALTER TABLE [dbo].[RepeatingGroupSelection] ADD  DEFAULT ((0)) FOR [Min]
GO
ALTER TABLE [dbo].[RepeatingGroupSelection] ADD  DEFAULT ((0)) FOR [IsRepeatFirstAnswerOnly]
GO
ALTER TABLE [dbo].[RepeatingSingleSelection] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Respondent] ADD  DEFAULT ((0)) FOR [isFirstLogin]
GO
ALTER TABLE [dbo].[Respondent] ADD  DEFAULT ((0)) FOR [Password]
GO
ALTER TABLE [dbo].[RespondentAnswer] ADD  DEFAULT ((0)) FOR [QuestionId]
GO
ALTER TABLE [dbo].[RespondentSurvey] ADD  DEFAULT ((0)) FOR [TotalTimesSendReminder]
GO
ALTER TABLE [dbo].[RespondentSurvey] ADD  DEFAULT ((0)) FOR [TotalTimesSendStarter]
GO
ALTER TABLE [dbo].[RespondentSurvey] ADD  DEFAULT ((1)) FOR [AssignNumber]
GO
ALTER TABLE [dbo].[Scale] ADD  DEFAULT ((0)) FOR [IsEmoji]
GO
ALTER TABLE [dbo].[Section] ADD  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[SingleText] ADD  DEFAULT ((0)) FOR [DataTypeID]
GO
ALTER TABLE [dbo].[SingleText] ADD  DEFAULT ((0)) FOR [CharactorWidth]
GO
ALTER TABLE [dbo].[SupplierBrandLogo] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[SupplierBrandLogo] ADD  DEFAULT ((0)) FOR [IsInheritFromParent]
GO
ALTER TABLE [dbo].[SupplierEmailDomain] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Survey] ADD  DEFAULT ((0)) FOR [IsRecurring]
GO
ALTER TABLE [dbo].[Table] ADD  DEFAULT ((0)) FOR [IsRowLabel]
GO
ALTER TABLE [dbo].[TwoFAConfig] ADD  DEFAULT (N'https://api.authy.com') FOR [BaseAddress]
GO
ALTER TABLE [dbo].[TwoFAConfig] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[TwoFAConfigEmailTemplate] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[UserJwtToken] ADD  DEFAULT ((1)) FOR [StatusId]
GO
ALTER TABLE [dbo].[Visit] ADD  DEFAULT ((0)) FOR [IsUsedCode]
GO
ALTER TABLE [dbo].[Visit] ADD  DEFAULT ((0)) FOR [SurveyStatus]
GO
ALTER TABLE [dbo].[Visit] ADD  DEFAULT ((0)) FOR [IsUp]
GO
ALTER TABLE [dbo].[VisitQuestionnaire] ADD  DEFAULT ((0)) FOR [Calc]
GO
ALTER TABLE [dbo].[VisitQuestionnaire] ADD  DEFAULT ((0)) FOR [Max]
GO
ALTER TABLE [dbo].[VisitQuestionnaire] ADD  DEFAULT ((0)) FOR [Sum]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_AnswerType] FOREIGN KEY([AnswerTypeID])
REFERENCES [dbo].[AnswerType] ([AnswerTypeID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_AnswerType]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[ApplicationUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserPermissions_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUserPermissions] CHECK CONSTRAINT [FK_UserPermissions_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_AspNetRoles_AspNetRoles_ParentID] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoles] CHECK CONSTRAINT [FK_AspNetRoles_AspNetRoles_ParentID]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Department_DepartmentId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Gender_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Gender_GenderId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_JobTitle_JobTitleId] FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[JobTitle] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_JobTitle_JobTitleId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Location_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Location_LocationId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Supplier_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Supplier_SupplierId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Association]  WITH CHECK ADD  CONSTRAINT [FK_Association_AspNetUsers_ObserverId] FOREIGN KEY([ObserverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Association] CHECK CONSTRAINT [FK_Association_AspNetUsers_ObserverId]
GO
ALTER TABLE [dbo].[Association]  WITH CHECK ADD  CONSTRAINT [FK_Association_AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Association] CHECK CONSTRAINT [FK_Association_AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[CalculationQuestion]  WITH CHECK ADD  CONSTRAINT [FK_CalculationQuestion_Calculation] FOREIGN KEY([CalculationId])
REFERENCES [dbo].[Calculation] ([Id])
GO
ALTER TABLE [dbo].[CalculationQuestion] CHECK CONSTRAINT [FK_CalculationQuestion_Calculation]
GO
ALTER TABLE [dbo].[Classification]  WITH CHECK ADD  CONSTRAINT [FK_Classification_ClassificationTypeId] FOREIGN KEY([ClassificationTypeId])
REFERENCES [dbo].[ClassificationType] ([ClassificationTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Classification] CHECK CONSTRAINT [FK_Classification_ClassificationTypeId]
GO
ALTER TABLE [dbo].[CompanyEmailDomain]  WITH CHECK ADD  CONSTRAINT [FK_CompanyEmailDomain_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[CompanyEmailDomain] CHECK CONSTRAINT [FK_CompanyEmailDomain_Company]
GO
ALTER TABLE [dbo].[CompanyTable]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTable_UserCreate] FOREIGN KEY([CreateUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CompanyTable] CHECK CONSTRAINT [FK_CompanyTable_UserCreate]
GO
ALTER TABLE [dbo].[CompanyTable]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTable_UserModify] FOREIGN KEY([LastModifyUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CompanyTable] CHECK CONSTRAINT [FK_CompanyTable_UserModify]
GO
ALTER TABLE [dbo].[CompanyTableDetail]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTable_CompanyTableDetail] FOREIGN KEY([CompanyTableId])
REFERENCES [dbo].[CompanyTable] ([CompanyTableId])
GO
ALTER TABLE [dbo].[CompanyTableDetail] CHECK CONSTRAINT [FK_CompanyTable_CompanyTableDetail]
GO
ALTER TABLE [dbo].[CompanyTableDetail]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTableDetail_UserCreate] FOREIGN KEY([CreateUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CompanyTableDetail] CHECK CONSTRAINT [FK_CompanyTableDetail_UserCreate]
GO
ALTER TABLE [dbo].[CompanyTableDetail]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTableDetail_UserModify] FOREIGN KEY([LastModifyUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CompanyTableDetail] CHECK CONSTRAINT [FK_CompanyTableDetail_UserModify]
GO
ALTER TABLE [dbo].[Contacter]  WITH CHECK ADD  CONSTRAINT [FK_Contacter_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Contacter] CHECK CONSTRAINT [FK_Contacter_Address]
GO
ALTER TABLE [dbo].[CustomTable]  WITH CHECK ADD  CONSTRAINT [FK_CustomTable_CompanyTable_CompanyTableId] FOREIGN KEY([CompanyTableId])
REFERENCES [dbo].[CompanyTable] ([CompanyTableId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomTable] CHECK CONSTRAINT [FK_CustomTable_CompanyTable_CompanyTableId]
GO
ALTER TABLE [dbo].[CustomTable]  WITH CHECK ADD  CONSTRAINT [FK_CustomTable_Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomTable] CHECK CONSTRAINT [FK_CustomTable_Question_QuestionId]
GO
ALTER TABLE [dbo].[CustomTable]  WITH CHECK ADD  CONSTRAINT [FK_CustomTable_SelectionType_SelectionTypeId] FOREIGN KEY([SelectionTypeId])
REFERENCES [dbo].[SelectionType] ([SelectionTypeID])
GO
ALTER TABLE [dbo].[CustomTable] CHECK CONSTRAINT [FK_CustomTable_SelectionType_SelectionTypeId]
GO
ALTER TABLE [dbo].[CustomTableAnswer]  WITH CHECK ADD  CONSTRAINT [FK_CustomTableAnswer_CustomTable_CustomTableId] FOREIGN KEY([CustomTableId])
REFERENCES [dbo].[CustomTable] ([CustomTableId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomTableAnswer] CHECK CONSTRAINT [FK_CustomTableAnswer_CustomTable_CustomTableId]
GO
ALTER TABLE [dbo].[DataList]  WITH CHECK ADD  CONSTRAINT [FK_DataList_DataListType] FOREIGN KEY([DataListTypeID])
REFERENCES [dbo].[DataListType] ([ID])
GO
ALTER TABLE [dbo].[DataList] CHECK CONSTRAINT [FK_DataList_DataListType]
GO
ALTER TABLE [dbo].[DataListAnswer]  WITH CHECK ADD  CONSTRAINT [FK_DataListAnswer_DataListTypeAnswer] FOREIGN KEY([DataListTypeAnswerID])
REFERENCES [dbo].[DataListTypeAnswer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataListAnswer] CHECK CONSTRAINT [FK_DataListAnswer_DataListTypeAnswer]
GO
ALTER TABLE [dbo].[DataListAttribute]  WITH CHECK ADD  CONSTRAINT [FK_DataListAttribute_DataListType] FOREIGN KEY([DataListTypeID])
REFERENCES [dbo].[DataListType] ([ID])
GO
ALTER TABLE [dbo].[DataListAttribute] CHECK CONSTRAINT [FK_DataListAttribute_DataListType]
GO
ALTER TABLE [dbo].[DataListAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_DataListAttributeValue_DataList] FOREIGN KEY([DataListID])
REFERENCES [dbo].[DataList] ([ID])
GO
ALTER TABLE [dbo].[DataListAttributeValue] CHECK CONSTRAINT [FK_DataListAttributeValue_DataList]
GO
ALTER TABLE [dbo].[DataListAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_DataListAttributeValue_DataListAttribute] FOREIGN KEY([DataListAttributeID])
REFERENCES [dbo].[DataListAttribute] ([ID])
GO
ALTER TABLE [dbo].[DataListAttributeValue] CHECK CONSTRAINT [FK_DataListAttributeValue_DataListAttribute]
GO
ALTER TABLE [dbo].[DataListTypeAnswer]  WITH CHECK ADD  CONSTRAINT [FK_DataListAnswer_DataListType] FOREIGN KEY([DataListTypeID])
REFERENCES [dbo].[DataListType] ([ID])
GO
ALTER TABLE [dbo].[DataListTypeAnswer] CHECK CONSTRAINT [FK_DataListAnswer_DataListType]
GO
ALTER TABLE [dbo].[DataScale]  WITH CHECK ADD  CONSTRAINT [FK_DataScale_DataList] FOREIGN KEY([DataListID])
REFERENCES [dbo].[DataList] ([ID])
GO
ALTER TABLE [dbo].[DataScale] CHECK CONSTRAINT [FK_DataScale_DataList]
GO
ALTER TABLE [dbo].[DoctorRegistrationCode]  WITH CHECK ADD  CONSTRAINT [FK_DoctorRegistrationCode_AspNetUsers_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoctorRegistrationCode] CHECK CONSTRAINT [FK_DoctorRegistrationCode_AspNetUsers_DoctorId]
GO
ALTER TABLE [dbo].[EmailContent]  WITH CHECK ADD  CONSTRAINT [FK_EmailContent_AspNetRoles_ApplicationRoleId] FOREIGN KEY([ApplicationRoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[EmailContent] CHECK CONSTRAINT [FK_EmailContent_AspNetRoles_ApplicationRoleId]
GO
ALTER TABLE [dbo].[EmailContent]  WITH CHECK ADD  CONSTRAINT [FK_EmailContent_EmailType] FOREIGN KEY([EmailTypeId])
REFERENCES [dbo].[EmailType] ([Id])
GO
ALTER TABLE [dbo].[EmailContent] CHECK CONSTRAINT [FK_EmailContent_EmailType]
GO
ALTER TABLE [dbo].[EmailHistory]  WITH CHECK ADD  CONSTRAINT [FK_EmailHistory_Questionnaire_QuestionnaireID] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailHistory] CHECK CONSTRAINT [FK_EmailHistory_Questionnaire_QuestionnaireID]
GO
ALTER TABLE [dbo].[EmailHistory]  WITH CHECK ADD  CONSTRAINT [FK_EmailHistory_User] FOREIGN KEY([SenderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[EmailHistory] CHECK CONSTRAINT [FK_EmailHistory_User]
GO
ALTER TABLE [dbo].[EmailRecord]  WITH CHECK ADD  CONSTRAINT [FK_EmailRecord_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EmailRecord] CHECK CONSTRAINT [FK_EmailRecord_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[EmailRecord]  WITH CHECK ADD  CONSTRAINT [FK_EmailRecord_RespondentSurvey] FOREIGN KEY([RespondentSurveyId])
REFERENCES [dbo].[RespondentSurvey] ([RespondentSurveyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailRecord] CHECK CONSTRAINT [FK_EmailRecord_RespondentSurvey]
GO
ALTER TABLE [dbo].[EmailRecord]  WITH CHECK ADD  CONSTRAINT [FK_EmailRecord_SurveyEmailContent] FOREIGN KEY([SurveyEmailContentId])
REFERENCES [dbo].[SurveyEmailContent] ([Id])
GO
ALTER TABLE [dbo].[EmailRecord] CHECK CONSTRAINT [FK_EmailRecord_SurveyEmailContent]
GO
ALTER TABLE [dbo].[EmailSetting]  WITH CHECK ADD  CONSTRAINT [FK_EmailSetting_Questionnaire_QuestionnaireID] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailSetting] CHECK CONSTRAINT [FK_EmailSetting_Questionnaire_QuestionnaireID]
GO
ALTER TABLE [dbo].[Equation]  WITH CHECK ADD  CONSTRAINT [FK_Equation_EquationType] FOREIGN KEY([EquationTypeID])
REFERENCES [dbo].[EquationType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equation] CHECK CONSTRAINT [FK_Equation_EquationType]
GO
ALTER TABLE [dbo].[EquationDetail]  WITH CHECK ADD  CONSTRAINT [FK_EquationDetail_Equation] FOREIGN KEY([EquationID])
REFERENCES [dbo].[Equation] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquationDetail] CHECK CONSTRAINT [FK_EquationDetail_Equation]
GO
ALTER TABLE [dbo].[EquationDetail]  WITH CHECK ADD  CONSTRAINT [FK_EquationDetail_EquationDetailType] FOREIGN KEY([EquationDetailTypeID])
REFERENCES [dbo].[EquationDetailType] ([ID])
GO
ALTER TABLE [dbo].[EquationDetail] CHECK CONSTRAINT [FK_EquationDetail_EquationDetailType]
GO
ALTER TABLE [dbo].[EquationItem]  WITH CHECK ADD  CONSTRAINT [FK_EquationItem_EquationDetail] FOREIGN KEY([EquationDetailID])
REFERENCES [dbo].[EquationDetail] ([ID])
GO
ALTER TABLE [dbo].[EquationItem] CHECK CONSTRAINT [FK_EquationItem_EquationDetail]
GO
ALTER TABLE [dbo].[EquationItemRule]  WITH CHECK ADD  CONSTRAINT [FK_EquationItemRule_EquationItem] FOREIGN KEY([EquationItemID])
REFERENCES [dbo].[EquationItem] ([ID])
GO
ALTER TABLE [dbo].[EquationItemRule] CHECK CONSTRAINT [FK_EquationItemRule_EquationItem]
GO
ALTER TABLE [dbo].[GPSGroupSelection]  WITH CHECK ADD  CONSTRAINT [FK_GPSGroupSelection_SelectionType] FOREIGN KEY([SelectionTypeID])
REFERENCES [dbo].[SelectionType] ([SelectionTypeID])
GO
ALTER TABLE [dbo].[GPSGroupSelection] CHECK CONSTRAINT [FK_GPSGroupSelection_SelectionType]
GO
ALTER TABLE [dbo].[GPSInfo]  WITH CHECK ADD  CONSTRAINT [FK_GPSInfo_RespondentAnswer] FOREIGN KEY([RespondentAnswerId])
REFERENCES [dbo].[RespondentAnswer] ([RespondentAnswerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GPSInfo] CHECK CONSTRAINT [FK_GPSInfo_RespondentAnswer]
GO
ALTER TABLE [dbo].[GPSSelectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_GPSSelectionGroup_GPSSingleSelection] FOREIGN KEY([SelectionID])
REFERENCES [dbo].[GPSSingleSelection] ([GPSSingleSelectionId])
GO
ALTER TABLE [dbo].[GPSSelectionGroup] CHECK CONSTRAINT [FK_GPSSelectionGroup_GPSSingleSelection]
GO
ALTER TABLE [dbo].[GPSSelectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_GPSSelectionGroup_GroupSelection] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GPSGroupSelection] ([GPSGroupSelectionId])
GO
ALTER TABLE [dbo].[GPSSelectionGroup] CHECK CONSTRAINT [FK_GPSSelectionGroup_GroupSelection]
GO
ALTER TABLE [dbo].[GroupSelection]  WITH CHECK ADD  CONSTRAINT [FK_GroupSelection_SelectionType] FOREIGN KEY([SelectionTypeID])
REFERENCES [dbo].[SelectionType] ([SelectionTypeID])
GO
ALTER TABLE [dbo].[GroupSelection] CHECK CONSTRAINT [FK_GroupSelection_SelectionType]
GO
ALTER TABLE [dbo].[ImageAnswer]  WITH CHECK ADD  CONSTRAINT [FK_ImageAnswer_RespondentAnswer] FOREIGN KEY([RespondentAnswerId])
REFERENCES [dbo].[RespondentAnswer] ([RespondentAnswerID])
GO
ALTER TABLE [dbo].[ImageAnswer] CHECK CONSTRAINT [FK_ImageAnswer_RespondentAnswer]
GO
ALTER TABLE [dbo].[LoginInfomation]  WITH CHECK ADD  CONSTRAINT [FK_LoginInfomation_Respondent] FOREIGN KEY([RespondentID])
REFERENCES [dbo].[Respondent] ([RespondentID])
GO
ALTER TABLE [dbo].[LoginInfomation] CHECK CONSTRAINT [FK_LoginInfomation_Respondent]
GO
ALTER TABLE [dbo].[MedicalAnswer]  WITH CHECK ADD  CONSTRAINT [FK_MedicalAnswer_MedicalSet] FOREIGN KEY([MedicalSetID])
REFERENCES [dbo].[MedicalSet] ([MedicalSetID])
GO
ALTER TABLE [dbo].[MedicalAnswer] CHECK CONSTRAINT [FK_MedicalAnswer_MedicalSet]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_Classification] FOREIGN KEY([ClassificationId])
REFERENCES [dbo].[Classification] ([ClassificationId])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_Classification]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_Visit]
GO
ALTER TABLE [dbo].[Medication]  WITH CHECK ADD  CONSTRAINT [FK_Medication_Classification_ClassificationId] FOREIGN KEY([ClassificationId])
REFERENCES [dbo].[Classification] ([ClassificationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Medication] CHECK CONSTRAINT [FK_Medication_Classification_ClassificationId]
GO
ALTER TABLE [dbo].[Medication]  WITH CHECK ADD  CONSTRAINT [FK_Medication_Visit_VisitId] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Medication] CHECK CONSTRAINT [FK_Medication_Visit_VisitId]
GO
ALTER TABLE [dbo].[MeridianPoint]  WITH CHECK ADD  CONSTRAINT [FK_MeridianPoint_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[MeridianPoint] CHECK CONSTRAINT [FK_MeridianPoint_Visit]
GO
ALTER TABLE [dbo].[MessageDetail]  WITH CHECK ADD  CONSTRAINT [FK_MessageDetail_MessageQueue] FOREIGN KEY([MessageQueueId])
REFERENCES [dbo].[MessageQueue] ([MessageQueueId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MessageDetail] CHECK CONSTRAINT [FK_MessageDetail_MessageQueue]
GO
ALTER TABLE [dbo].[ParticipantAttachment]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantAttachment_AttachmentType] FOREIGN KEY([AttachmentTypeID])
REFERENCES [dbo].[AttachmentType] ([AttachmentTypeID])
GO
ALTER TABLE [dbo].[ParticipantAttachment] CHECK CONSTRAINT [FK_ParticipantAttachment_AttachmentType]
GO
ALTER TABLE [dbo].[ParticipantMedicalSet]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantMedicalSet_MedicalSet] FOREIGN KEY([MedicalSetID])
REFERENCES [dbo].[MedicalSet] ([MedicalSetID])
GO
ALTER TABLE [dbo].[ParticipantMedicalSet] CHECK CONSTRAINT [FK_ParticipantMedicalSet_MedicalSet]
GO
ALTER TABLE [dbo].[ParticipantSurveyEquation]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantSurveyEquation_Equation] FOREIGN KEY([EquationId])
REFERENCES [dbo].[Equation] ([ID])
GO
ALTER TABLE [dbo].[ParticipantSurveyEquation] CHECK CONSTRAINT [FK_ParticipantSurveyEquation_Equation]
GO
ALTER TABLE [dbo].[ParticipantSurveyEquation]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantSurveyEquation_RespondentSurvey] FOREIGN KEY([RespondentSurveyId])
REFERENCES [dbo].[RespondentSurvey] ([RespondentSurveyId])
GO
ALTER TABLE [dbo].[ParticipantSurveyEquation] CHECK CONSTRAINT [FK_ParticipantSurveyEquation_RespondentSurvey]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Client]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PersonPrefix] FOREIGN KEY([PrefixID])
REFERENCES [dbo].[PersonPrefix] ([PersonPrefixID])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PersonPrefix]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_AspNetUsers_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_AspNetUsers_DoctorId]
GO
ALTER TABLE [dbo].[PatientSharing]  WITH CHECK ADD  CONSTRAINT [FK_PatientSharing_Association] FOREIGN KEY([AssociationId])
REFERENCES [dbo].[Association] ([ID])
GO
ALTER TABLE [dbo].[PatientSharing] CHECK CONSTRAINT [FK_PatientSharing_Association]
GO
ALTER TABLE [dbo].[PatientSharing]  WITH CHECK ADD  CONSTRAINT [FK_PatientSharing_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[PatientSharing] CHECK CONSTRAINT [FK_PatientSharing_Visit]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_RespondentAnswer] FOREIGN KEY([RespondentAnswerId])
REFERENCES [dbo].[RespondentAnswer] ([RespondentAnswerID])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_RespondentAnswer]
GO
ALTER TABLE [dbo].[PhotoAnswer]  WITH CHECK ADD  CONSTRAINT [FK_PhotoAnswer_RespondentAnswer] FOREIGN KEY([RespondentAnswerID])
REFERENCES [dbo].[RespondentAnswer] ([RespondentAnswerID])
GO
ALTER TABLE [dbo].[PhotoAnswer] CHECK CONSTRAINT [FK_PhotoAnswer_RespondentAnswer]
GO
ALTER TABLE [dbo].[PhotoPointAnswer]  WITH CHECK ADD  CONSTRAINT [FK_PhotoPointAnswer_PhotoAnswer] FOREIGN KEY([PhotoAnswerId])
REFERENCES [dbo].[PhotoAnswer] ([PhotoAnswerId])
GO
ALTER TABLE [dbo].[PhotoPointAnswer] CHECK CONSTRAINT [FK_PhotoPointAnswer_PhotoAnswer]
GO
ALTER TABLE [dbo].[Publishing]  WITH CHECK ADD  CONSTRAINT [FK_Publishing_Questionnaire_QuestionnaireID] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
GO
ALTER TABLE [dbo].[Publishing] CHECK CONSTRAINT [FK_Publishing_Questionnaire_QuestionnaireID]
GO
ALTER TABLE [dbo].[Publishing]  WITH CHECK ADD  CONSTRAINT [FK_Publishing_Questionnaire_QuestionnaireIDP] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
GO
ALTER TABLE [dbo].[Publishing] CHECK CONSTRAINT [FK_Publishing_Questionnaire_QuestionnaireIDP]
GO
ALTER TABLE [dbo].[PublishPartner]  WITH CHECK ADD  CONSTRAINT [FK_PublishPartner_PartnerType] FOREIGN KEY([PartnerTypeID])
REFERENCES [dbo].[PartnerType] ([PartnerTypeID])
GO
ALTER TABLE [dbo].[PublishPartner] CHECK CONSTRAINT [FK_PublishPartner_PartnerType]
GO
ALTER TABLE [dbo].[PublishPartner]  WITH CHECK ADD  CONSTRAINT [FK_Sponsor_Partner] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partner] ([PartnerID])
GO
ALTER TABLE [dbo].[PublishPartner] CHECK CONSTRAINT [FK_Sponsor_Partner]
GO
ALTER TABLE [dbo].[PublishPartner]  WITH CHECK ADD  CONSTRAINT [FK_Sponsor_Publishing] FOREIGN KEY([PublishingID])
REFERENCES [dbo].[Publishing] ([PublishingID])
GO
ALTER TABLE [dbo].[PublishPartner] CHECK CONSTRAINT [FK_Sponsor_Publishing]
GO
ALTER TABLE [dbo].[QueryEquation]  WITH CHECK ADD  CONSTRAINT [FK_QueryEquation_Equation] FOREIGN KEY([EquationID])
REFERENCES [dbo].[Equation] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QueryEquation] CHECK CONSTRAINT [FK_QueryEquation_Equation]
GO
ALTER TABLE [dbo].[QueryEquation]  WITH CHECK ADD  CONSTRAINT [FK_QueryEquation_Query] FOREIGN KEY([QueryID])
REFERENCES [dbo].[Query] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QueryEquation] CHECK CONSTRAINT [FK_QueryEquation_Query]
GO
ALTER TABLE [dbo].[QueryQuestion]  WITH CHECK ADD  CONSTRAINT [FK_QueryQuestion_Query_QueryId] FOREIGN KEY([QueryId])
REFERENCES [dbo].[Query] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QueryQuestion] CHECK CONSTRAINT [FK_QueryQuestion_Query_QueryId]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_QuestionType] FOREIGN KEY([QuestionTypeID])
REFERENCES [dbo].[QuestionType] ([QuestionTypeID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_QuestionType]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Section] ([SectionID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Section]
GO
ALTER TABLE [dbo].[RepeatingGroupSelection]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingGroupSelection_SelectionType] FOREIGN KEY([SelectionTypeID])
REFERENCES [dbo].[SelectionType] ([SelectionTypeID])
GO
ALTER TABLE [dbo].[RepeatingGroupSelection] CHECK CONSTRAINT [FK_RepeatingGroupSelection_SelectionType]
GO
ALTER TABLE [dbo].[RepeatingImageAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingImageAnswer_RepeatingRespondentAnswer] FOREIGN KEY([RepeatingRespondentAnswerId])
REFERENCES [dbo].[RepeatingRespondentAnswer] ([RepeatingRespondentAnswerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepeatingImageAnswer] CHECK CONSTRAINT [FK_RepeatingImageAnswer_RepeatingRespondentAnswer]
GO
ALTER TABLE [dbo].[RepeatingPhotoAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingPhotoAnswer_RepeatingRespondentAnswer] FOREIGN KEY([RespondentAnswerID])
REFERENCES [dbo].[RepeatingRespondentAnswer] ([RepeatingRespondentAnswerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepeatingPhotoAnswer] CHECK CONSTRAINT [FK_RepeatingPhotoAnswer_RepeatingRespondentAnswer]
GO
ALTER TABLE [dbo].[RepeatingPhotoPointAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingPhotoPointAnswer_RepeatingPhotoAnswer] FOREIGN KEY([RepeatingPhotoAnswerId])
REFERENCES [dbo].[RepeatingPhotoAnswer] ([RepeatingPhotoAnswerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepeatingPhotoPointAnswer] CHECK CONSTRAINT [FK_RepeatingPhotoPointAnswer_RepeatingPhotoAnswer]
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingRespondentAnswer_Patient_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientId])
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer] CHECK CONSTRAINT [FK_RepeatingRespondentAnswer_Patient_PatientId]
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingRespondentAnswer_RespondentAnswer] FOREIGN KEY([RespondentAnswerId])
REFERENCES [dbo].[RespondentAnswer] ([RespondentAnswerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer] CHECK CONSTRAINT [FK_RepeatingRespondentAnswer_RespondentAnswer]
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingRespondentAnswer_RespondentSurvey] FOREIGN KEY([RespondentSurveyId])
REFERENCES [dbo].[RespondentSurvey] ([RespondentSurveyId])
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer] CHECK CONSTRAINT [FK_RepeatingRespondentAnswer_RespondentSurvey]
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingRespondentAnswer_VisitQuestionnaire_VisitQuestionnaireId] FOREIGN KEY([VisitQuestionnaireId])
REFERENCES [dbo].[VisitQuestionnaire] ([VisitQuestionnaireId])
GO
ALTER TABLE [dbo].[RepeatingRespondentAnswer] CHECK CONSTRAINT [FK_RepeatingRespondentAnswer_VisitQuestionnaire_VisitQuestionnaireId]
GO
ALTER TABLE [dbo].[RepeatingSelectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingSelectionGroup_RepeatingGroupSelection] FOREIGN KEY([GroupID])
REFERENCES [dbo].[RepeatingGroupSelection] ([RepeatingGroupSelectionId])
GO
ALTER TABLE [dbo].[RepeatingSelectionGroup] CHECK CONSTRAINT [FK_RepeatingSelectionGroup_RepeatingGroupSelection]
GO
ALTER TABLE [dbo].[RepeatingSelectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_RepeatingSelectionGroup_RepeatingSingleSelection] FOREIGN KEY([SelectionID])
REFERENCES [dbo].[RepeatingSingleSelection] ([RepeatingSingleSelectionId])
GO
ALTER TABLE [dbo].[RepeatingSelectionGroup] CHECK CONSTRAINT [FK_RepeatingSelectionGroup_RepeatingSingleSelection]
GO
ALTER TABLE [dbo].[Respondent]  WITH CHECK ADD  CONSTRAINT [FK_Respondent_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Respondent] CHECK CONSTRAINT [FK_Respondent_Client]
GO
ALTER TABLE [dbo].[Respondent]  WITH CHECK ADD  CONSTRAINT [FK_Respondent_RespondentType] FOREIGN KEY([RespondentTypeID])
REFERENCES [dbo].[RespondentType] ([RespondentTypeID])
GO
ALTER TABLE [dbo].[Respondent] CHECK CONSTRAINT [FK_Respondent_RespondentType]
GO
ALTER TABLE [dbo].[RespondentAddress]  WITH CHECK ADD  CONSTRAINT [FK_RespondentAddress_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[RespondentAddress] CHECK CONSTRAINT [FK_RespondentAddress_Address]
GO
ALTER TABLE [dbo].[RespondentAddress]  WITH CHECK ADD  CONSTRAINT [FK_RespondentAddress_Respondent] FOREIGN KEY([RespondentID])
REFERENCES [dbo].[Respondent] ([RespondentID])
GO
ALTER TABLE [dbo].[RespondentAddress] CHECK CONSTRAINT [FK_RespondentAddress_Respondent]
GO
ALTER TABLE [dbo].[RespondentAid]  WITH CHECK ADD  CONSTRAINT [FK_RespondentAid_Aids] FOREIGN KEY([AidsID])
REFERENCES [dbo].[Aids] ([AidsID])
GO
ALTER TABLE [dbo].[RespondentAid] CHECK CONSTRAINT [FK_RespondentAid_Aids]
GO
ALTER TABLE [dbo].[RespondentAid]  WITH CHECK ADD  CONSTRAINT [FK_RespondentAid_Respondent] FOREIGN KEY([RespondentID])
REFERENCES [dbo].[Respondent] ([RespondentID])
GO
ALTER TABLE [dbo].[RespondentAid] CHECK CONSTRAINT [FK_RespondentAid_Respondent]
GO
ALTER TABLE [dbo].[RespondentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RespondentAnswer_RespondentSurvey] FOREIGN KEY([RespondentSurveyId])
REFERENCES [dbo].[RespondentSurvey] ([RespondentSurveyId])
GO
ALTER TABLE [dbo].[RespondentAnswer] CHECK CONSTRAINT [FK_RespondentAnswer_RespondentSurvey]
GO
ALTER TABLE [dbo].[RespondentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RespondentAnswer_VisitQuestionnaire_VisitQuestionnaireId] FOREIGN KEY([VisitQuestionnaireId])
REFERENCES [dbo].[VisitQuestionnaire] ([VisitQuestionnaireId])
GO
ALTER TABLE [dbo].[RespondentAnswer] CHECK CONSTRAINT [FK_RespondentAnswer_VisitQuestionnaire_VisitQuestionnaireId]
GO
ALTER TABLE [dbo].[RespondentContacter]  WITH CHECK ADD  CONSTRAINT [FK_RespondentContacter_Contacter] FOREIGN KEY([ContacterID])
REFERENCES [dbo].[Contacter] ([ContacterID])
GO
ALTER TABLE [dbo].[RespondentContacter] CHECK CONSTRAINT [FK_RespondentContacter_Contacter]
GO
ALTER TABLE [dbo].[RespondentContacter]  WITH CHECK ADD  CONSTRAINT [FK_RespondentContacter_Respondent] FOREIGN KEY([RespondentID])
REFERENCES [dbo].[Respondent] ([RespondentID])
GO
ALTER TABLE [dbo].[RespondentContacter] CHECK CONSTRAINT [FK_RespondentContacter_Respondent]
GO
ALTER TABLE [dbo].[RespondentHistory]  WITH CHECK ADD  CONSTRAINT [FK_RespondentHistory_HistoryStatus] FOREIGN KEY([HistoryStatusID])
REFERENCES [dbo].[HistoryStatus] ([HistoryStatusID])
GO
ALTER TABLE [dbo].[RespondentHistory] CHECK CONSTRAINT [FK_RespondentHistory_HistoryStatus]
GO
ALTER TABLE [dbo].[RespondentQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_RespondentQuestionnaire_AnswerStatus] FOREIGN KEY([AnswerStatusID])
REFERENCES [dbo].[AnswerStatus] ([AnswerStatusID])
GO
ALTER TABLE [dbo].[RespondentQuestionnaire] CHECK CONSTRAINT [FK_RespondentQuestionnaire_AnswerStatus]
GO
ALTER TABLE [dbo].[RespondentQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_RespondentQuestionnaire_Questionnaire_QuestionnaireID] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
GO
ALTER TABLE [dbo].[RespondentQuestionnaire] CHECK CONSTRAINT [FK_RespondentQuestionnaire_Questionnaire_QuestionnaireID]
GO
ALTER TABLE [dbo].[RespondentQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_RespondentQuestionnaire_Respondent] FOREIGN KEY([RespondentID])
REFERENCES [dbo].[Respondent] ([RespondentID])
GO
ALTER TABLE [dbo].[RespondentQuestionnaire] CHECK CONSTRAINT [FK_RespondentQuestionnaire_Respondent]
GO
ALTER TABLE [dbo].[RespondentSurvey]  WITH CHECK ADD  CONSTRAINT [FK_RespondentSurveys_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RespondentSurvey] CHECK CONSTRAINT [FK_RespondentSurveys_AspNetUsers]
GO
ALTER TABLE [dbo].[RespondentSurvey]  WITH CHECK ADD  CONSTRAINT [FK_RespondentSurveys_SurveyAssign] FOREIGN KEY([SurveyAssignId])
REFERENCES [dbo].[SurveyAssign] ([SurveyAssignId])
GO
ALTER TABLE [dbo].[RespondentSurvey] CHECK CONSTRAINT [FK_RespondentSurveys_SurveyAssign]
GO
ALTER TABLE [dbo].[RespondentSurvey]  WITH CHECK ADD  CONSTRAINT [FK_RespondentSurveys_SurveyAssignReminder] FOREIGN KEY([SurveyAssignReminderId])
REFERENCES [dbo].[SurveyAssignReminder] ([SurveyAssignReminderId])
GO
ALTER TABLE [dbo].[RespondentSurvey] CHECK CONSTRAINT [FK_RespondentSurveys_SurveyAssignReminder]
GO
ALTER TABLE [dbo].[RespondentSurvey]  WITH CHECK ADD  CONSTRAINT [FK_RespondentSurveys_Surveys] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[RespondentSurvey] CHECK CONSTRAINT [FK_RespondentSurveys_Surveys]
GO
ALTER TABLE [dbo].[RolePrivilege]  WITH CHECK ADD  CONSTRAINT [FK_RolePrivilege_Privilege] FOREIGN KEY([PrivilegeID])
REFERENCES [dbo].[Privilege] ([PrivilegeID])
GO
ALTER TABLE [dbo].[RolePrivilege] CHECK CONSTRAINT [FK_RolePrivilege_Privilege]
GO
ALTER TABLE [dbo].[RolePrivilege]  WITH CHECK ADD  CONSTRAINT [FK_RolePrivilege_UserRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[UserRole] ([UserRoleID])
GO
ALTER TABLE [dbo].[RolePrivilege] CHECK CONSTRAINT [FK_RolePrivilege_UserRole]
GO
ALTER TABLE [dbo].[RoleUser]  WITH CHECK ADD  CONSTRAINT [FK_UserRightDetail_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RoleUser] CHECK CONSTRAINT [FK_UserRightDetail_User]
GO
ALTER TABLE [dbo].[RoleUser]  WITH CHECK ADD  CONSTRAINT [FK_UserRightDetail_UserRight] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([UserRoleID])
GO
ALTER TABLE [dbo].[RoleUser] CHECK CONSTRAINT [FK_UserRightDetail_UserRight]
GO
ALTER TABLE [dbo].[RomVisit]  WITH CHECK ADD  CONSTRAINT [FK_RomVisit_RomType_RomTypeId] FOREIGN KEY([RomTypeId])
REFERENCES [dbo].[RomType] ([RomTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RomVisit] CHECK CONSTRAINT [FK_RomVisit_RomType_RomTypeId]
GO
ALTER TABLE [dbo].[RomVisit]  WITH CHECK ADD  CONSTRAINT [FK_RomVisit_Visit_VisitId] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RomVisit] CHECK CONSTRAINT [FK_RomVisit_Visit_VisitId]
GO
ALTER TABLE [dbo].[ScaleColumn]  WITH CHECK ADD  CONSTRAINT [FK_ScaleColumn_Scale] FOREIGN KEY([ScaleID])
REFERENCES [dbo].[Scale] ([ScaleID])
GO
ALTER TABLE [dbo].[ScaleColumn] CHECK CONSTRAINT [FK_ScaleColumn_Scale]
GO
ALTER TABLE [dbo].[ScaleRange]  WITH CHECK ADD  CONSTRAINT [FK_ScaleRange_Scale] FOREIGN KEY([ScaleID])
REFERENCES [dbo].[Scale] ([ScaleID])
GO
ALTER TABLE [dbo].[ScaleRange] CHECK CONSTRAINT [FK_ScaleRange_Scale]
GO
ALTER TABLE [dbo].[ScaleRow]  WITH CHECK ADD  CONSTRAINT [FK_ScaleRow_DataListAnswer] FOREIGN KEY([DataListAnswerID])
REFERENCES [dbo].[DataListAnswer] ([ID])
GO
ALTER TABLE [dbo].[ScaleRow] CHECK CONSTRAINT [FK_ScaleRow_DataListAnswer]
GO
ALTER TABLE [dbo].[ScaleRow]  WITH CHECK ADD  CONSTRAINT [FK_ScaleRow_Scale1] FOREIGN KEY([ScaleID])
REFERENCES [dbo].[Scale] ([ScaleID])
GO
ALTER TABLE [dbo].[ScaleRow] CHECK CONSTRAINT [FK_ScaleRow_Scale1]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Questionnaire] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Questionnaire]
GO
ALTER TABLE [dbo].[SectionContextTag]  WITH CHECK ADD  CONSTRAINT [FK_SectionContextTag_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Section] ([SectionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SectionContextTag] CHECK CONSTRAINT [FK_SectionContextTag_Section]
GO
ALTER TABLE [dbo].[SectionHeader]  WITH CHECK ADD  CONSTRAINT [FK_SectionHeader_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Section] ([SectionID])
GO
ALTER TABLE [dbo].[SectionHeader] CHECK CONSTRAINT [FK_SectionHeader_Section]
GO
ALTER TABLE [dbo].[SectionItems]  WITH CHECK ADD  CONSTRAINT [FK_SectionItemOrder_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Section] ([SectionID])
GO
ALTER TABLE [dbo].[SectionItems] CHECK CONSTRAINT [FK_SectionItemOrder_Section]
GO
ALTER TABLE [dbo].[SectionItems]  WITH CHECK ADD  CONSTRAINT [FK_SectionItemOrder_SectionItemType] FOREIGN KEY([ItemTypeID])
REFERENCES [dbo].[SectionItemType] ([ItemTypeID])
GO
ALTER TABLE [dbo].[SectionItems] CHECK CONSTRAINT [FK_SectionItemOrder_SectionItemType]
GO
ALTER TABLE [dbo].[SelectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_SelectionGroup_GroupSelection] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupSelection] ([GroupSelectionID])
GO
ALTER TABLE [dbo].[SelectionGroup] CHECK CONSTRAINT [FK_SelectionGroup_GroupSelection]
GO
ALTER TABLE [dbo].[SelectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_SelectionGroup_SingleSelection1] FOREIGN KEY([SelectionID])
REFERENCES [dbo].[SingleSelection] ([SingleSelectionID])
GO
ALTER TABLE [dbo].[SelectionGroup] CHECK CONSTRAINT [FK_SelectionGroup_SingleSelection1]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierParent] FOREIGN KEY([ParentSupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SupplierParent]
GO
ALTER TABLE [dbo].[SupplierBrandLogo]  WITH CHECK ADD  CONSTRAINT [FK_BrandLogo_SupplierBrandLogo] FOREIGN KEY([BrandLogoId])
REFERENCES [dbo].[BrandLogo] ([BrandLogoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SupplierBrandLogo] CHECK CONSTRAINT [FK_BrandLogo_SupplierBrandLogo]
GO
ALTER TABLE [dbo].[SupplierBrandLogo]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierBrandLogo] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[SupplierBrandLogo] CHECK CONSTRAINT [FK_Supplier_SupplierBrandLogo]
GO
ALTER TABLE [dbo].[SupplierEmailDomain]  WITH CHECK ADD  CONSTRAINT [FK_EmailDomain_SupplierEmailDomain] FOREIGN KEY([EmailDomainId])
REFERENCES [dbo].[EmailDomain] ([EmailDomainId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SupplierEmailDomain] CHECK CONSTRAINT [FK_EmailDomain_SupplierEmailDomain]
GO
ALTER TABLE [dbo].[SupplierEmailDomain]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SupplierEmailDomain] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[SupplierEmailDomain] CHECK CONSTRAINT [FK_Supplier_SupplierEmailDomain]
GO
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [FK_Survey_UserCreate] FOREIGN KEY([CreateUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [FK_Survey_UserCreate]
GO
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [FK_Survey_UserModify] FOREIGN KEY([LastModifyUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [FK_Survey_UserModify]
GO
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [FK_Surveys_Questionnaires] FOREIGN KEY([QuestionnaireId])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
GO
ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [FK_Surveys_Questionnaires]
GO
ALTER TABLE [dbo].[SurveyAssign]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssign_Role] FOREIGN KEY([AssignRoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[SurveyAssign] CHECK CONSTRAINT [FK_SurveyAssign_Role]
GO
ALTER TABLE [dbo].[SurveyAssign]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssign_Survey] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SurveyAssign] CHECK CONSTRAINT [FK_SurveyAssign_Survey]
GO
ALTER TABLE [dbo].[SurveyAssign]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssign_UserCreate] FOREIGN KEY([CreateUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SurveyAssign] CHECK CONSTRAINT [FK_SurveyAssign_UserCreate]
GO
ALTER TABLE [dbo].[SurveyAssign]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssign_UserModify] FOREIGN KEY([LastModifyUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SurveyAssign] CHECK CONSTRAINT [FK_SurveyAssign_UserModify]
GO
ALTER TABLE [dbo].[SurveyAssignCompanyTableDetail]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssignCompanyTableDetail_CompanyTable] FOREIGN KEY([CompanyTableId])
REFERENCES [dbo].[CompanyTable] ([CompanyTableId])
GO
ALTER TABLE [dbo].[SurveyAssignCompanyTableDetail] CHECK CONSTRAINT [FK_SurveyAssignCompanyTableDetail_CompanyTable]
GO
ALTER TABLE [dbo].[SurveyAssignCompanyTableDetail]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssignCompanyTableDetail_CompanyTableDetail] FOREIGN KEY([CompanyTableDetailId])
REFERENCES [dbo].[CompanyTableDetail] ([CompanyTableDetailId])
GO
ALTER TABLE [dbo].[SurveyAssignCompanyTableDetail] CHECK CONSTRAINT [FK_SurveyAssignCompanyTableDetail_CompanyTableDetail]
GO
ALTER TABLE [dbo].[SurveyAssignCompanyTableDetail]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssignCompanyTableDetail_SurveyAssig] FOREIGN KEY([SurveyAssignId])
REFERENCES [dbo].[SurveyAssign] ([SurveyAssignId])
GO
ALTER TABLE [dbo].[SurveyAssignCompanyTableDetail] CHECK CONSTRAINT [FK_SurveyAssignCompanyTableDetail_SurveyAssig]
GO
ALTER TABLE [dbo].[SurveyAssignReminder]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAssignReminder_Survey] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SurveyAssignReminder] CHECK CONSTRAINT [FK_SurveyAssignReminder_Survey]
GO
ALTER TABLE [dbo].[SurveyEmailContent]  WITH CHECK ADD  CONSTRAINT [FK_SurveyEmailContent_EmailContent] FOREIGN KEY([EmailContentId])
REFERENCES [dbo].[EmailContent] ([Id])
GO
ALTER TABLE [dbo].[SurveyEmailContent] CHECK CONSTRAINT [FK_SurveyEmailContent_EmailContent]
GO
ALTER TABLE [dbo].[SurveyEmailContent]  WITH CHECK ADD  CONSTRAINT [FK_SurveyEmailContent_Query] FOREIGN KEY([QueryId])
REFERENCES [dbo].[Query] ([Id])
GO
ALTER TABLE [dbo].[SurveyEmailContent] CHECK CONSTRAINT [FK_SurveyEmailContent_Query]
GO
ALTER TABLE [dbo].[SurveyEmailContent]  WITH CHECK ADD  CONSTRAINT [FK_SurveyEmailContent_Survey] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SurveyEmailContent] CHECK CONSTRAINT [FK_SurveyEmailContent_Survey]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotification_Survey] FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([SurveyId])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotification_Survey]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotification_UserCreate] FOREIGN KEY([CreateUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotification_UserCreate]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotification_UserModify] FOREIGN KEY([LastModifyUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotification_UserModify]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationClosure_EmailContent] FOREIGN KEY([ClosureEmailContentId])
REFERENCES [dbo].[EmailContent] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationClosure_EmailContent]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationInvitation_EmailContent] FOREIGN KEY([InvitationEmailContentId])
REFERENCES [dbo].[EmailContent] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationInvitation_EmailContent]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationReminder_EmailContent] FOREIGN KEY([ReminderEmailContentId])
REFERENCES [dbo].[EmailContent] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationReminder_EmailContent]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationReminder_SurveyNotificationSchedule] FOREIGN KEY([ReminderSurveyNotificationScheduleId])
REFERENCES [dbo].[SurveyNotificationSchedule] ([SurveyNotificationScheduleId])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationReminder_SurveyNotificationSchedule]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationStarter_EmailContent] FOREIGN KEY([StarterEmailContentId])
REFERENCES [dbo].[EmailContent] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationStarter_EmailContent]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationStarter_SurveyNotificationSchedule] FOREIGN KEY([StarterSurveyNotificationScheduleId])
REFERENCES [dbo].[SurveyNotificationSchedule] ([SurveyNotificationScheduleId])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationStarter_SurveyNotificationSchedule]
GO
ALTER TABLE [dbo].[SurveyNotification]  WITH CHECK ADD  CONSTRAINT [FK_SurveyNotificationThankyou_EmailContent] FOREIGN KEY([ThankyouEmailContentId])
REFERENCES [dbo].[EmailContent] ([Id])
GO
ALTER TABLE [dbo].[SurveyNotification] CHECK CONSTRAINT [FK_SurveyNotificationThankyou_EmailContent]
GO
ALTER TABLE [dbo].[TableCell]  WITH CHECK ADD  CONSTRAINT [FK_TableCell_AnswerType] FOREIGN KEY([AnswerTypeID])
REFERENCES [dbo].[AnswerType] ([AnswerTypeID])
GO
ALTER TABLE [dbo].[TableCell] CHECK CONSTRAINT [FK_TableCell_AnswerType]
GO
ALTER TABLE [dbo].[TableCell]  WITH CHECK ADD  CONSTRAINT [FK_TableCell_TableRow] FOREIGN KEY([RowID])
REFERENCES [dbo].[TableRow] ([TableRowID])
GO
ALTER TABLE [dbo].[TableCell] CHECK CONSTRAINT [FK_TableCell_TableRow]
GO
ALTER TABLE [dbo].[TableColumn]  WITH CHECK ADD  CONSTRAINT [FK_TableColumn_Table] FOREIGN KEY([TableID])
REFERENCES [dbo].[Table] ([TableID])
GO
ALTER TABLE [dbo].[TableColumn] CHECK CONSTRAINT [FK_TableColumn_Table]
GO
ALTER TABLE [dbo].[TableRow]  WITH CHECK ADD  CONSTRAINT [FK_TableRow_Table] FOREIGN KEY([TableID])
REFERENCES [dbo].[Table] ([TableID])
GO
ALTER TABLE [dbo].[TableRow] CHECK CONSTRAINT [FK_TableRow_Table]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Client]
GO
ALTER TABLE [dbo].[UserAccessQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessQuestionnaire_Questionnaire_QuestionnaireID] FOREIGN KEY([QuestionnaireID])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAccessQuestionnaire] CHECK CONSTRAINT [FK_UserAccessQuestionnaire_Questionnaire_QuestionnaireID]
GO
ALTER TABLE [dbo].[UserAccessQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessQuestionnaire_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserAccessQuestionnaire] CHECK CONSTRAINT [FK_UserAccessQuestionnaire_User]
GO
ALTER TABLE [dbo].[UserJwtToken]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_UserJwtToken] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserJwtToken] CHECK CONSTRAINT [FK_ApplicationUser_UserJwtToken]
GO
ALTER TABLE [dbo].[UserJwtTokenHistory]  WITH CHECK ADD  CONSTRAINT [FK_UserJwtToken_UserJwtTokenHistory] FOREIGN KEY([UserJwtTokenId])
REFERENCES [dbo].[UserJwtToken] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserJwtTokenHistory] CHECK CONSTRAINT [FK_UserJwtToken_UserJwtTokenHistory]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Patient_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Patient_PatientId]
GO
ALTER TABLE [dbo].[VisitQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_VisitQuestionnaire_Questionnaire_QuestionnaireId] FOREIGN KEY([QuestionnaireId])
REFERENCES [dbo].[Questionnaire] ([QuestionnaireID])
GO
ALTER TABLE [dbo].[VisitQuestionnaire] CHECK CONSTRAINT [FK_VisitQuestionnaire_Questionnaire_QuestionnaireId]
GO
ALTER TABLE [dbo].[VisitQuestionnaire]  WITH CHECK ADD  CONSTRAINT [FK_VisitQuestionnaire_Visit_VisitId] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VisitQuestionnaire] CHECK CONSTRAINT [FK_VisitQuestionnaire_Visit_VisitId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
