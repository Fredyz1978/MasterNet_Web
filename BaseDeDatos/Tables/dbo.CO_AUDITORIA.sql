CREATE TABLE [dbo].[CO_AUDITORIA]
(
[AUDITORIA_ID] [uniqueidentifier] NOT NULL,
[TABLA] [varchar] (200) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CAMPO] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[VALOR_ANTERIOR] [varchar] (1000) COLLATE Modern_Spanish_CI_AS NOT NULL,
[VALOR_NUEVO] [varchar] (1000) COLLATE Modern_Spanish_CI_AS NOT NULL,
[IP_CAMBIO] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[USUARIO_CAMBIO] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[FECHA_CAMBIO] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_AUDITORIA] ADD CONSTRAINT [PK_CO_AUDITORIA] PRIMARY KEY CLUSTERED ([AUDITORIA_ID]) ON [PRIMARY]
GO
