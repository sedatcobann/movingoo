USE [Comp306]
GO

/****** Object:  Table [dbo].[Shows]    Script Date: 29.05.2022 14:39:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Shows](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Title] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Date_Added] [datetime] NULL,
	[Release_Year] [int] NULL,
	[Rating] [nvarchar](max) NULL,
	[Duration] [nvarchar](max) NULL,
	[Listed_In] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shows] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

