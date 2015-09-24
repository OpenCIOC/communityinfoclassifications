CREATE TABLE [dbo].[accessibility]
(
[Code] [varchar] (50) COLLATE Latin1_General_100_CI_AI NOT NULL,
[Name (en-CA)] [nvarchar] (255) COLLATE Latin1_General_100_CI_AI NULL,
[Name (fr-CA)] [nvarchar] (255) COLLATE Latin1_General_100_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[accessibility] ADD CONSTRAINT [PK_accessibility] PRIMARY KEY CLUSTERED  ([Code]) ON [PRIMARY]
GO
