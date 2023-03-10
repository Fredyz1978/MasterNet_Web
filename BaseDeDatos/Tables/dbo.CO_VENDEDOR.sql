CREATE TABLE [dbo].[CO_VENDEDOR]
(
[CO_VEN_ID] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_VEN_CED] [nchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_VEN_NOM] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_VEN_DIR] [nvarchar] (150) COLLATE Modern_Spanish_CI_AS NULL,
[CO_VEN_TEL] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_VEN_CEL] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_VEN_CTA] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_VEN_EMAIL] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_ESTADO] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_VENDEDOR] ADD CONSTRAINT [PK_CO_VENDEDOR_1] PRIMARY KEY CLUSTERED ([CO_VEN_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_VENDEDOR] ADD CONSTRAINT [FK_CO_VENDEDOR_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC])
GO
