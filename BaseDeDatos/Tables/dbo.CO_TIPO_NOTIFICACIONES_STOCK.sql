CREATE TABLE [dbo].[CO_TIPO_NOTIFICACIONES_STOCK]
(
[CO_TIP_NOT_STO_COD] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[CO_TIP_NOT_STO_NOM] [nchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_NOTIFICACIONES_STOCK] ADD CONSTRAINT [PK_CO_TIPO_NOTIFICACIONES_STOC] PRIMARY KEY CLUSTERED ([CO_TIP_NOT_STO_COD]) ON [PRIMARY]
GO
