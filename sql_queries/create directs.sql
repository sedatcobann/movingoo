USE [Comp306]
GO

/****** Object:  Table [dbo].[Directs]    Script Date: 29.05.2022 14:41:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Directs](
	[Sid] [bigint] NOT NULL,
	[Pid] [bigint] NOT NULL,
 CONSTRAINT [PK_Directs] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC,
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Directs]  WITH CHECK ADD  CONSTRAINT [FK_Directs_Director] FOREIGN KEY([Pid])
REFERENCES [dbo].[Director] ([Pid])
GO

ALTER TABLE [dbo].[Directs] CHECK CONSTRAINT [FK_Directs_Director]
GO

ALTER TABLE [dbo].[Directs]  WITH CHECK ADD  CONSTRAINT [FK_Directs_Shows] FOREIGN KEY([Sid])
REFERENCES [dbo].[Shows] ([Id])
GO

ALTER TABLE [dbo].[Directs] CHECK CONSTRAINT [FK_Directs_Shows]
GO

