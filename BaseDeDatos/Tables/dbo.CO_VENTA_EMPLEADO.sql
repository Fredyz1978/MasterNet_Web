CREATE TABLE [dbo].[CO_VENTA_EMPLEADO]
(
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_NOT_DEB_NUM] [int] NOT NULL,
[CO_SER_COD] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_VEN_EMP_CAN] [int] NOT NULL,
[CO_VEN_EMP_PRE] [float] NOT NULL,
[CO_VEN_EMP_DES] [float] NOT NULL,
[CO_VEN_EMP_TOT] [float] NOT NULL,
[CO_VEN_EMP_USU_ALI] [nvarchar] (14) COLLATE Modern_Spanish_CI_AS NOT NULL,
[PROF_COD] [char] (10) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_VENTA_EMPLEADO] ADD CONSTRAINT [PK_CO_VENTA_EMPLEADO_1] PRIMARY KEY CLUSTERED ([CO_EMP_RUC], [CO_NOT_DEB_NUM], [CO_SER_COD], [PROF_COD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_VENTA_EMPLEADO] ADD CONSTRAINT [FK_CO_VENTA_EMPLEADO_CO_NOTA_DEBITO] FOREIGN KEY ([CO_EMP_RUC], [CO_NOT_DEB_NUM], [PROF_COD]) REFERENCES [dbo].[CO_NOTA_DEBITO] ([CO_EMP_RUC], [CO_NOT_DEB_NUM], [PROF_COD])
GO
