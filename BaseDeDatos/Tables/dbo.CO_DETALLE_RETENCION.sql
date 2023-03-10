CREATE TABLE [dbo].[CO_DETALLE_RETENCION]
(
[CO_DET_RET_ID] [uniqueidentifier] NOT NULL,
[CO_RET_COD] [uniqueidentifier] NOT NULL,
[CO_RET_BAS] [float] NULL,
[CO_RET_DET_COD] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_RET_NOM] [nvarchar] (150) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_RET_COD_SRI] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[CO_RET_POR] [float] NULL,
[CO_RET_VAL] [float] NULL,
[CO_RET_DET_CUE] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_RET_DET_IMP] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_RET_COD] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_RETENCION] ADD CONSTRAINT [PK_CO_DETALLE_RETENCION] PRIMARY KEY CLUSTERED ([CO_DET_RET_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DETALLE_RETENCION] ADD CONSTRAINT [FK_CO_DETALLE_RETENCION_CO_RETENCION] FOREIGN KEY ([CO_RET_COD]) REFERENCES [dbo].[CO_RETENCION] ([CO_RET_COD])
GO
