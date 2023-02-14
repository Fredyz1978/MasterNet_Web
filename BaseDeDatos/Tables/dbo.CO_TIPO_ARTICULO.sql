CREATE TABLE [dbo].[CO_TIPO_ARTICULO]
(
[CO_TIP_ART_COD] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TIP_ART_NOM] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_ARTICULO] ADD CONSTRAINT [PK_CO_TIPO_ARTICULO] PRIMARY KEY CLUSTERED ([CO_TIP_ART_COD], [CO_EMP_RUC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_ARTICULO] ADD CONSTRAINT [FK_CO_TIPO_ARTICULO_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC]) ON UPDATE CASCADE
GO
