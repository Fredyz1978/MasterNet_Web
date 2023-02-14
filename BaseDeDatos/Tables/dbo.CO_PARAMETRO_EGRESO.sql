CREATE TABLE [dbo].[CO_PARAMETRO_EGRESO]
(
[ParametroEgresoID] [int] NOT NULL IDENTITY(1, 1),
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NOT NULL,
[TipoComprobanteContableID] [int] NULL,
[CuentaCostoMercaderia] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaInventario] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Automatico] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_EGRESO] ADD CONSTRAINT [PK_CO_PARAMETRO_EGRESO] PRIMARY KEY CLUSTERED ([ParametroEgresoID]) ON [PRIMARY]
GO
