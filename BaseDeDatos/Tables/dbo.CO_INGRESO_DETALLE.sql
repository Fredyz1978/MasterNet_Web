CREATE TABLE [dbo].[CO_INGRESO_DETALLE]
(
[DetalleIngresoID] [uniqueidentifier] NOT NULL,
[IngresoID] [uniqueidentifier] NOT NULL,
[CO_ART_COD] [uniqueidentifier] NOT NULL,
[CO_ART_NOM] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Costo] [float] NOT NULL,
[Cantidad] [float] NOT NULL,
[Total] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_INGRESO_DETALLE] ADD CONSTRAINT [PK_CO_INGRESO_DETALLE] PRIMARY KEY CLUSTERED ([DetalleIngresoID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_INGRESO_DETALLE] ADD CONSTRAINT [FK_CO_INGRESO_DETALLE_CO_ARTICULO] FOREIGN KEY ([CO_ART_COD]) REFERENCES [dbo].[CO_ARTICULO] ([CO_ART_COD])
GO
ALTER TABLE [dbo].[CO_INGRESO_DETALLE] ADD CONSTRAINT [FK_CO_INGRESO_DETALLE_CO_INGRESO] FOREIGN KEY ([IngresoID]) REFERENCES [dbo].[CO_INGRESO] ([IngresoID])
GO
