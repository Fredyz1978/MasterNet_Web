CREATE TABLE [dbo].[CO_REGISTRO_DIARIO]
(
[PROF_COD] [char] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_REG_DIA_FEC] [datetime] NOT NULL,
[CO_REG_DIA_HOR_ING] [nchar] (5) COLLATE Modern_Spanish_CI_AS NULL,
[CO_REG_DIA_HOR_SAL] [nchar] (5) COLLATE Modern_Spanish_CI_AS NULL,
[CO_REG_DIA_HOR_LAB] [float] NULL,
[CO_REG_DIA_HOR_EXT] [float] NULL,
[CO_REG_DIA_HOR_SUP] [float] NULL,
[CO_REG_DIA_HOR_ATR] [float] NULL,
[CO_REG_DIA_HOR_PER] [float] NULL,
[CO_REG_DIA_HOR_CIE] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_REGISTRO_DIARIO] ADD CONSTRAINT [PK_CO_REGISTRO_DIARIO] PRIMARY KEY CLUSTERED ([PROF_COD], [CO_EMP_RUC], [CO_REG_DIA_FEC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_REGISTRO_DIARIO] ADD CONSTRAINT [FK_CO_REGISTRO_DIARIO_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC])
GO
ALTER TABLE [dbo].[CO_REGISTRO_DIARIO] ADD CONSTRAINT [FK_CO_REGISTRO_DIARIO_PROFESOR] FOREIGN KEY ([PROF_COD]) REFERENCES [dbo].[PROFESOR] ([PROF_COD])
GO
