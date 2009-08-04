USE [sample]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 08/03/2009 18:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[UserId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_UserData_UserId]  DEFAULT (newid()),
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL CONSTRAINT [DF_UserData_Name]  DEFAULT (''),
	[Address] [nvarchar](200) NULL CONSTRAINT [DF_UserData_Address]  DEFAULT (''),
	[City] [nvarchar](50) NULL CONSTRAINT [DF_UserData_Place]  DEFAULT (''),
	[State] [nvarchar](50) NULL CONSTRAINT [DF_UserData_State]  DEFAULT (''),
	[District] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL CONSTRAINT [DF_UserData_Pincode]  DEFAULT (''),
	[MobileNo] [nvarchar](20) NULL,
	[EmailId] [nvarchar](50) NULL,
	[PANNumber] [nvarchar](10) NULL CONSTRAINT [DF_UserData_PANNumber]  DEFAULT (''),
	[BankAccountNumber] [nvarchar](50) NULL CONSTRAINT [DF_UserData_BankAccountNumber]  DEFAULT ('-1'),
	[BankName] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[BankPayCardNumber] [nvarchar](50) NULL CONSTRAINT [DF_UserData_BankPayCardNumber]  DEFAULT (''),
	[NomineeName] [nvarchar](50) NULL,
	[NomineeRelation] [nvarchar](50) NULL,
	[CourierNumber] [nvarchar](50) NULL CONSTRAINT [DF_UserData_CourierNumber]  DEFAULT (''),
	[CourierName] [nvarchar](50) NULL CONSTRAINT [DF_UserData_CourierName]  DEFAULT (''),
	[DispatchDate] [datetime] NULL,
	[DispatchStatus] [nvarchar](50) NULL CONSTRAINT [DF_UserData_DispatchStatus]  DEFAULT ('-1'),
	[SecretQuestion] [nvarchar](100) NULL CONSTRAINT [DF_UserData_SecretQuestion]  DEFAULT (''),
	[SecretAnswer] [nvarchar](100) NULL CONSTRAINT [DF_UserData_SecretAnswer]  DEFAULT (''),
	[DateCreated] [datetime] NULL CONSTRAINT [DF_UserData_DateCreated]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserData_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
