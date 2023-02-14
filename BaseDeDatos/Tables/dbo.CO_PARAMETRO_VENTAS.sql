CREATE TABLE [dbo].[CO_PARAMETRO_VENTAS]
(
[ParametroVentaID] [int] NOT NULL IDENTITY(1, 1),
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NOT NULL,
[TipoDocumentoVentaID] [int] NOT NULL,
[TipoComprobanteContableID] [int] NOT NULL,
[CuentaVentaEfectivo] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaCredito] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaCheque] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaTarjeta] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaDescuento] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaTotal] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaIVA] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Automatico] [bit] NOT NULL,
[TipoComprobanteContableInventarioID] [int] NULL,
[CuentaCostoMercaderia] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaInventario] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaRetencion] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaTransferencia] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaVentaIVA0] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_VENTAS] ADD CONSTRAINT [PK_CO_PARAMETRO_VENTAS_1] PRIMARY KEY CLUSTERED ([ParametroVentaID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_VENTAS] ADD CONSTRAINT [FK_CO_PARAMETRO_VENTAS_CO_TIPO_DOCUMENTO_VENTA] FOREIGN KEY ([TipoDocumentoVentaID]) REFERENCES [dbo].[CO_TIPO_DOCUMENTO_VENTA] ([CO_TIP_DOC_VEN_NUM])
GO
