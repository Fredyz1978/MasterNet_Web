CREATE TABLE [dbo].[CO_INGRESO]
(
[IngresoID] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Fecha] [datetime] NOT NULL,
[Numero] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[BodegaOrigenID] [int] NOT NULL,
[BodegaDestinoID] [int] NOT NULL,
[Descripcion] [nvarchar] (500) COLLATE Modern_Spanish_CI_AS NULL,
[Estado] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Usuario] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Transferencia] [bit] NULL,
[AlmacenID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_INGRESO] ADD CONSTRAINT [PK_CO_INGRESO] PRIMARY KEY CLUSTERED ([IngresoID]) ON [PRIMARY]
GO
