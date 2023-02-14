CREATE TABLE [dbo].[CO_LISTA_PRECIO]
(
[ListaDePrecioID] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Nombre] [nvarchar] (250) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Rentabilidad] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_LISTA_PRECIO] ADD CONSTRAINT [PK_CO_LISTA_PRECIO] PRIMARY KEY CLUSTERED ([ListaDePrecioID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_LISTA_PRECIO] ADD CONSTRAINT [FK_CO_LISTA_PRECIO_CO_EMPRESA] FOREIGN KEY ([CO_EMP_RUC]) REFERENCES [dbo].[CO_EMPRESA] ([CO_EMP_RUC]) ON UPDATE CASCADE
GO