CREATE TABLE [dbo].[CO_CABECERA_TEMP]
(
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CAB_TEM_MES] [int] NOT NULL,
[CO_CAB_TEM_ANO] [int] NOT NULL,
[CO_CAB_TEM_EST] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CABECERA_TEMP] ADD CONSTRAINT [PK_CO_CABERA_TEMP] PRIMARY KEY CLUSTERED ([CO_EMP_RUC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CABECERA_TEMP] ADD CONSTRAINT [FK_CO_CABECERA_TEMP_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC])
GO
