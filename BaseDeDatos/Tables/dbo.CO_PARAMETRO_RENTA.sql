CREATE TABLE [dbo].[CO_PARAMETRO_RENTA]
(
[CO_PAR_REN_COD] [int] NOT NULL IDENTITY(1, 1),
[CO_PAR_REN_LIM_INF] [float] NULL,
[CO_PAR_REN_LIM_SUP] [float] NULL,
[CO_PAR_REN_VAL_BAS] [float] NULL,
[CO_PAR_REN_POR_DIF] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_PARAMETRO_RENTA] ADD CONSTRAINT [PK_CO_PARAMETRO_RENTA_1] PRIMARY KEY CLUSTERED ([CO_PAR_REN_COD]) ON [PRIMARY]
GO
