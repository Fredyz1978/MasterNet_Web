CREATE TABLE [dbo].[CO_PAIS]
(
[PAIS_ID] [int] NOT NULL IDENTITY(1, 1),
[NOMBRE] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CODIGO] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ACTIVO] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PAIS] ADD CONSTRAINT [PK_CO_PAIS] PRIMARY KEY CLUSTERED ([PAIS_ID]) ON [PRIMARY]
GO