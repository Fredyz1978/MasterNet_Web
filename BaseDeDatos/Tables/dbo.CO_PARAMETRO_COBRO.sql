CREATE TABLE [dbo].[CO_PARAMETRO_COBRO]
(
[ParamteroCobroID] [int] NOT NULL IDENTITY(1, 1),
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NOT NULL,
[TipoComprobanteContableID] [int] NULL,
[CuentaCobroEfectivo] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCobro2] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Automatico] [bit] NOT NULL,
[CuentaCobroTransferencia] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCobroCheque] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaCobroTarjeta] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_COBRO] ADD CONSTRAINT [PK_CO_PARAMETRO_COBRO] PRIMARY KEY CLUSTERED ([ParamteroCobroID]) ON [PRIMARY]
GO
