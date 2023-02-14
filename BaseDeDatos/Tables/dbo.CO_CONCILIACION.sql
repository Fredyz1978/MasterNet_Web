CREATE TABLE [dbo].[CO_CONCILIACION]
(
[CO_CON_BAN_COD] [int] NOT NULL IDENTITY(1, 1),
[CO_CC_NUM] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TIP_TRA_COD] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CONTABILIDAD_COM_NUM] [int] NULL,
[CO_CONTABILIDAD_TIP_COM_COD] [int] NULL,
[CO_DOCUMENTO_NUM] [uniqueidentifier] NULL,
[CO_CON_BAN_TRA_NUM] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CON_BAN_FEC] [datetime] NOT NULL,
[CO_CON_BAN_NOM_BEN] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CON_BAN_VAL] [float] NOT NULL,
[CO_CON_BAN_VAL_LET] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CON_BAN_CON] [bit] NULL,
[CO_CON_BAN_USU_ALI] [varchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_DOCUMENTO_TIPO] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CONCILIACION] ADD CONSTRAINT [PK_CO_CONCILIACION] PRIMARY KEY CLUSTERED ([CO_CON_BAN_COD], [CO_CC_NUM], [CO_TIP_TRA_COD], [CO_EMP_RUC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CONCILIACION] ADD CONSTRAINT [FK_CO_CONCI_ESTABLECE_CO_CUENT] FOREIGN KEY ([CO_CC_NUM]) REFERENCES [dbo].[CO_CUENTA_CORRIENTE] ([CO_CC_NUM])
GO
ALTER TABLE [dbo].[CO_CONCILIACION] ADD CONSTRAINT [FK_CO_CONCILIACION_CO_TIPO_TRANSACCION] FOREIGN KEY ([CO_TIP_TRA_COD], [CO_EMP_RUC]) REFERENCES [dbo].[CO_TIPO_TRANSACCION] ([CO_TIP_TRA_COD], [CO_EMP_RUC])
GO
