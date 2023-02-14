CREATE TABLE [dbo].[CO_DOCUMENTO_VENTA]
(
[CO_DOC_VEN_ID] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TIP_DOC_VEN_NUM] [int] NOT NULL,
[CO_CLI_COD] [uniqueidentifier] NULL,
[CO_VEN_ID] [uniqueidentifier] NULL,
[CO_DOC_VEN_NUM] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_DOC_VEN_FEC] [datetime] NULL,
[CO_DOC_VEN_EST] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_DET] [nvarchar] (4000) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TOT_NET] [float] NULL,
[CO_DOC_VEN_POR_DES] [float] NULL,
[CO_DOC_VEN_DES] [float] NULL,
[CO_DOC_VEN_POR_IVA] [int] NULL,
[CO_DOC_VEN_IVA] [float] NULL,
[CO_DOC_VEN_TOT_PAG] [float] NULL,
[CO_DOC_VEN_FOR_PAG] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_EFE] [bit] NULL,
[CO_DOC_VEN_EFE_VAL] [float] NULL,
[CO_DOC_VEN_CHE] [bit] NULL,
[CO_DOC_VEN_CHE_VAL] [float] NULL,
[CO_DOC_VEN_CHE_NUM] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_CHE_BAN] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TAR] [bit] NULL,
[CO_DOC_VEN_TAR_VAL] [float] NULL,
[CO_DOC_VEN_TAR_NUM] [nvarchar] (30) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TAR_VAU] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_NUM_PAG] [int] NULL,
[CO_DOC_VEN_USU_ALI] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TOT_LET] [nvarchar] (200) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_GUI_NUM] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_GUI_FEC_INI] [datetime] NULL,
[CO_DOC_VEN_GUI_FEC_TER] [datetime] NULL,
[CO_DOC_VEN_GUI_TIP] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_GUI_NOM_TRA] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_GUI_IDE] [nvarchar] (13) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_VAL_ICE] [float] NULL,
[CO_DOC_VEN_VAL_IVA0] [float] NULL,
[CO_DOC_VEN_TIP_PRE] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_COM_NUM_RET] [int] NULL,
[CO_DOC_VEN_CHE_FEC] [datetime] NULL,
[CO_DOC_VEN_OTR] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TAR_NOM] [int] NULL,
[AlmacenID] [int] NOT NULL,
[CO_DOC_VEN_DIAS_PLA] [int] NULL,
[CO_DOC_VEN_FEC_PAGO] [datetime] NULL,
[CO_DOC_VEN_TRA] [bit] NULL,
[CO_DOC_VEN_TRA_VAL] [float] NULL,
[CO_DOC_VEN_TRA_DOC_NUM] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_ORIGINAL_ID] [uniqueidentifier] NULL,
[CO_RESERVA_ID] [uniqueidentifier] NULL,
[CO_PROFORMA_ID] [int] NULL,
[FORMA_PAGO_ID] [uniqueidentifier] NULL,
[CO_DOC_VEN_CRE_FOR] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DOCUMENTO_VENTA] ADD CONSTRAINT [PK_CO_DOCUMENTO_VENTA] PRIMARY KEY CLUSTERED ([CO_DOC_VEN_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DOCUMENTO_VENTA] ADD CONSTRAINT [FK_CO_DOCUMENTO_VENTA_CO_CLIENTE] FOREIGN KEY ([CO_CLI_COD]) REFERENCES [dbo].[CO_CLIENTE] ([CO_CLI_COD])
GO
ALTER TABLE [dbo].[CO_DOCUMENTO_VENTA] ADD CONSTRAINT [FK_CO_DOCUMENTO_VENTA_CO_TIPO_DOCUMENTO_VENTA] FOREIGN KEY ([CO_TIP_DOC_VEN_NUM]) REFERENCES [dbo].[CO_TIPO_DOCUMENTO_VENTA] ([CO_TIP_DOC_VEN_NUM])
GO
ALTER TABLE [dbo].[CO_DOCUMENTO_VENTA] ADD CONSTRAINT [FK_CO_DOCUMENTO_VENTA_CO_VENDEDOR] FOREIGN KEY ([CO_VEN_ID]) REFERENCES [dbo].[CO_VENDEDOR] ([CO_VEN_ID])
GO
