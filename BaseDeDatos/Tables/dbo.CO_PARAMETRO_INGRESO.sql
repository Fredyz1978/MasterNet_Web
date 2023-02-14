CREATE TABLE [dbo].[CO_PARAMETRO_INGRESO]
(
[ParametroIngresoID] [int] NOT NULL IDENTITY(1, 1),
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NOT NULL,
[TipoComprobanteContableID] [int] NULL,
[CuentaCostoMercaderia] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaInventario] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Automatico] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_INGRESO] ADD CONSTRAINT [PK_CO_PARAMETRO_INGRESO] PRIMARY KEY CLUSTERED ([ParametroIngresoID]) ON [PRIMARY]
GO
