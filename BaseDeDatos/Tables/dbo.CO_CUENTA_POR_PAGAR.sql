CREATE TABLE [dbo].[CO_CUENTA_POR_PAGAR]
(
[CO_CUE_PAG_COD] [int] NOT NULL IDENTITY(1, 1),
[CO_PRO_COD] [uniqueidentifier] NOT NULL,
[CO_CUE_PAG_FEC] [datetime] NOT NULL,
[CO_CUE_PAG_PLA] [int] NOT NULL,
[CO_CUE_PAG_EST] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CUENTA_POR_PAGAR] ADD CONSTRAINT [PK_CO_CUENTA_POR_PAGAR] PRIMARY KEY CLUSTERED ([CO_CUE_PAG_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CUENTA_POR_PAGAR] ADD CONSTRAINT [FK_CO_CUENTA_POR_PAGAR_CO_PROVEEDOR] FOREIGN KEY ([CO_PRO_COD]) REFERENCES [dbo].[CO_PROVEEDOR] ([CO_PRO_COD])
GO
