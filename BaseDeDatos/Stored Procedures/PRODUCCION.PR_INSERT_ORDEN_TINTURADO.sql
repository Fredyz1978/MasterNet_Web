SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_INSERT_ORDEN_TINTURADO]
@PR_PRO_COD nvarchar(10)
           ,@PR_PRO_NOM nvarchar(100)
           ,@CO_EMP_RUC char(13)
           ,@GAMA_COLOR nvarchar(20)
           ,@CANTIDAD_KG float
           ,@CANTIDAD_METROS float
           ,@CANTIDAD_PROCESADO float
           ,@FECHA_FIN_PROCESO datetime
           ,@ESTADO varchar(20)
		   ,@PRIORIDAD varchar(10)
AS
INSERT INTO [PRODUCCION].[ORDEN_TINTURADO]
           ([PR_PRO_COD]
           ,[PR_PRO_NOM]
           ,[CO_EMP_RUC]
           ,[GAMA_COLOR]
           ,[CANTIDAD_KG]
           ,[CANTIDAD_METROS]
           ,[CANTIDAD_PROCESADO]
           ,[FECHA_FIN_PROCESO]
           ,[ESTADO]
		   ,[PRIORIDAD]
		   ,FECHA_INGRESO)
     VALUES
           (@PR_PRO_COD
           ,@PR_PRO_NOM
           ,@CO_EMP_RUC
           ,@GAMA_COLOR
           ,@CANTIDAD_KG
           ,@CANTIDAD_METROS
           ,@CANTIDAD_PROCESADO
           ,@FECHA_FIN_PROCESO
           ,@ESTADO
		   ,@PRIORIDAD
		   ,GETDATE())

GO
