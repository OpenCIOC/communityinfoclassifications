CREATE TABLE [dbo].[contacthonorific]
(
[Honorific] [nvarchar] (20) COLLATE Latin1_General_100_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[contacthonorific] ADD CONSTRAINT [PK_contacthonorific] PRIMARY KEY CLUSTERED  ([Honorific]) ON [PRIMARY]
GO
