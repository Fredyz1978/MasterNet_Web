CREATE TABLE [dbo].[CO_CORRECION_HORARIO]
(
[CO_COR_HOR_MES] [int] NOT NULL,
[CO_COR_HOR_ANO] [int] NOT NULL,
[PROF_COD] [char] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_COR_HOR_LAB] [float] NOT NULL,
[CO_COR_HOR_EXT] [float] NOT NULL,
[CO_COR_HOR_SUP] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CORRECION_HORARIO] ADD CONSTRAINT [PK_CO_CORRECION_HORARIO] PRIMARY KEY CLUSTERED ([CO_COR_HOR_MES], [CO_COR_HOR_ANO], [PROF_COD], [CO_EMP_RUC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CORRECION_HORARIO] ADD CONSTRAINT [FK_CO_CORRECION_HORARIO_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC])
GO
ALTER TABLE [dbo].[CO_CORRECION_HORARIO] ADD CONSTRAINT [FK_CO_CORRECION_HORARIO_PROFESOR] FOREIGN KEY ([PROF_COD]) REFERENCES [dbo].[PROFESOR] ([PROF_COD])
GO
