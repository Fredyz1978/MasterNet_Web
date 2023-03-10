SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_DATELLE_COBRO_CLIENTE]
(@CO_DET_COB_CLI_COD UNIQUEIDENTIFIER
		   ,@CO_COM_COD_CLI_ID UNIQUEIDENTIFIER
           ,@CO_DOC_VEN_ID UNIQUEIDENTIFIER
           ,@CO_DET_COB_CLI_CON nvarchar(50)
           ,@CO_DET_COB_CLI_VAL float
           ,@CO_DET_COB_CLI_FEC datetime
           ,@CO_PAG_DOC_VEN_COD UNIQUEIDENTIFIER)
AS
INSERT INTO [dbo].[CO_DETALLE_COBRO_CLIENTE]
           ([CO_DET_COB_CLI_COD]
           ,[CO_COM_COD_CLI_ID]
           ,[CO_DOC_VEN_ID]
           ,[CO_DET_COB_CLI_CON]
           ,[CO_DET_COB_CLI_VAL]
           ,[CO_DET_COB_CLI_FEC]
           ,[CO_PAG_DOC_VEN_COD])
     VALUES
           (@CO_DET_COB_CLI_COD
           ,@CO_COM_COD_CLI_ID
           ,@CO_DOC_VEN_ID
           ,@CO_DET_COB_CLI_CON
           ,@CO_DET_COB_CLI_VAL
           ,@CO_DET_COB_CLI_FEC
           ,@CO_PAG_DOC_VEN_COD)

GO
