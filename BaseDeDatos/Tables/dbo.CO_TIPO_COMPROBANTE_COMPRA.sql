CREATE TABLE [dbo].[CO_TIPO_COMPROBANTE_COMPRA]
(
[CO_TIP_COM_COM_COD] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TIP_COM_COM_NOM] [nvarchar] (150) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_COM_COM_FEC_VIG] [datetime] NULL,
[CO_TIP_COM_COM_INV] [char] (1) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_COMPROBANTE_COMPRA] ADD CONSTRAINT [PK_CO_TIPO_COMPROBANTE_COMPRA] PRIMARY KEY CLUSTERED ([CO_TIP_COM_COM_COD]) ON [PRIMARY]
GO