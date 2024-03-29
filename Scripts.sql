USE [HPAF]
GO
/****** Object:  Table [dbo].[CustomerMaster]    Script Date: 08-07-2019 11.03.04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[CustomerMaster](
	[CustomerMasterID] [int] IDENTITY(1,1) NOT NULL,
	[PreFix] [varchar](50) NOT NULL,
	[CustomerID]  AS ([PreFix]+CONVERT([varchar](10),[CustomerMasterID])) PERSISTED NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[FatherOrHusbandName] [varchar](100) NOT NULL,
	[DOB] [nvarchar](100) NULL,
	[Gender] [varchar](10) NOT NULL,
	[Age] [int] NULL,
	[MobileNo] [bigint] NOT NULL,
	[AadharNo] [bigint] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Landmark] [nvarchar](100) NOT NULL,
	[Pincode] [bigint] NOT NULL,
	[Occupation] [varchar](100) NULL,
	[PhotoFile] [nvarchar](200) NULL,
	[AadharFile] [nvarchar](200) NULL,
	[AddressProofFile] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[createdDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMIUpdate]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMIUpdate](
	[EMIUpdateID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](60) NOT NULL,
	[AgreementID] [varchar](100) NOT NULL,
	[StoreLocation] [nvarchar](100) NOT NULL,
	[PaymentReceivedLocation] [nvarchar](100) NOT NULL,
	[EMIAmountReceived] [bigint] NOT NULL,
	[DueDate] [date] NOT NULL,
	[DateofPayment] [date] NOT NULL,
	[NoOfDaysDelayed] [int] NOT NULL,
	[PenaltyAmount] [bigint] NULL,
	[Status] [varchar](100) NULL,
	[PrintReceipt] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[createdDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuaranteerMaster]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuaranteerMaster](
	[GuaranteerMasterID] [int] IDENTITY(1,1) NOT NULL,
	[PreFix] [varchar](50) NOT NULL,
	[GuaranterID]  AS ([PreFix]+CONVERT([varchar](7),[GuaranteerMasterID])) PERSISTED,
	[CustomerID] [varchar](60) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[FatherOrHusbandName] [varchar](100) NULL,
	[DOB] [nvarchar](100) NULL,
	[Gender] [char](4) NOT NULL,
	[Age] [int] NULL,
	[MobileNo] [bigint] NOT NULL,
	[AadharNo] [bigint] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Landmark] [nvarchar](100) NOT NULL,
	[Pincode] [bigint] NOT NULL,
	[Occupation] [varchar](100) NULL,
	[PhotoFile] [nvarchar](200) NULL,
	[AadharFile] [nvarchar](200) NULL,
	[AddressProofFile] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[createdDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GuaranteerMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvestorsCenter]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvestorsCenter](
	[InvestorsID] [bigint] IDENTITY(100,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Amount] [bigint] NOT NULL,
	[InvDate] [date] NOT NULL,
	[WithdrawAmount] [decimal](18, 0) NULL,
	[WithdrawDate] [date] NULL,
	[EffectiveAmount] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvestorsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationMaster]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationMaster](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](100) NULL,
	[LocationCode] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemeDetails]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemeDetails](
	[SchemeID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](60) NOT NULL,
	[AgreementID] [varchar](100) NOT NULL,
	[LocationCode] [nvarchar](100) NOT NULL,
	[DownPayment] [nvarchar](100) NULL,
	[HandLoan] [nvarchar](100) NULL,
	[TotalLoanAmount] [nvarchar](100) NULL,
	[EMIAmount] [bigint] NOT NULL,
	[NoOfEMI] [int] NOT NULL,
	[AgreementDate] [date] NOT NULL,
	[HandLoanDueDate] [date] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[createdDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AgreementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Region] [varchar](100) NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleMaster]    Script Date: 08-07-2019 11.03.05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleMaster](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](60) NOT NULL,
	[StoreLocation] [varchar](100) NOT NULL,
	[VehicleName] [varchar](100) NOT NULL,
	[Model] [varchar](100) NOT NULL,
	[RegistrationNo] [nvarchar](100) NOT NULL,
	[VehicleNO] [nvarchar](100) NULL,
	[EngineNo] [nvarchar](100) NOT NULL,
	[ChasisNo] [nvarchar](100) NOT NULL,
	[PreviousRegNo] [nvarchar](100) NULL,
	[Insurance] [char](3) NOT NULL,
	[NOCDocuments] [char](4) NOT NULL,
	[Pollution] [char](2) NULL,
	[VehicleType] [nvarchar](100) NULL,
	[VehicleCompany] [varchar](100) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[createdDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerMaster] ON 

INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'C', N'komala', N'd', N'cghjbkl', N'21111994', N'F   ', 24, 456789, 4567890, N'chjb', N'fghj', 465789, N'dfghjk', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T08:30:31.263' AS DateTime), NULL, CAST(N'2019-06-22T08:30:31.263' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'C', N'sunil', N'a', N'dygvh', N'', N'M   ', 28, 567890, 567890, N'bjn m', N'vhbjn', 567, N'hgbj', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T10:07:31.070' AS DateTime), NULL, CAST(N'2019-06-22T10:07:31.070' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'C', N'john1', N'b', N'dfgbjh', N'', N'M   ', 0, 456789, 56789, N'gvbj n1', N'gvhjbj', 5678, N'hvbj ', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T10:29:27.890' AS DateTime), NULL, CAST(N'2019-06-22T10:29:27.890' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'C', N'Vidhya', N'Sri', N'Raj', N'', N'F   ', 24, 123456789, 1234567890, N'hyd', N'hyd', 50031, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:21:44.780' AS DateTime), NULL, CAST(N'2019-07-04T21:21:44.780' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:55:46.110' AS DateTime), NULL, CAST(N'2019-07-04T21:55:46.110' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:55:54.110' AS DateTime), NULL, CAST(N'2019-07-04T21:55:54.110' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:01.537' AS DateTime), NULL, CAST(N'2019-07-04T21:56:01.537' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:37.560' AS DateTime), NULL, CAST(N'2019-07-04T21:56:37.560' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:39.570' AS DateTime), NULL, CAST(N'2019-07-04T21:56:39.570' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:39.723' AS DateTime), NULL, CAST(N'2019-07-04T21:56:39.723' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'C', N'abc', N'j', N'ghjgj', N'6-7-1987', N'M   ', 0, 9999966666, 258645687896, N'nrptttt', N'nrptttt', 522603, N'carpentor', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:57:13.400' AS DateTime), NULL, CAST(N'2019-07-04T21:57:13.400' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'C', N'Chiru', N'm', N'agni', N'', N'M   ', 0, 8977704674, 12345678909, N'hyd', N'hyd', 500032, N'business', NULL, NULL, NULL, NULL, CAST(N'2019-06-30T15:56:00.243' AS DateTime), NULL, CAST(N'2019-06-30T15:56:00.243' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'C', N'Keerthi', N'G', N'E', N'', N'F   ', 0, 9966225870, 124567890, N'Ponnur', N'Ponnur', 500032, N'Job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T12:57:29.997' AS DateTime), NULL, CAST(N'2019-07-06T12:57:29.997' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (21, N'C', N'Keerthi', N'G', N'E', N'', N'F   ', 0, 9966225870, 124567890, N'Ponnur', N'Ponnur', 500032, N'Job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T12:59:29.567' AS DateTime), NULL, CAST(N'2019-07-06T12:59:29.567' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (22, N'C', N'Keerthi', N'G', N'E', N'', N'F   ', 0, 9966225870, 124567890, N'Ponnur', N'Ponnur', 500032, N'Job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:13:56.330' AS DateTime), NULL, CAST(N'2019-07-06T13:13:56.330' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'C', N'Keerthi', N'G', N'E', N'', N'F   ', 0, 9966225870, 124567890, N'Ponnur', N'Ponnur', 500032, N'Job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:16:57.740' AS DateTime), NULL, CAST(N'2019-07-06T13:16:57.740' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (24, N'C', N'Keerthi', N'G', N'E', N'', N'F   ', 0, 9966225870, 124567890, N'Ponnur', N'Ponnur', 500032, N'Job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:18:39.333' AS DateTime), NULL, CAST(N'2019-07-06T13:18:39.333' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'C', N'Keerthi', N'G', N'E', N'', N'F   ', 0, 9966225870, 124567890, N'Ponnur', N'Ponnur', 500032, N'Job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:22:08.270' AS DateTime), NULL, CAST(N'2019-07-06T13:22:08.270' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'C', N'Manu', N'H', N'vjhb', N'', N'F   ', 24, 9966225870, 2346890, N'v b ', N'cgv ', 456789, N'b n', NULL, NULL, NULL, NULL, CAST(N'2019-06-30T20:07:05.773' AS DateTime), NULL, CAST(N'2019-06-30T20:07:05.773' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'C', N'aswin', N'b', N'sdfghj', N'', N'M   ', 26, 3456789, 35467890, N'cvb', N'dfghj', 9865, N'rtyu', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T08:33:58.240' AS DateTime), NULL, CAST(N'2019-06-22T08:33:58.240' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'C', N'shiva', N'g', N'gog', N'', N'M   ', 0, 4998654789, 598546890, N'hgvn', N'gfhbkj', 7679809, N'hgkjb', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:04:22.237' AS DateTime), NULL, CAST(N'2019-06-22T09:04:22.237' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'C', N'ned', N's', N'frig', N'', N'M   ', 0, 999999999, 35898764, N'fgfh', N'dgf', 243546, N'df', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:30:50.920' AS DateTime), NULL, CAST(N'2019-06-22T09:30:50.920' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'C', N'Stark', N's', N'dfgh', N'', N'M   ', 0, 999999999, 35898764, N'fgfh', N'dgf', 243546, N'df', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:31:32.430' AS DateTime), NULL, CAST(N'2019-06-22T09:31:32.430' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'C', N'Jon', N's', N'Snow', N'', N'M   ', 0, 999999999, 35898764, N'fgfh', N'dgf', 243546, N'df', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:31:49.530' AS DateTime), NULL, CAST(N'2019-06-22T09:31:49.530' AS DateTime))
INSERT [dbo].[CustomerMaster] ([CustomerMasterID], [PreFix], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'C', N'rob', N's', N'sdfbn', N'', N'M   ', 0, 13245687, 245678, N'fg', N'vbn', 3567, N'd', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:39:02.857' AS DateTime), NULL, CAST(N'2019-06-22T09:39:02.857' AS DateTime))
SET IDENTITY_INSERT [dbo].[CustomerMaster] OFF
SET IDENTITY_INSERT [dbo].[EMIUpdate] ON 

INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'C1', N'1234', N'NRPT2', N'NRPT1', 1200, CAST(N'2019-06-21' AS Date), CAST(N'2019-06-23' AS Date), 2, NULL, N'Paid', NULL, NULL, CAST(N'2019-05-23T12:11:40.297' AS DateTime), NULL, CAST(N'2019-05-23T12:11:40.297' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'C1', N'1234', N'NRPT2', N'NRPT1', 1200, CAST(N'2019-05-21' AS Date), CAST(N'2019-05-21' AS Date), 0, NULL, N'Paid', NULL, NULL, CAST(N'2019-06-21T12:11:40.297' AS DateTime), NULL, CAST(N'2019-06-21T12:11:40.297' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'C2', N'4321', N'NRPT1', N'', 2300, CAST(N'2019-06-01' AS Date), CAST(N'2019-06-23' AS Date), 22, NULL, N'Paid', NULL, NULL, CAST(N'2019-06-23T22:09:35.300' AS DateTime), NULL, CAST(N'2019-06-23T22:09:35.300' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'C3', N'12345', N'NRPT1', N'SP', 4700, CAST(N'2019-05-13' AS Date), CAST(N'2019-06-30' AS Date), 48, NULL, N'Paid', NULL, NULL, CAST(N'2019-06-30T14:42:21.040' AS DateTime), NULL, CAST(N'2019-06-30T14:42:21.040' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'C11', N'12349', N'SP', N'', 3400, CAST(N'2019-04-02' AS Date), CAST(N'2019-04-02' AS Date), 0, NULL, N'Paid', NULL, NULL, CAST(N'2019-06-30T20:07:31.587' AS DateTime), NULL, CAST(N'2019-06-30T20:07:31.587' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'C1', N'1234', N'NRPT2', N'', 2300, CAST(N'2019-07-21' AS Date), CAST(N'2019-07-01' AS Date), 0, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-01T08:25:24.017' AS DateTime), NULL, CAST(N'2019-07-01T08:25:24.017' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'C2', N'4321', N'NRPT1', N'', 2300, CAST(N'2019-07-01' AS Date), CAST(N'2019-07-01' AS Date), 0, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-01T08:27:41.163' AS DateTime), NULL, CAST(N'2019-07-01T08:27:41.163' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'C11', N'12349', N'SP', N'', 3400, CAST(N'2019-05-02' AS Date), CAST(N'2019-07-06' AS Date), -65, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-06T17:04:07.997' AS DateTime), NULL, CAST(N'2019-07-06T17:04:07.997' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'C11', N'12349', N'SP', N'', 3400, CAST(N'2019-06-02' AS Date), CAST(N'2019-07-06' AS Date), -34, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-06T17:04:08.073' AS DateTime), NULL, CAST(N'2019-07-06T17:04:08.073' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'C11', N'12349', N'SP', N'', 3400, CAST(N'2019-07-02' AS Date), CAST(N'2019-07-06' AS Date), -4, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-06T17:10:48.123' AS DateTime), NULL, CAST(N'2019-07-06T17:10:48.123' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'C11', N'12349', N'SP', N'', 3400, CAST(N'2019-08-02' AS Date), CAST(N'2019-07-06' AS Date), 27, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-06T17:10:48.137' AS DateTime), NULL, CAST(N'2019-07-06T17:10:48.137' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'C10', N'123459', N'SP', N'', 1400, CAST(N'2019-07-30' AS Date), CAST(N'2019-07-04' AS Date), 0, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-04T21:06:32.097' AS DateTime), NULL, CAST(N'2019-07-04T21:06:32.097' AS DateTime))
INSERT [dbo].[EMIUpdate] ([EMIUpdateID], [CustomerID], [AgreementID], [StoreLocation], [PaymentReceivedLocation], [EMIAmountReceived], [DueDate], [DateofPayment], [NoOfDaysDelayed], [PenaltyAmount], [Status], [PrintReceipt], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (21, N'C11', N'12349', N'SP', N'', 1200, CAST(N'2019-09-02' AS Date), CAST(N'2019-07-06' AS Date), 58, NULL, N'Paid', NULL, NULL, CAST(N'2019-07-06T17:10:48.137' AS DateTime), NULL, CAST(N'2019-07-06T17:10:48.137' AS DateTime))
SET IDENTITY_INSERT [dbo].[EMIUpdate] OFF
SET IDENTITY_INSERT [dbo].[GuaranteerMaster] ON 

INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'G', N'C1', N'kranthi', N'd', N'fhbh', N'345678', N'Male', 0, 5467890, 35467890654, N'rgh', N'hjk', 345678, N'vjk', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T08:30:31.323' AS DateTime), NULL, CAST(N'2019-06-22T08:30:31.323' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'G', N'C2', N'nag', N'n', N'xfghjk', N'', N'Male', 45, 5467890, 987654456, N'bnm', N'fghj', 86567, N'fghjm', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T08:33:58.273' AS DateTime), NULL, CAST(N'2019-06-22T08:33:58.273' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'G', N'C3', N'john', N'n', N'gfjhbkg', N'', N'Male', 45, 5678904456, 566789, N'vbmn', N'jhb', 566768, N'vjbj', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:04:22.280' AS DateTime), NULL, CAST(N'2019-06-22T09:04:22.280' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'G', N'C4', N'arya', N's', N'dxfd', N'', N'Fema', 25, 238323587867, 23346457568, N'ghj', N'dfg', 26657678, N'hgj', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:30:50.983' AS DateTime), NULL, CAST(N'2019-06-22T09:30:50.983' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'G', N'C5', N'arya', N's', N'dxfd', N'', N'Fema', 25, 238323587867, 23346457568, N'ghj', N'dfg', 26657678, N'hgj', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:31:32.447' AS DateTime), NULL, CAST(N'2019-06-22T09:31:32.447' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'G', N'C6', N'arya', N's', N'dxfd', N'', N'Fema', 25, 238323587867, 23346457568, N'ghj', N'dfg', 26657678, N'hgj', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:31:49.547' AS DateTime), NULL, CAST(N'2019-06-22T09:31:49.547' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'G', N'C7', N'ned', N's', N'khgfd', N'', N'Male', 0, 234547687, 346879809, N'dvbn', N'dfgh', 46576, N'fghj', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T09:39:03.217' AS DateTime), NULL, CAST(N'2019-06-22T09:39:03.217' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'G', N'C8', N'Rao', N'g', N'sdfghj', N'', N'Male', 34, 3456789, 34567890, N'fghj', N'dfghj', 45678, N'dfghjk', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T10:07:31.130' AS DateTime), NULL, CAST(N'2019-06-22T10:07:31.130' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'G', N'C9', N'kiran', N'n1', N'chgvh', N'', N'Male', 0, 567890, 8790, N'hgvb', N'hvhbjn', 56789, N'hgvhbjk', NULL, NULL, NULL, NULL, CAST(N'2019-06-22T10:29:28.003' AS DateTime), NULL, CAST(N'2019-06-22T10:29:28.003' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'G', N'C10', N'shesi', N'm', N'hari', N'', N'Male', 35, 99662266677, 12138093829, N'hyd', N'hyd', 500032, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-06-30T15:56:00.690' AS DateTime), NULL, CAST(N'2019-06-30T15:56:00.690' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'G', N'C11', N'Sravya', N'J', N'fghjk', N'', N'Fema', 45, 34567890, 4567890, N'vnhjk', N'bcfg', 45678, N'fghjk', NULL, NULL, NULL, NULL, CAST(N'2019-06-30T20:07:05.833' AS DateTime), NULL, CAST(N'2019-06-30T20:07:05.833' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'G', N'C12', N'Arya', N'H', N'James', N'', N'M   ', 34, 123456543, 124497638292, N'Hyd', N'Hyd', 50031, N'business', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:21:44.810' AS DateTime), NULL, CAST(N'2019-07-04T21:21:44.810' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'G', N'C13', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:55:46.157' AS DateTime), NULL, CAST(N'2019-07-04T21:55:46.157' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'G', N'C14', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:55:54.110' AS DateTime), NULL, CAST(N'2019-07-04T21:55:54.110' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'G', N'C15', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:01.537' AS DateTime), NULL, CAST(N'2019-07-04T21:56:01.537' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'G', N'C16', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:37.563' AS DateTime), NULL, CAST(N'2019-07-04T21:56:37.563' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'G', N'C17', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:39.573' AS DateTime), NULL, CAST(N'2019-07-04T21:56:39.573' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'G', N'C18', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:56:39.723' AS DateTime), NULL, CAST(N'2019-07-04T21:56:39.723' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'G', N'C19', N'oiu', N'p', N'jhhy', N'6-8-1984', N'M   ', 0, 9696969696, 564878523214, N'1-2233', N'nrpt', 522603, N'crpt', NULL, NULL, NULL, NULL, CAST(N'2019-07-04T21:57:13.430' AS DateTime), NULL, CAST(N'2019-07-04T21:57:13.430' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'G', N'C20', N'Amar', N'H', N'fg', N'', N'M   ', 0, 8977704674, 67809876, N'hyd', N'hyd', 456890, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T12:57:30.140' AS DateTime), NULL, CAST(N'2019-07-06T12:57:30.140' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (21, N'G', N'C21', N'Amar', N'H', N'fg', N'', N'M   ', 0, 8977704674, 67809876, N'hyd', N'hyd', 456890, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T12:59:29.617' AS DateTime), NULL, CAST(N'2019-07-06T12:59:29.617' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (22, N'G', N'C22', N'Amar', N'H', N'fg', N'', N'M   ', 0, 8977704674, 67809876, N'hyd', N'hyd', 456890, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:13:56.340' AS DateTime), NULL, CAST(N'2019-07-06T13:13:56.340' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'G', N'C23', N'Amar', N'H', N'fg', N'', N'M   ', 0, 8977704674, 67809876, N'hyd', N'hyd', 456890, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:16:57.760' AS DateTime), NULL, CAST(N'2019-07-06T13:16:57.760' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (24, N'G', N'C24', N'Amar', N'H', N'fg', N'', N'M   ', 0, 8977704674, 67809876, N'hyd', N'hyd', 456890, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:18:39.370' AS DateTime), NULL, CAST(N'2019-07-06T13:18:39.370' AS DateTime))
INSERT [dbo].[GuaranteerMaster] ([GuaranteerMasterID], [PreFix], [CustomerID], [FirstName], [LastName], [FatherOrHusbandName], [DOB], [Gender], [Age], [MobileNo], [AadharNo], [Address], [Landmark], [Pincode], [Occupation], [PhotoFile], [AadharFile], [AddressProofFile], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'G', N'C25', N'Amar', N'H', N'fg', N'', N'M   ', 0, 8977704674, 67809876, N'hyd', N'hyd', 456890, N'job', NULL, NULL, NULL, NULL, CAST(N'2019-07-06T13:22:08.280' AS DateTime), NULL, CAST(N'2019-07-06T13:22:08.280' AS DateTime))
SET IDENTITY_INSERT [dbo].[GuaranteerMaster] OFF
SET IDENTITY_INSERT [dbo].[InvestorsCenter] ON 

INSERT [dbo].[InvestorsCenter] ([InvestorsID], [Name], [Amount], [InvDate], [WithdrawAmount], [WithdrawDate], [EffectiveAmount], [Total]) VALUES (100, N'aswin', 12300, CAST(N'2019-01-13' AS Date), CAST(10 AS Decimal(18, 0)), CAST(N'2019-01-13' AS Date), CAST(246 AS Decimal(18, 0)), CAST(5336 AS Decimal(18, 0)))
INSERT [dbo].[InvestorsCenter] ([InvestorsID], [Name], [Amount], [InvDate], [WithdrawAmount], [WithdrawDate], [EffectiveAmount], [Total]) VALUES (101, N'aswin', 500000, CAST(N'2019-01-13' AS Date), NULL, NULL, CAST(10000 AS Decimal(18, 0)), CAST(510000 AS Decimal(18, 0)))
INSERT [dbo].[InvestorsCenter] ([InvestorsID], [Name], [Amount], [InvDate], [WithdrawAmount], [WithdrawDate], [EffectiveAmount], [Total]) VALUES (102, N'sindhu', 200000, CAST(N'2019-01-13' AS Date), CAST(10 AS Decimal(18, 0)), CAST(N'2019-01-13' AS Date), CAST(4000 AS Decimal(18, 0)), CAST(203990 AS Decimal(18, 0)))
INSERT [dbo].[InvestorsCenter] ([InvestorsID], [Name], [Amount], [InvDate], [WithdrawAmount], [WithdrawDate], [EffectiveAmount], [Total]) VALUES (10101, N'john', 25000, CAST(N'2019-01-05' AS Date), NULL, NULL, CAST(500 AS Decimal(18, 0)), CAST(25500 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[InvestorsCenter] OFF
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 

INSERT [dbo].[RoleMaster] ([RoleID], [RoleName], [IsActive], [CreatedBy], [CreatedDate]) VALUES (1, N'Executive', 1, N'Komala', CAST(N'2019-07-06' AS Date))
INSERT [dbo].[RoleMaster] ([RoleID], [RoleName], [IsActive], [CreatedBy], [CreatedDate]) VALUES (2, N'Admin', 1, N'Komala', CAST(N'2019-07-06' AS Date))
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
SET IDENTITY_INSERT [dbo].[SchemeDetails] ON 

INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'C25', N'110', N'NRPT1', N'', N'', N'24000', 1846, 13, CAST(N'2019-07-06' AS Date), CAST(N'1900-01-01' AS Date), NULL, CAST(N'2019-07-06T13:22:08.327' AS DateTime), NULL, CAST(N'2019-07-06T13:22:08.327' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'C1', N'1234', N'NRPT2', N'120000', N'1300', N'120000', 2300, 12, CAST(N'2019-04-21' AS Date), CAST(N'2019-07-07' AS Date), NULL, CAST(N'2019-06-22T08:30:31.377' AS DateTime), NULL, CAST(N'2019-06-22T08:30:31.377' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'C4', N'12343', N'NRPT1', N'120000', N'1200', N'13000', 120, 12, CAST(N'2019-06-08' AS Date), CAST(N'2019-08-04' AS Date), NULL, CAST(N'2019-06-22T09:30:51.030' AS DateTime), NULL, CAST(N'2019-06-22T09:30:51.030' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'C6', N'12344', N'NRPT1', N'120000', N'1200', N'13000', 120, 12, CAST(N'2019-06-22' AS Date), CAST(N'2019-08-04' AS Date), NULL, CAST(N'2019-06-22T09:31:49.577' AS DateTime), NULL, CAST(N'2019-06-22T09:31:49.577' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'C3', N'12345', N'NRPT1', N'12000', N'2300', N'5600', 4700, 8, CAST(N'2019-04-13' AS Date), CAST(N'2019-09-08' AS Date), NULL, CAST(N'2019-06-22T09:04:22.873' AS DateTime), NULL, CAST(N'2019-06-22T09:04:22.873' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'C10', N'123459', N'SP', N'1200', N'1300', N'340000', 1400, 10, CAST(N'2019-05-31' AS Date), CAST(N'2019-08-03' AS Date), NULL, CAST(N'2019-06-30T15:56:00.947' AS DateTime), NULL, CAST(N'2019-06-30T15:56:00.947' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'C7', N'12346', N'NRPT2', N'1200000', N'1200', N'34354', 232, 12, CAST(N'2019-03-16' AS Date), CAST(N'2019-08-04' AS Date), NULL, CAST(N'2019-06-22T09:39:03.530' AS DateTime), NULL, CAST(N'2019-06-22T09:39:03.530' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'C8', N'12347', N'NRPT1', N'12000', N'12000', N'23000', 2300, 23, CAST(N'2019-06-30' AS Date), CAST(N'2019-09-08' AS Date), NULL, CAST(N'2019-06-22T10:07:31.173' AS DateTime), NULL, CAST(N'2019-06-22T10:07:31.173' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'C9', N'12348', N'NRPT1', N'12000', N'1200', N'23000', 1400, 13, CAST(N'2019-06-11' AS Date), CAST(N'2019-07-31' AS Date), NULL, CAST(N'2019-06-22T10:29:28.053' AS DateTime), NULL, CAST(N'2019-06-22T10:29:28.053' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'C11', N'12349', N'SP', N'12000', N'3000', N'120000', 3400, 9, CAST(N'2019-03-02' AS Date), CAST(N'2019-07-21' AS Date), NULL, CAST(N'2019-06-30T20:07:05.877' AS DateTime), NULL, CAST(N'2019-06-30T20:07:05.877' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'C12', N'12350', N'NRPT1', N'23000', N'12000', N'12000', 1500, 12, CAST(N'2019-07-04' AS Date), CAST(N'2019-08-11' AS Date), NULL, CAST(N'2019-07-04T21:21:44.840' AS DateTime), NULL, CAST(N'2019-07-04T21:21:44.840' AS DateTime))
INSERT [dbo].[SchemeDetails] ([SchemeID], [CustomerID], [AgreementID], [LocationCode], [DownPayment], [HandLoan], [TotalLoanAmount], [EMIAmount], [NoOfEMI], [AgreementDate], [HandLoanDueDate], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'C2', N'4321', N'NRPT1', N'3400', N'1200', N'23000', 2300, 12, CAST(N'2019-05-01' AS Date), CAST(N'2019-08-11' AS Date), NULL, CAST(N'2019-06-22T08:33:58.330' AS DateTime), NULL, CAST(N'2019-06-22T08:33:58.330' AS DateTime))
SET IDENTITY_INSERT [dbo].[SchemeDetails] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserID], [Username], [password], [FirstName], [LastName], [Region], [RoleID], [CreatedBy], [CreatedDate]) VALUES (1, N'Aswin', N'12345', N'Aswin', N'Bonagiri', N'NRPT1', 1, N'komala', CAST(N'2019-07-07' AS Date))
INSERT [dbo].[UserMaster] ([UserID], [Username], [password], [FirstName], [LastName], [Region], [RoleID], [CreatedBy], [CreatedDate]) VALUES (2, N'Komala', N'12345', N'Komala', N'Devireddy', N'NRPT2', 1, N'komala', CAST(N'2019-07-07' AS Date))
INSERT [dbo].[UserMaster] ([UserID], [Username], [password], [FirstName], [LastName], [Region], [RoleID], [CreatedBy], [CreatedDate]) VALUES (3, N'user', N'12345', N'User', N'1', N'SP', 1, N'komala', CAST(N'2019-07-07' AS Date))
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
SET IDENTITY_INSERT [dbo].[VehicleMaster] ON 

INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'C1', N'NRPT2', N'Glamour', N'2017', N'122879080', N'AP07CD1345', N'12345678908', N'12345454675', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T08:30:31.350' AS DateTime), NULL, CAST(N'2019-06-22T08:30:31.350' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'C2', N'NRPT1', N'Activa', N'2015', N'6879080809', N'AP07CD4345', N'12345678907', N'12343435690', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T08:33:58.290' AS DateTime), NULL, CAST(N'2019-06-22T08:33:58.290' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'C3', N'NRPT1', N'Bajaj CT100', N'2016', N'687908765', N'AP07CD0904', N'12345678907', N'12343332220', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T09:04:22.470' AS DateTime), NULL, CAST(N'2019-06-22T09:04:22.470' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'C4', N'NRPT1', N'gixer', N'2016', N'132456787', N'', N'2456789', N'8654332456', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T09:30:50.997' AS DateTime), NULL, CAST(N'2019-06-22T09:30:50.997' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'C6', N'NRPT1', N'gixer', N'2016', N'132456787', N'', N'2456789', N'8654332456', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T09:31:49.560' AS DateTime), NULL, CAST(N'2019-06-22T09:31:49.560' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'C7', N'NRPT2', N'royal', N'2018', N'24567', N'', N'2345678', N'76455678', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T09:39:03.403' AS DateTime), NULL, CAST(N'2019-06-22T09:39:03.403' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'C8', N'NRPT1', N'honda', N'2018', N'6879080809', N'AP07CD4344', N'12345678907', N'12343435690', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T10:07:31.160' AS DateTime), NULL, CAST(N'2019-06-22T10:07:31.160' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'C9', N'NRPT1', N'bajaj1', N'2019', N'456789', N'', N'456789', N'567890', N'6789', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-22T10:29:28.033' AS DateTime), NULL, CAST(N'2019-06-22T10:29:28.033' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'C10', N'SP', N'Wespa', N'2017', N'23456789', N'', N'6787987987', N'678099876', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-30T15:56:00.813' AS DateTime), NULL, CAST(N'2019-06-30T15:56:00.813' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'C11', N'SP', N'Pleasure', N'2019', N'4567890', N'', N'56545678', N'67890975', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-06-30T20:07:05.857' AS DateTime), NULL, CAST(N'2019-06-30T20:07:05.857' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'C12', N'NRPT1', N'Activa', N'2015', N'123242343', N'AP07CD0906', N'323464554', N'423345346', N'0', N'Y  ', N'Y   ', N'Y ', N'', N'', NULL, CAST(N'2019-07-04T21:21:44.827' AS DateTime), NULL, CAST(N'2019-07-04T21:21:44.827' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'C23', N'NRPT1', N'Pleasur', N'2019', N'456789lkkj', N'', N'fgvj567', N'678uhb', N'', N'Y  ', N'Y   ', N'Y ', N'With out Gear', N'', NULL, CAST(N'2019-07-06T13:16:57.763' AS DateTime), NULL, CAST(N'2019-07-06T13:16:57.763' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'C24', N'NRPT1', N'Pleasur', N'2019', N'456789lkkj', N'', N'fgvj567', N'678uhb', N'', N'Y  ', N'Y   ', N'Y ', N'With out Gear', N'', NULL, CAST(N'2019-07-06T13:18:39.377' AS DateTime), NULL, CAST(N'2019-07-06T13:18:39.377' AS DateTime))
INSERT [dbo].[VehicleMaster] ([VehicleID], [CustomerID], [StoreLocation], [VehicleName], [Model], [RegistrationNo], [VehicleNO], [EngineNo], [ChasisNo], [PreviousRegNo], [Insurance], [NOCDocuments], [Pollution], [VehicleType], [VehicleCompany], [CreatedBy], [createdDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'C25', N'NRPT1', N'Pleasur', N'2019', N'456789lkkj', N'', N'fgvj567', N'678uhb', N'', N'Y  ', N'Y   ', N'Y ', N'With out Gear', N'', NULL, CAST(N'2019-07-06T13:22:08.287' AS DateTime), NULL, CAST(N'2019-07-06T13:22:08.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[VehicleMaster] OFF
ALTER TABLE [dbo].[EMIUpdate]  WITH CHECK ADD FOREIGN KEY([AgreementID])
REFERENCES [dbo].[SchemeDetails] ([AgreementID])
GO
ALTER TABLE [dbo].[EMIUpdate]  WITH CHECK ADD FOREIGN KEY([AgreementID])
REFERENCES [dbo].[SchemeDetails] ([AgreementID])
GO
ALTER TABLE [dbo].[EMIUpdate]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerMaster] ([CustomerID])
GO
ALTER TABLE [dbo].[EMIUpdate]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerMaster] ([CustomerID])
GO
ALTER TABLE [dbo].[GuaranteerMaster]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerMaster] ([CustomerID])
GO
ALTER TABLE [dbo].[SchemeDetails]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerMaster] ([CustomerID])
GO
ALTER TABLE [dbo].[VehicleMaster]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerMaster] ([CustomerID])
GO
/****** Object:  StoredProcedure [dbo].[GetDataforEMIUpdate]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[GetDataforEMIUpdate]
@EMIPaymentInput varchar(100)
as
begin
Declare @month int=(select MONTH(GETDATE()));
if((select distinct AgreementID from SchemeDetails where AgreementID=@EMIPaymentInput )!='')
begin
		
		select x.FirstName as CustomerName,x.VehicleNo,x.EMIAmount,x.NoOfEMI,
		x.BalanceAmount,x.StoreLocation,x.TotalLoanAmount,x.AgreementDate,x.TotalAmountInthisEMI,
		convert(varchar(20),x.DueDate,105) as DueDate,x.AgreementID,x.CustomerID,
		(case when datediff(day,x.DueDate,GETDATE())>0 then datediff(day,x.DueDate,GETDATE())
		else 0 end) as DelayedDays from
		(select distinct CM.Firstname ,VM.VehicleNO as VehicleNo,
		(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0 then SD.EMIAmount
		when (select ((DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)-sum(EMIAmountReceived))
		from EMIUpdate where CustomerID=CM.CustomerID)>=0
		then (select abs((sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount))+(SD.EMIAmount)) 
		from EMIUpdate where CustomerID=CM.CustomerID) else 0 end)as TotalAmountInthisEMI
		,SD.NoOfEMI,SD.EMIAmount,
		(SD.TotalLoanAmount -isnull((select sum(EMIAmountReceived) from EMIUpdate where CustomerID=CM.CustomerID),0))as BalanceAmount,
		SD.LocationCode as StoreLocation,SD.AgreementDate,SD.TotalloanAmount,
		--DATEADD(m,(select DATEDiff(month, SD.AgreementDate,GEtdate())),SD.AgreementDate) as DueDate,
		(select Case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0
		then DATEADD(m,1,SD.AgreementDate)
		else (select Dateadd(m,1,max(DueDate)) from EMIUpdate where CustomerID=CM.CustomerID )
		end ) as Duedate,
		SD.AgreementID,CM.CustomerID
		from CustomerMaster CM
		inner join VehicleMaster VM on VM.CustomerID=CM.CustomerID
		inner join SchemeDetails SD on SD.CustomerID=VM.CustomerID
		where SD.AgreementID=@EMIPaymentInput
		group by CM.FirstName,VM.VehicleNO,CM.CustomerID,SD.NoOfEMI,SD.EMIAmount,
		SD.TotalLoanAmount,SD.LocationCode,SD.AgreementDate,SD.AgreementID) as x
end
else if((select distinct VehicleNO from VehicleMaster where VehicleNO=@EMIPaymentInput) !='')
begin
		

		select x.FirstName as CustomerName,x.VehicleNo,x.EMIAmount,x.NoOfEMI,
		x.BalanceAmount,x.StoreLocation,x.TotalLoanAmount,x.AgreementDate,x.TotalAmountInthisEMI,
		convert(varchar(20),x.DueDate,105) as DueDate,x.AgreementID,x.CustomerID,
		(case when datediff(day,x.DueDate,GETDATE())>0 then datediff(day,x.DueDate,GETDATE())
		else 0 end) as DelayedDays from
		(select distinct CM.Firstname ,VM.VehicleNO as VehicleNo,
		(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0 then SD.EMIAmount
		when (select ((DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)-sum(EMIAmountReceived))
		from EMIUpdate where CustomerID=CM.CustomerID)>=0
		then (select abs((sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount))+(SD.EMIAmount)) 
		from EMIUpdate where CustomerID=CM.CustomerID) else 0 end)as TotalAmountInthisEMI
		,SD.NoOfEMI,SD.EMIAmount,
		(SD.TotalLoanAmount -isnull((select sum(EMIAmountReceived) from EMIUpdate where CustomerID=CM.CustomerID),0))as BalanceAmount,
		SD.LocationCode as StoreLocation,SD.AgreementDate,SD.TotalLoanAmount,
		--DATEADD(m,(select DATEDiff(month, SD.AgreementDate,GEtdate())),SD.AgreementDate) as DueDate,
		(select Case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0
		then DATEADD(m,1,SD.AgreementDate)
		else (select Dateadd(m,1,max(DueDate)) from EMIUpdate where CustomerID=CM.CustomerID )
		end ) as Duedate,
		SD.AgreementID,CM.CustomerID
		from CustomerMaster CM
		inner join VehicleMaster VM on VM.CustomerID=CM.CustomerID
		inner join SchemeDetails SD on SD.CustomerID=VM.CustomerID
		where VM.VehicleNO=@EMIPaymentInput
		group by CM.FirstName,VM.VehicleNO,CM.CustomerID,SD.NoOfEMI,SD.EMIAmount,
		SD.TotalLoanAmount,SD.LocationCode,SD.AgreementDate,SD.AgreementID) as x
end

end


GO
/****** Object:  StoredProcedure [dbo].[GetDetailsForGenerateDueList]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetDetailsForGenerateDueList]
@LocationCode nvarchar(max)
As
Begin

Declare @month int=(select MONTH(GETDATE()));
	--select distinct SD.AgreementID,VM.VehicleNO,VM.VehicleName,VM.Model,CM.FirstName,CM.MobileNo,SD.EMIAmount,
	--convert(varchar(20),(case when
	--	((select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0)
	--	then  DATEADD(m,1,SD.AgreementDate)
	--	when (select month(max(DueDate)) from EMIUpdate where CustomerID=CM.CustomerID group by CustomerID)=@month
	--	then (select max(DueDate) from EMIUpdate where CustomerID=CM.CustomerID )
	--	else  (select top 1 DATEADD(m,1,max(DueDate))
	--	from EMIUpdate where CustomerID=CM.CustomerID group by CustomerID ) end),105) as DueDate,
	--'' as TotalAmount,'' as PendingEMIs,'' as PreviousEMIPendingAmount,
	--(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0 then  ''
 --   else convert(varchar(20),(select max(DateofPayment) from EMIUpdate where CustomerID=CM.CustomerID group by CustomerID),105) end) as LastPaid
	--from SchemeDetails SD
	--inner join VehicleMaster VM on VM.CustomerID=SD.CustomerID
	--inner join CustomerMaster CM on CM.CustomerID=SD.CustomerID


	if(@LocationCode<>'All')

	select x.CustomerID,x.AgreementID,x.VehicleNO,x.VehicleName,x.Model,x.FirstName,x.MobileNo,x.EMIAmount,
	x.lastpaid ,(case when x.PendingEMIs=0 then x.PreviousEMIPendingAmount
	else x.TotalAmount end ) as TotalAmount,
	x.PendingEMIs,x.PreviousEMIPendingAmount
	,Convert(varchar(20),x.DueDate,105) as DueDate  
	from (select distinct CM.CustomerID,SD.AgreementDate,
	SD.AgreementID,VM.VehicleNO,VM.VehicleName,VM.Model,CM.FirstName,CM.MobileNo,SD.EMIAmount,
	(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0 then  ''
	 else convert(varchar(20),(select max(DateofPayment) from EMIUpdate where CustomerID=CM.CustomerID group by CustomerID),105) end) as LastPaid,
	 (case when ((select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0)
	 then isnull((DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)+(SD.EMIAmount),0)
	 else isnull((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))+(SD.EMIAmount) 
		from EMIUpdate where CustomerID=CM.CustomerID),0)
	 end)as  TotalAmount,
	  (case when ((select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0)
	 then isnull((DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount),0)
	 else isnull((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))
		from EMIUpdate where CustomerID=CM.CustomerID),0)
	 end)as  PreviousEMIPendingAmount,
	DATEADD(m,(select DATEDiff(month, SD.AgreementDate,GEtdate())),SD.AgreementDate) as DueDate ,
	(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0
	then month(getdate())-(select month(SD.AgreementDate))
	when (isnull((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))
		from EMIUpdate where CustomerID=CM.CustomerID),0))>SD.EMIAmount
		then ((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))
		from EMIUpdate where CustomerID=CM.CustomerID)/(SD.EMIAmount))
	else 0 end) as PendingEMIs
	from SchemeDetails SD 
	inner join VehicleMaster VM on VM.CustomerID=SD.CustomerID
	inner join CustomerMaster CM on CM.CustomerID=SD.CustomerID
	where SD.LocationCode=@LocationCode) as x
	where --x.LastPaidRef<x.DueDate and
	(x.PreviousEMIPendingAmount!=0 or x.PendingEMIs !=0)
	



	else
	select x.CustomerID,x.AgreementID,x.VehicleNO,x.VehicleName,x.Model,x.FirstName,x.MobileNo,x.EMIAmount,
	x.lastpaid ,(case when x.PendingEMIs=0 then x.PreviousEMIPendingAmount
	else x.TotalAmount end ) as TotalAmount,x.PendingEMIs,x.PreviousEMIPendingAmount
	,Convert(varchar(20),x.DueDate,105) as DueDate  
	from (select distinct CM.CustomerID,SD.AgreementDate,
	SD.AgreementID,VM.VehicleNO,VM.VehicleName,VM.Model,CM.FirstName,CM.MobileNo,SD.EMIAmount,
	(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0 then  ''
	 else convert(varchar(20),(select max(DateofPayment) from EMIUpdate where CustomerID=CM.CustomerID group by CustomerID),105) end) as LastPaid,
	 (case when ((select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0)
	 then isnull((DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)+(SD.EMIAmount),0)
	 else isnull((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))+(SD.EMIAmount) 
		from EMIUpdate where CustomerID=CM.CustomerID),0)
	 end)as  TotalAmount,
	  (case when ((select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0)
	 then isnull((DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount),0)
	 else isnull((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))
		from EMIUpdate where CustomerID=CM.CustomerID),0)
	 end)as  PreviousEMIPendingAmount,
	DATEADD(m,(select DATEDiff(month, SD.AgreementDate,GEtdate())),SD.AgreementDate) as DueDate ,
	(case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0
	then month(getdate())-(select month(SD.AgreementDate))
	when (isnull((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))
		from EMIUpdate where CustomerID=CM.CustomerID),0))>SD.EMIAmount
		then ((select (abs(sum(EMIAmountReceived)-(DATEDIFF(m,SD.AgreementDate,GETDATE())*SD.EMIAmount)))
		from EMIUpdate where CustomerID=CM.CustomerID)/(SD.EMIAmount))
	else 0 end) as PendingEMIs
	from SchemeDetails SD 
	inner join VehicleMaster VM on VM.CustomerID=SD.CustomerID
	inner join CustomerMaster CM on CM.CustomerID=SD.CustomerID) as x
	where --x.LastPaidRef<x.DueDate and
	(x.PreviousEMIPendingAmount!=0 or x.PendingEMIs !=0)
End

GO
/****** Object:  StoredProcedure [dbo].[GetTableDataforEMIPayment]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[GetTableDataforEMIPayment]
@EMIPaymentInput varchar(100)
As
Begin
	--Declare @EMIPaymentInput varchar(20)='AP07CD0904';
	Declare @AgreementID int,@DueDate date;
		if((select distinct AgreementID from SchemeDetails where AgreementID=@EMIPaymentInput )!='')
		begin
		   set @AgreementID=@EMIPaymentInput;
		end
       else if((select distinct VehicleNO from VehicleMaster where VehicleNO=@EMIPaymentInput) !='')
		begin
		set @AgreementID=(select top 1 SD.AgreementID from SchemeDetails SD,VehicleMaster VM 
			where SD.CustomerID=VM.CustomerID and VM.VehicleNO=@EMIPaymentInput)
		end


		set @DueDate=(select DATEADD(m,1,SD.AgreementDate) from SchemeDetails SD where SD.AgreementID=@AgreementID);


		Declare @count int =(Select  NoOfEMI from SchemeDetails where AgreementID=@AgreementID);
		Declare @i int=1;
		drop table if exists #temp 
		create table #temp(SNo int,EMIAmount bigint,DueDate varchar(20),EMIReceived bigint,LastReceivedDate date,NoofDaysDelayed int,Penalty int,Status varchar(10));
		while (@i<=@count)
		begin
			
			Declare  @AgreementDate date=(select  AgreementDate from SchemeDetails where AgreementID=@AgreementID)
			insert into #temp(SNo,DueDate) values (@i,@DueDate );
			set @DueDate=Dateadd(MONTH,1,@DueDate);
			set @i=@i+1;
			
			
	    end
		
		update #temp  set  EMIReceived=EM.EMIAmountReceived ,Status=Em.Status,
		LastReceivedDate=EM.DateofPayment,NoofDaysDelayed=Em.NoofDaysDelayed,Penalty=EM.PenaltyAmount
		from EMIUpdate EM,#temp t where  EM.AgreementID=@AgreementID and t.DueDate=EM.DueDate

		update #temp  set EMIAmount=SD.EMIAmount from SchemeDetails SD where  SD.AgreementID=@AgreementID 

	select SNo,EMIAmount,DueDate,EMIReceived
	,convert(varchar(20),LastReceivedDate,105) as LastReceivedDate,NoofDaysDelayed,Penalty,Status from #temp
	
End
GO
/****** Object:  StoredProcedure [dbo].[InsertOnBoardCustomerDetails]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertOnBoardCustomerDetails]
@jsoncustomer nvarchar(max), 
@jsonguaranter nvarchar(max),
@jsonvehicle nvarchar(max),
@jsonscheme nvarchar(max)
As
 begin
 
 --Customer Details

 Declare @CustomerID varchar(60);
    create table #temp1(FirstName varchar(100) ,LastName varchar(100) ,FatherOrHusbandName varchar(100) ,
	DOB nvarchar(100) ,Gender char(4) ,Age int ,MobileNo bigint ,AadharNo bigint ,
	Address nvarchar(200),Landmark nvarchar(100) ,Pincode bigint ,Occupation varchar(100) )

	insert into #temp1 select * from openjson(@jsoncustomer) with (FirstName varchar(100) ,LastName varchar(100) ,FatherOrHusbandName varchar(100) ,
	DOB nvarchar(100) ,Gender char(4) ,Age int ,MobileNo bigint ,AadharNo bigint ,
	Address nvarchar(200),Landmark nvarchar(100) ,Pincode bigint ,Occupation varchar(100) )


	Declare @FirstName varchar(100) ,@LastName varchar(100) ,@FatherOrHusbandName varchar(100) ,
	@DOB nvarchar(100) ,@Gender char(4) ,@Age int ,@MobileNo bigint ,@AadharNo bigint ,
	@Address nvarchar(200),@Landmark nvarchar(100) ,@Pincode bigint ,@Occupation varchar(100)


	select  @FirstName=Firstname,@LastName =LastName,@FatherOrHusbandName=FatherOrHusbandName ,
	@DOB  =DOB,@Gender=Gender  ,@Age=Age  ,@MobileNo =MobileNo ,@AadharNo =AadharNo ,
	@Address =Address,@Landmark=Landmark ,@Pincode =Pincode,@Occupation =Occupation from #temp1
		  
		  
     insert into CustomerMaster([PreFix],FirstName,LastName,FatherOrHusbandName,DOB ,Gender  ,Age  ,MobileNo  ,AadharNo  ,
	Address ,Landmark ,Pincode  ,Occupation,createdDate,ModifiedDate) 
	values('C',@FirstName,@LastName,@FatherOrHusbandName,@DOB ,@Gender ,@Age,@MobileNo  ,@AadharNo ,
	@Address ,@Landmark ,@Pincode ,@Occupation,GETDATE(),GETDATE())


	set @CustomerID =convert(varchar(10),(select top 1 CustomerID from CustomerMaster where CustomerMasterID=(select max(customermasterid) from CustomerMaster)))
	
	--Guaranteer details

	 create table #temp2(FirstName varchar(100) ,LastName varchar(100) ,FatherOrHusbandName varchar(100) ,
	DOB nvarchar(100) ,Gender char(4) ,Age int ,MobileNo bigint ,AadharNo bigint ,
	Address nvarchar(200),Landmark nvarchar(100) ,Pincode bigint ,Occupation varchar(100) )

	insert into #temp2 select * from openjson(@jsonguaranter) with (FirstName varchar(100) ,LastName varchar(100) ,FatherOrHusbandName varchar(100) ,
	DOB nvarchar(100) ,Gender char(4) ,Age int ,MobileNo bigint ,AadharNo bigint ,
	Address nvarchar(200),Landmark nvarchar(100) ,Pincode bigint ,Occupation varchar(100) )

	--Declare @FirstName varchar(100) ,@LastName varchar(100) ,@FatherOrHusbandName varchar(100) ,
	--@DOB nvarchar(100) ,@Gender char(4) ,@Age int ,@MobileNo bigint ,@AadharNo bigint ,
	--@Address nvarchar(200),@Landmark nvarchar(100) ,@Pincode bigint ,@Occupation varchar(100)


	select  @FirstName=Firstname,@LastName =LastName,@FatherOrHusbandName=FatherOrHusbandName ,
	@DOB  =DOB,@Gender=Gender  ,@Age=Age  ,@MobileNo =MobileNo ,@AadharNo =AadharNo ,
	@Address =Address,@Landmark=Landmark ,@Pincode =Pincode,@Occupation =Occupation from #temp2
		  
		  
     insert into GuaranteerMaster([PreFix],CustomerID,FirstName,LastName,FatherOrHusbandName,DOB ,Gender  ,Age  ,MobileNo  ,AadharNo  ,
	Address ,Landmark ,Pincode  ,Occupation,createdDate,ModifiedDate) 
	values('G',@CustomerID,@FirstName,@LastName,@FatherOrHusbandName,@DOB ,@Gender ,@Age,@MobileNo  ,@AadharNo ,
	@Address ,@Landmark ,@Pincode ,@Occupation,GETDATE(),GETDATE())


	
	
	--vehicle details 

	 create table #temp3(StoreLocation varchar(100)  ,VehicleName varchar(100)  ,Model varchar(100)  ,
	RegistrationNo nvarchar(100)  ,VehicleNO nvarchar(100)  ,EngineNo nvarchar(100)  ,ChasisNo nvarchar(100)  ,
	PreviousRegNo nvarchar(100),Insurance char(3)  ,NOCDocuments char(4) ,
	Pollution char(2),VehicleType nvarchar(100),VehicleCompany varchar(100))

	insert into #temp3 select * from openjson(@jsonvehicle) with (StoreLocation varchar(100)  ,VehicleName varchar(100)  ,Model varchar(100)  ,
	RegistrationNo nvarchar(100)  ,VehicleNO nvarchar(100)  ,EngineNo nvarchar(100)  ,ChasisNo nvarchar(100)  ,
	PreviousRegNo nvarchar(100),Insurance char(3)  ,NOCDocuments char(4) ,
	Pollution char(2),VehicleType nvarchar(100),VehicleCompany varchar(100) )


	

	Declare @StoreLocation varchar(100)  ,@VehicleName varchar(100)  ,@Model varchar(100)  ,
	@RegistrationNo nvarchar(100)  ,@VehicleNO nvarchar(100)  ,@EngineNo nvarchar(100)  ,@ChasisNo nvarchar(100)  ,
	@PreviousRegNo nvarchar(100),@Insurance char(3)  ,@NOCDocuments char(4) ,
	@Pollution char(2),@VehicleType nvarchar(100),@VehicleCompany varchar(100)


	select  @StoreLocation=StoreLocation,@VehicleName =VehicleName,@Model=Model ,@NOCDocuments =NOCDocuments ,
	@RegistrationNo  =RegistrationNo,@VehicleNO=VehicleNO  ,@EngineNo=EngineNo  ,@ChasisNo =ChasisNo ,@Pollution =Pollution ,
	@VehicleType =VehicleType,@VehicleCompany=VehicleCompany ,@PreviousRegNo =PreviousRegNo,@Insurance =Insurance from #temp3
		  
		  
     insert into VehicleMaster(CustomerID,StoreLocation,VehicleName,Model,RegistrationNo,VehicleNO,EngineNo,ChasisNo ,
	PreviousRegNo ,Insurance ,NOCDocuments,Pollution ,VehicleType ,VehicleCompany  ,createdDate,ModifiedDate) 
	values(@CustomerID,@StoreLocation,@VehicleName,@Model,@RegistrationNo,@VehicleNO,@EngineNo,@ChasisNo ,
	@PreviousRegNo ,@Insurance ,@NOCDocuments,@Pollution ,@VehicleType ,@VehicleCompany ,GETDATE(),GETDATE())


	
	

	--Scheme Details
	  create table #temp4(AgreementID int  ,
	LocationCode nvarchar(100)  ,DownPayment varchar(100)  ,HandLoan varchar(100)  ,TotalLoanAmount varchar(100) ,
	EMIAmount varchar(100)  ,NoOfEMI int,AgreementDate date not null,HandLoanDueDate date )

	insert into #temp4 select * from openjson(@jsonscheme) with (AgreementID int ,
	LocationCode nvarchar(100)  ,DownPayment varchar(100)  ,HandLoan varchar(100)  ,TotalLoanAmount varchar(100) ,
	EMIAmount varchar(100)  ,NoOfEMI int  ,AgreementDate date,HandLoanDueDate date )


	
	Declare @AgreementID int ,
	@LocationCode nvarchar(100)  ,@DownPayment varchar(100)  ,@HandLoan varchar(100)  ,@TotalLoanAmount varchar(100) ,
	@EMIAmount varchar(100)  ,@NoOfEMI int  ,@AgreementDate date,@HandLoanDueDate date


	select  @AgreementID =AgreementID,
	@LocationCode =LocationCode ,@DownPayment  =DownPayment ,@HandLoan  =HandLoan,@TotalLoanAmount=TotalLoanAmount  ,
	@EMIAmount =EMIAmount ,@NoOfEMI=NoOfEMI ,@AgreementDate=AgreementDate ,@HandLoanDueDate =HandLoanDueDate from #temp4
		  
		  
     insert into SchemeDetails(CustomerID,AgreementID  ,LocationCode   ,DownPayment   ,HandLoan   ,TotalLoanAmount  ,
	EMIAmount   ,NoOfEMI   ,AgreementDate ,HandLoanDueDate  ,createdDate,ModifiedDate) 
	values(@CustomerID,@AgreementID,@LocationCode ,@DownPayment   ,@HandLoan ,@TotalLoanAmount ,
	@EMIAmount ,@NoOfEMI,@AgreementDate,@HandLoanDueDate,GETDATE(),GETDATE())

	drop table #temp2
	drop table #temp1
	drop table #temp3
    drop table #temp4

 end
GO
/****** Object:  StoredProcedure [dbo].[UpdateEMIPayment]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateEMIPayment]
@jsonEMI varchar(max)
As
begin

Declare @month int=(select MONTH(GETDATE()));
Declare @i int=1;

 create table #temp(CustomerID varchar(60) ,AgreementID varchar(100) ,StoreLocation nvarchar(100),
	PaymentReceivedLocation nvarchar(100),EMIAmount bigint,DueDate varchar(100),DateofPayment varchar(100),
	NoOfDaysDelayed int,Status varchar(100))

	insert into #temp select * from openjson(@jsonEMI) with (CustomerID varchar(60) ,AgreementID varchar(100) ,StoreLocation nvarchar(100),
	PaymentReceivedLocation nvarchar(100),EMIAmount bigint,DueDate varchar(100),DateofPayment varchar(100),
	NoOfDaysDelayed int,Status varchar(100) )


	Declare @CustomerID varchar(60) ,@AgreementID varchar(100) ,@StoreLocation nvarchar(100),
	@PaymentReceivedLocation nvarchar(100),@EMIAmount bigint,@DueDate varchar(100),@DateofPayment varchar(100),
	@NoOfDaysDelayed int,@Status varchar(100),@DiffAmount varchar(100),@EMIAmountRef varchar(100)
	--select * from #temp;

	select  @CustomerID = CustomerID ,@AgreementID =AgreementID ,@StoreLocation=StoreLocation ,
	@PaymentReceivedLocation=PaymentReceivedLocation,@EMIAmount =EMIAmount,
	--@DueDate =CONVERT(VARCHAR(10), CONVERT(date, DueDate, 105), 23),
	@DateofPayment=convert(date,DateofPayment),
	@NoOfDaysDelayed =NoOfDaysDelayed,@Status=Status from #temp

	
	set @DueDate=(select Case when (select count(*) from EMIUpdate where CustomerID=CM.CustomerID) =0
	then DATEADD(m,1,SD.AgreementDate)
	else (select Dateadd(m,1,max(DueDate)) from EMIUpdate where CustomerID=CM.CustomerID )
	end from SchemeDetails SD
	inner join CustomerMaster CM on SD.CustomerID=CM.CustomerID
	where SD.AgreementID=@AgreementID)

	set @EMIAmountRef=(select EMIAmount from SchemeDetails where AgreementID=@AgreementID)
	
	if(@EMIAmount <= @EMIAmountRef)
	begin
	
			insert into EMIUpdate(CustomerID,AgreementID,StoreLocation,PaymentReceivedLocation,EMIAmountReceived,DueDate,DateofPayment,
			NoOfDaysDelayed,Status,createdDate,ModifiedDate) 
			values(@CustomerID,@AgreementID,@StoreLocation,@PaymentReceivedLocation,@EMIAmount,@DueDate,@DateofPayment
			,0,@Status,GETDATE(),GETDATE())	
		
	end
	else
	begin 
		set @DiffAmount=(@EMIAmount/@EMIAmountRef)
		
		while (@i<=@DiffAmount)
		begin
	
			insert into EMIUpdate(CustomerID,AgreementID,StoreLocation,PaymentReceivedLocation,EMIAmountReceived,DueDate,DateofPayment,
			NoOfDaysDelayed,Status,createdDate,ModifiedDate) 
			values(@CustomerID,@AgreementID,@StoreLocation,@PaymentReceivedLocation,@EMIAmountRef,@DueDate,@DateofPayment
			,0,@Status,GETDATE(),GETDATE())	  

		set @DueDate=Dateadd(m,1,@DueDate);
		set @i=@i+1;
		end
		if((@EMIAmount%@EMIAmountRef)>0)
		begin
		
			insert into EMIUpdate(CustomerID,AgreementID,StoreLocation,PaymentReceivedLocation,EMIAmountReceived,DueDate,DateofPayment,
			NoOfDaysDelayed,Status,createdDate,ModifiedDate) 
			values(@CustomerID,@AgreementID,@StoreLocation,@PaymentReceivedLocation,(@EMIAmount%@EMIAmountRef),@DueDate,@DateofPayment
			,0,@Status,GETDATE(),GETDATE())	
		end
	end
	
	update  EMIUpdate set NoOfDaysDelayed=DATEDIFF(day,DateofPayment,DueDate) where AgreementID=@AgreementID --and DateofPayment>DueDate
	--update EMIUpdate set NoOfDaysDelayed=0 where AgreementID=@AgreementID and DateofPayment<=DueDate
	
	drop table #temp
end

GO
/****** Object:  StoredProcedure [dbo].[usp_display]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[usp_display]
as begin
select * from InvestorsCenter
end
GO
/****** Object:  StoredProcedure [dbo].[usp_fetchUserProfileDetails]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from RoleMaster

--alter table usermaster add  Region varchar(100)  null
--select * from UserMaster

CREATE procedure [dbo].[usp_fetchUserProfileDetails]
@username varchar(100),
@password nvarchar(100)
As
Begin
	select UserID,username,password,um.RoleID,rm.RoleName,um.region from UserMaster UM
	inner join RoleMaster RM on um.RoleID=rm.RoleID
	where rm.IsActive=1 and um.Username=@username and um.password=@password
end
GO
/****** Object:  StoredProcedure [dbo].[usp_getEffectivebalance]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_getEffectivebalance]
@InvestorID bigint,
@name varchar(100),
@WithdralAmount decimal,
@WithdrawlDate datetime,
@EffectiveAmount decimal out
as begin
set @EffectiveAmount=(select (Total-@WithdralAmount) from InvestorsCenter
where InvestorsID=@InvestorID and Name=@name
)

update InvestorsCenter
set WithdrawAmount=@WithdralAmount, WithdrawDate=@WithdrawlDate, Total=@EffectiveAmount
where InvestorsID=@InvestorID and Name=@name

end
GO
/****** Object:  StoredProcedure [dbo].[usp_getIds]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_getIds]
as
begin
select InvestorsID from InvestorsCenter
end
GO
/****** Object:  StoredProcedure [dbo].[usp_insertinvestorcenter]    Script Date: 08-07-2019 11.03.06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_insertinvestorcenter](
@name nvarchar(100),
@amount bigint,
@invdate date,
@effectiveamount decimal,
@total decimal,
@investorID bigint out)
as begin
insert into InvestorsCenter(Name,Amount,InvDate,EffectiveAmount,Total)
values(@name,@amount,@invdate,@effectiveamount,@total)
SET @investorID = SCOPE_IDENTITY()
return @investorID
end


GO
