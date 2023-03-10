CREATE TABLE [dbo].[CO_GRUPO]
(
[CO_GRU_COD] [int] NOT NULL,
[CO_GRU_NOM] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_ESCONTADOR] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_GRUPO] ADD CONSTRAINT [PK_CO_GRUPO] PRIMARY KEY CLUSTERED ([CO_GRU_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_GRUPO] ADD CONSTRAINT [FK_CO_GRUPO_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC]) ON DELETE CASCADE ON UPDATE CASCADE
GO
