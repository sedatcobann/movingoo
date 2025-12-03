USE [Comp306]
GO

/****** Object:  Table [dbo].[Watchlist]    Script Date: 29.05.2022 14:43:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Watchlist](
	[Uid] [bigint] NOT NULL,
	[Sid] [bigint] NOT NULL,
 CONSTRAINT [PK_Watchlist] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC,
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Watchlist]  WITH CHECK ADD  CONSTRAINT [FK_Watchlist_Shows] FOREIGN KEY([Sid])
REFERENCES [dbo].[Shows] ([Id])
GO

ALTER TABLE [dbo].[Watchlist] CHECK CONSTRAINT [FK_Watchlist_Shows]
GO

ALTER TABLE [dbo].[Watchlist]  WITH CHECK ADD  CONSTRAINT [FK_Watchlist_Users] FOREIGN KEY([Uid])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[Watchlist] CHECK CONSTRAINT [FK_Watchlist_Users]
GO

