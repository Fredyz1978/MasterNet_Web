CREATE TABLE [dbo].[CO_LIBRO_BANCO]
(
[CODIGO_LIBRO_BANCO] [int] NOT NULL,
[CO_CC_NUM] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[NUMERO_RESIBO_LIBRO_BANCO] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[TIPO_TRANSACCION_LIBRO_BANCO] [char] (3) COLLATE Modern_Spanish_CI_AS NULL,
[DETALLE_TRANSACCION_LIBRO_BANCO] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[VALOR_INGRESO_LIBRO_BANCO] [decimal] (18, 2) NULL,
[VALOR_EGRESO_LIBRO_BANCO] [decimal] (18, 2) NULL,
[FECHA_TRANSACCION_LIBRO_BANCO] [datetime] NULL,
[ESTADO_TRANSACCION_LIBRO_BANCO] [nvarchar] (7) COLLATE Modern_Spanish_CI_AS NULL,
[FECHA_ANULACION_LIBRO_BANCO] [datetime] NULL,
[NOMBRE_USUARIO] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[AGENCIA_LIBRO_BANCO] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NULL,
[PAGADO_PENDIENTE_LIBRO_BANCO] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_LIBRO_BANCO] ADD CONSTRAINT [PK_CO_LIBRO_BANCO] PRIMARY KEY CLUSTERED ([CODIGO_LIBRO_BANCO]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_LIBRO_BANCO] ADD CONSTRAINT [FK_CO_LIBRO_BANCO_CO_CUENTA_CORRIENTE] FOREIGN KEY ([CO_CC_NUM]) REFERENCES [dbo].[CO_CUENTA_CORRIENTE] ([CO_CC_NUM])
GO
