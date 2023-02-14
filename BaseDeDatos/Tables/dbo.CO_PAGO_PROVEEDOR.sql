CREATE TABLE [dbo].[CO_PAGO_PROVEEDOR]
(
[CO_PAG_PRO_COD] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_DOC_COM_NUM] [uniqueidentifier] NULL,
[CO_PAG_PRO_VAL] [float] NULL,
[CO_PAG_PRO_FEC] [datetime] NULL,
[CO_PAG_PRO_EST] [bit] NULL,
[CO_PAG_PRO_CON] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_PAG_PRO_VAL_IMP] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PAGO_PROVEEDOR] ADD CONSTRAINT [PK_CO_PAGO_PROVEEDOR_1] PRIMARY KEY CLUSTERED ([CO_PAG_PRO_COD]) ON [PRIMARY]
GO