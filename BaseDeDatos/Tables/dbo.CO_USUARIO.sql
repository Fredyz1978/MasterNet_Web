CREATE TABLE [dbo].[CO_USUARIO]
(
[USUA_COD] [uniqueidentifier] NOT NULL,
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[USUA_NOM] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[USUA_CLA] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[USUA_ALI] [varchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[USUA_FEC_INI] [datetime] NOT NULL,
[USUA_FEC_FIN] [datetime] NOT NULL,
[USUA_EST] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_USUARIO] ADD CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED ([USUA_COD]) ON [PRIMARY]
GO
