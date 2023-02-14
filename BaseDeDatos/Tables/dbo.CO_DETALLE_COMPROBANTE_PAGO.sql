CREATE TABLE [dbo].[CO_DETALLE_COMPROBANTE_PAGO]
(
[CO_DET_PAG_PRO_COD] [uniqueidentifier] NOT NULL,
[CO_COM_PAG_NUM] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_PAG_PRO_COD] [uniqueidentifier] NOT NULL,
[CO_DOC_COM_NUM] [uniqueidentifier] NULL,
[CO_DOC_COM_TIP] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DET_PAG_PRO_CON] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DET_PAG_PRO_VAL] [float] NULL,
[CO_DET_PAG_PRO_FEC] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_COMPROBANTE_PAGO] ADD CONSTRAINT [PK_CO_DETALLE_COMPROBANTE_PAGO] PRIMARY KEY CLUSTERED ([CO_DET_PAG_PRO_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_COMPROBANTE_PAGO] ADD CONSTRAINT [FK_CO_DETALLE_COMPROBANTE_PAGO_CO_COMPROBANTE_PAGO] FOREIGN KEY ([CO_COM_PAG_NUM]) REFERENCES [dbo].[CO_COMPROBANTE_PAGO] ([CO_COM_PAG_NUM])
GO
ALTER TABLE [dbo].[CO_DETALLE_COMPROBANTE_PAGO] ADD CONSTRAINT [FK_CO_DETALLE_COMPROBANTE_PAGO_CO_PAGO_PROVEEDOR] FOREIGN KEY ([CO_PAG_PRO_COD]) REFERENCES [dbo].[CO_PAGO_PROVEEDOR] ([CO_PAG_PRO_COD])
GO