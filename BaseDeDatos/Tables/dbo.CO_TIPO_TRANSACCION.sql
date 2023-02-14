CREATE TABLE [dbo].[CO_TIPO_TRANSACCION]
(
[CO_TIP_TRA_COD] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TIP_TRA_NOM] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TIP_TRA_OPE] [char] (1) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_TRANSACCION] ADD CONSTRAINT [PK_CO_TIPO_TRANSACCION] PRIMARY KEY CLUSTERED ([CO_TIP_TRA_COD], [CO_EMP_RUC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_TRANSACCION] ADD CONSTRAINT [FK_CO_TIPO_TRANSACCION_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC])
GO