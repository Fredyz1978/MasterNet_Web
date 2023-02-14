CREATE TABLE [dbo].[CO_TIPO_SUSTENTO]
(
[CO_TIP_SUS_COD] [uniqueidentifier] NOT NULL,
[CO_TIP_SUS_NOM] [nvarchar] (150) COLLATE Modern_Spanish_CI_AS NULL,
[CO_TIP_SUS_INV] [bit] NULL,
[CO_TIP_SUS_ACT] [bit] NULL,
[CO_TIP_SUS_OTR] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TIPO_SUSTENTO] ADD CONSTRAINT [PK_CO_TIPO_SUSTENTO] PRIMARY KEY CLUSTERED ([CO_TIP_SUS_COD]) ON [PRIMARY]
GO