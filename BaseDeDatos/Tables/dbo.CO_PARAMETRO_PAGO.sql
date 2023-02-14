CREATE TABLE [dbo].[CO_PARAMETRO_PAGO]
(
[ParamteroPagoID] [int] NOT NULL IDENTITY(1, 1),
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NOT NULL,
[TipoComprobanteContableID] [int] NULL,
[CuentaPagoDebe] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaPagoEfectivo] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaPagoCheque] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Automatico] [bit] NOT NULL,
[CuentaPagoTarjeta] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaPagoTransferencia] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_PAGO] ADD CONSTRAINT [PK_CO_PARAMETRO_PAGO] PRIMARY KEY CLUSTERED ([ParamteroPagoID]) ON [PRIMARY]
GO
