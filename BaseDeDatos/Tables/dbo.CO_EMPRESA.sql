CREATE TABLE [dbo].[CO_EMPRESA]
(
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_NOM] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_NOM_REP] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_NOM_CON] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_REG_CON] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_DIR] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CLA_CIU] [uniqueidentifier] NOT NULL,
[CO_EMP_TEL] [varchar] (11) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_EMP_FAX] [varchar] (11) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLA_TIP_IDE] [nchar] (1) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_REP_IDE] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_RUC_CON] [nchar] (13) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_MAI] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_EMP_RAZ_SOC] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CONTRIBUYENTE_ESPECIAL] [bit] NULL,
[CO_CONTRIBUYENTE_NUMERO] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_OBLIGADO_CONTABILIDAD] [bit] NULL,
[CO_EMPRESA_LOGO] [varbinary] (max) NULL,
[CO_EMPRESA_LOGO_FILE] [varchar] (150) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_EMPRESA] ADD CONSTRAINT [PK_CO_EMPRESA] PRIMARY KEY CLUSTERED ([CO_EMP_RUC]) ON [PRIMARY]
GO
