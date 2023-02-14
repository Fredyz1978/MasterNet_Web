CREATE TABLE [dbo].[CO_PARAMETRO_COMPRAS]
(
[ParametroCompraID] [int] NOT NULL IDENTITY(1, 1),
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NOT NULL,
[CO_TIP_SUS_COD] [uniqueidentifier] NOT NULL,
[TipoComprobanteContableID] [int] NULL,
[CuentaInventario] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaIVACobrado] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCompraEfectivo] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCompraCredito] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCompraCheque] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCompraDescuento] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Automatico] [bit] NULL,
[CuentaCompraTransferencia] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_COM_COM_COD] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_COMPRAS] ADD CONSTRAINT [PK_CO_PARAMETRO_COMPRAS] PRIMARY KEY CLUSTERED ([ParametroCompraID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_COMPRAS] ADD CONSTRAINT [FK_CO_PARAMETRO_COMPRAS_CO_TIPO_COMPROBANTE_COMPRA] FOREIGN KEY ([CO_TIP_COM_COM_COD]) REFERENCES [dbo].[CO_TIPO_COMPROBANTE_COMPRA] ([CO_TIP_COM_COM_COD])
GO
