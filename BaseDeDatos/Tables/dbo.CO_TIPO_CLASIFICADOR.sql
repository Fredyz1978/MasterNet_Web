CREATE TABLE [dbo].[CO_TIPO_CLASIFICADOR]
(
[CO_TIPO_CLASIFICADOR_ID] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [uniqueidentifier] NOT NULL,
[NOMBRE] [varchar] (250) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ESTADO] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_CLASIFICADOR] ADD CONSTRAINT [PK_CO_TIPO_CLASIFICADOR] PRIMARY KEY CLUSTERED ([CO_TIPO_CLASIFICADOR_ID]) ON [PRIMARY]
GO
