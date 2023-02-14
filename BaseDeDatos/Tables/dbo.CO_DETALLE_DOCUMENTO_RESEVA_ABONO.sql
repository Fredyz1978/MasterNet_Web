CREATE TABLE [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO]
(
[CO_RES_PAG_ID] [uniqueidentifier] NOT NULL,
[CO_DOC_VEN_ID] [uniqueidentifier] NOT NULL,
[FECHA_ABONO] [datetime] NULL,
[VALOR_ABONO] [float] NULL,
[SALDO] [float] NULL,
[USUARIO] [nchar] (10) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO] ADD CONSTRAINT [PK_CO_DETALLE_DOCUMENTO_RESEVA_ABONO] PRIMARY KEY CLUSTERED ([CO_RES_PAG_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO] ADD CONSTRAINT [FK_CO_DETALLE_DOCUMENTO_RESEVA_ABONO_CO_DOCUMENTO_RESERVA] FOREIGN KEY ([CO_DOC_VEN_ID]) REFERENCES [dbo].[CO_DOCUMENTO_RESERVA] ([CO_DOC_VEN_ID])
GO