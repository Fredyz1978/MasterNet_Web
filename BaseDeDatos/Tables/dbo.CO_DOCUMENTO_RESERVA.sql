CREATE TABLE [dbo].[CO_DOCUMENTO_RESERVA]
(
[CO_DOC_VEN_ID] [uniqueidentifier] NOT NULL,
[AlmacenID] [int] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CLI_COD] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_CLI_COD] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_VEN_CED] [nchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_BOD_COD] [int] NULL,
[CO_DOC_VEN_NUM] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_DOC_VEN_FEC] [datetime] NULL,
[CO_DOC_VEN_EST] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_DET] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TOT_NET] [float] NULL,
[CO_DOC_VEN_POR_DES] [float] NULL,
[CO_DOC_VEN_DES] [float] NULL,
[CO_DOC_VEN_POR_IVA] [int] NULL,
[CO_DOC_VEN_IVA] [float] NULL,
[CO_DOC_VEN_TOT_PAG] [float] NULL,
[CO_DOC_VEN_USU_ALI] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_TOT_LET] [nvarchar] (200) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_VAL_IVA0] [float] NULL,
[CO_DOC_VEN_OTR] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_DOC_VEN_SAL] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DOCUMENTO_RESERVA] ADD CONSTRAINT [PK_DOCUMENTO_RESERVA] PRIMARY KEY CLUSTERED ([CO_DOC_VEN_ID]) ON [PRIMARY]
GO
