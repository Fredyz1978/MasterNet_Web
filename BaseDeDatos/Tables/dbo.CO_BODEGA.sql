CREATE TABLE [dbo].[CO_BODEGA]
(
[CO_BOD_COD] [uniqueidentifier] NOT NULL,
[CO_ALM_COD] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_BOD_NOM] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_ESTADO] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_BODEGA] ADD CONSTRAINT [PK_CO_BODEGA] PRIMARY KEY CLUSTERED ([CO_BOD_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_BODEGA] ADD CONSTRAINT [FK_CO_BODEGA_CO_ALMACEN] FOREIGN KEY ([CO_ALM_COD]) REFERENCES [dbo].[CO_ALMACEN] ([CO_ALM_COD])
GO
