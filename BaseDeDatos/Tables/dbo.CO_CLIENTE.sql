CREATE TABLE [dbo].[CO_CLIENTE]
(
[CO_CLI_COD] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CLA_CLI_COD] [uniqueidentifier] NOT NULL,
[CO_CLA_IDE_COD] [uniqueidentifier] NOT NULL,
[CO_CLI_CED] [nvarchar] (13) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_NOM] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CLI_CON] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_EST_CIV] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_SEX] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLA_CLI_PAI] [uniqueidentifier] NULL,
[CO_CLA_CLI_CIU] [uniqueidentifier] NULL,
[CO_CLI_DIR] [nvarchar] (150) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_TEL] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_TEL2] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_FAX] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_CEL] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_MAI] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_CUE_CON] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_DES] [float] NOT NULL,
[CO_CLI_LIM_CRE] [float] NOT NULL,
[CO_CLI_CRE] [bit] NOT NULL,
[CO_CLI_EST] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CLI_USU_ALI] [nvarchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CLI_MAI2] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CO_CLI_MAI3] [nvarchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CuentaContableVenta] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_CLIENTE] ADD CONSTRAINT [PK_CO_CLIENTE] PRIMARY KEY CLUSTERED ([CO_CLI_COD]) ON [PRIMARY]
GO
