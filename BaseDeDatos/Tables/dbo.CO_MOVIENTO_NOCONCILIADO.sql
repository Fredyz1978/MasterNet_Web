CREATE TABLE [dbo].[CO_MOVIENTO_NOCONCILIADO]
(
[CO_MOV_NOC_COD] [int] NOT NULL IDENTITY(1, 1),
[CO_TIP_TRA_COD] [char] (2) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CC_NUM] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_MOV_NOC_BEN] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_MOV_NOC_FEC_PAG] [datetime] NOT NULL,
[CO_MOV_NOC_NUM_DOC] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_MOV_NOC_MON] [float] NOT NULL,
[CO_COM_NUM] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_MOV_NOC_EST] [bit] NULL,
[CO_TIP_COM_NOM] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_MOV_NOC_OPE] [char] (1) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_MOVIENTO_NOCONCILIADO] ADD CONSTRAINT [PK_CO_MOVIENTO_NOCONCILIADO] PRIMARY KEY CLUSTERED ([CO_MOV_NOC_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_MOVIENTO_NOCONCILIADO] ADD CONSTRAINT [FK_CO_MOVIE_GUARDA_CO_CUENT] FOREIGN KEY ([CO_CC_NUM]) REFERENCES [dbo].[CO_CUENTA_CORRIENTE] ([CO_CC_NUM])
GO
ALTER TABLE [dbo].[CO_MOVIENTO_NOCONCILIADO] ADD CONSTRAINT [FK_CO_MOVIENTO_NOCONCILIADO_CO_TIPO_TRANSACCION] FOREIGN KEY ([CO_TIP_TRA_COD], [CO_EMP_RUC]) REFERENCES [dbo].[CO_TIPO_TRANSACCION] ([CO_TIP_TRA_COD], [CO_EMP_RUC])
GO
