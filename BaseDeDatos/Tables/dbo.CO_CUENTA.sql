CREATE TABLE [dbo].[CO_CUENTA]
(
[CO_CUE_COD] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CUE_COD_ANT] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CUE_NOM] [varchar] (60) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CUE_TIP] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CUE_USU_ALI] [varchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CUE_CAS_IMP] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CUENTA] ADD CONSTRAINT [PK_CO_CUENTA_1] PRIMARY KEY CLUSTERED ([CO_CUE_COD], [CO_EMP_RUC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CUENTA] ADD CONSTRAINT [FK_CO_CUENTA_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC]) ON UPDATE CASCADE
GO
