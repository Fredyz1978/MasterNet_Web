CREATE TABLE [dbo].[CO_MES_SALDO_TEMP]
(
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CUE_COD] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_MES_SAL_ACT] [float] NOT NULL,
[CO_MES_SAL_DEB] [float] NOT NULL,
[CO_MES_SAL_HAB] [float] NOT NULL,
[CO_MES_SAL_ANT] [float] NOT NULL,
[CO_CUE_COD_ANT] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_MES_SALDO_TEMP] ADD CONSTRAINT [PK_CO_MES_SALDO_TEMP] PRIMARY KEY CLUSTERED ([CO_EMP_RUC], [CO_CUE_COD]) ON [PRIMARY]
GO
