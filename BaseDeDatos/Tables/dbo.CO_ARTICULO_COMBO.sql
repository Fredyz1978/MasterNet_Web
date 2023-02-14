CREATE TABLE [dbo].[CO_ARTICULO_COMBO]
(
[ComboID] [int] NOT NULL IDENTITY(1, 1),
[CO_ART_COD] [uniqueidentifier] NOT NULL,
[EmpresaID] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ArticuloID] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ArticuloNombre] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[Cantidad] [int] NOT NULL,
[Costo] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_ARTICULO_COMBO] ADD CONSTRAINT [PK_CO_ARTICULO_COMBO] PRIMARY KEY CLUSTERED ([ComboID]) ON [PRIMARY]
GO
