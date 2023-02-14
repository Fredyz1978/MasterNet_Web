CREATE TABLE [dbo].[CO_AUTORIZACION]
(
[AutorizacionID] [int] NOT NULL IDENTITY(1, 1),
[CO_TIP_DOC_VEN_NUM] [int] NOT NULL,
[CO_ALM_COD] [int] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Serie1] [nvarchar] (5) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Sere2] [nvarchar] (5) COLLATE Modern_Spanish_CI_AS NOT NULL,
[SecuenciaInicio] [bigint] NOT NULL,
[SecuenciaFinal] [bigint] NOT NULL,
[ValidoDesde] [datetime] NOT NULL,
[ValidoHasta] [datetime] NOT NULL,
[Activo] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_AUTORIZACION] ADD CONSTRAINT [PK_CO_AUTORIZACION] PRIMARY KEY CLUSTERED ([AutorizacionID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_AUTORIZACION] ADD CONSTRAINT [FK_CO_AUTORIZACION_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC])
GO
