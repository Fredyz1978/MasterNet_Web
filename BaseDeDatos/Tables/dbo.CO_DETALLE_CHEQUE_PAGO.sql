CREATE TABLE [dbo].[CO_DETALLE_CHEQUE_PAGO]
(
[CO_COM_PAG_NUM] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_DET_CHE_COD] [int] NOT NULL IDENTITY(1, 1),
[CO_CC_NUM] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DET_CHE_NUM] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DET_CHE_VAL] [float] NULL,
[CO_DET_CHE_FEC] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_CHEQUE_PAGO] ADD CONSTRAINT [PK_CO_DETALLE_CHEQUE_PAGO] PRIMARY KEY CLUSTERED ([CO_COM_PAG_NUM], [CO_EMP_RUC], [CO_DET_CHE_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_CHEQUE_PAGO] ADD CONSTRAINT [FK_CO_DETALLE_CHEQUE_PAGO_CO_CUENTA_CORRIENTE] FOREIGN KEY ([CO_CC_NUM]) REFERENCES [dbo].[CO_CUENTA_CORRIENTE] ([CO_CC_NUM])
GO