USE [Comp306]
GO

/****** Object:  Table [dbo].[Director]    Script Date: 29.05.2022 14:40:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Director](
	[Pid] [bigint] IDENTITY(1,1) NOT NULL,
	[AwardCount] [int] NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Director]  WITH CHECK ADD  CONSTRAINT [FK_Director_People] FOREIGN KEY([Pid])
REFERENCES [dbo].[People] ([Id])
GO

ALTER TABLE [dbo].[Director] CHECK CONSTRAINT [FK_Director_People]
GO

