CREATE TABLE [dbo].[CO_EGRESO]
(
[EgresoID] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Fecha] [datetime] NOT NULL,
[Numero] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[BodegaOrigenID] [int] NOT NULL,
[BodegaDestinoID] [int] NOT NULL,
[Descripcion] [nvarchar] (500) COLLATE Modern_Spanish_CI_AS NULL,
[Estado] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Usuario] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[AlmacenID] [int] NULL,
[Transferencia] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_EGRESO] ADD CONSTRAINT [PK_CO_EGRESO] PRIMARY KEY CLUSTERED ([EgresoID]) ON [PRIMARY]
GO
