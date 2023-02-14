SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[CO_SP_INSERT_GUIA_REMISION]
(@CO_DOC_VEN_GUI_COD uniqueidentifier		
,@CO_EMP_RUC char(13)
           ,@CO_DOC_VEN_ID uniqueidentifier
           ,@CO_DOC_VEN_GUI_NUM nvarchar(20)
           ,@CO_DOC_VEN_GUI_FEC_INI datetime
           ,@CO_DOC_VEN_GUI_FEC_TER datetime
           ,@CO_DOC_VEN_GUI_TIP nvarchar(50)
           ,@CO_DOC_VEN_GUI_NOM_TRA nvarchar(50)
           ,@CO_DOC_VEN_GUI_IDE nvarchar(13)
		   ,@CO_DOC_VEN_GUI_PLACA varchar(10)
		   ,@CO_DOC_VEN_GUI_DES varchar(50))
AS
INSERT INTO [dbo].[CO_GUIA_REMISION]
           (CO_DOC_VEN_GUI_COD
			,[CO_EMP_RUC]
           ,[CO_DOC_VEN_ID]
           ,[CO_DOC_VEN_GUI_NUM]
           ,[CO_DOC_VEN_GUI_FEC_INI]
           ,[CO_DOC_VEN_GUI_FEC_TER]
           ,[CO_DOC_VEN_GUI_TIP]
           ,[CO_DOC_VEN_GUI_NOM_TRA]
           ,[CO_DOC_VEN_GUI_IDE]
		   ,CO_DOC_VEN_GUI_PLACA
		   ,CO_ESTADO
		   ,CO_DOC_VEN_GUI_FEC_REG
		   ,CO_DOC_VEN_GUI_DES)
     VALUES
           (@CO_DOC_VEN_GUI_COD
			,@CO_EMP_RUC
           ,@CO_DOC_VEN_ID
           ,@CO_DOC_VEN_GUI_NUM
           ,@CO_DOC_VEN_GUI_FEC_INI
           ,@CO_DOC_VEN_GUI_FEC_TER
           ,@CO_DOC_VEN_GUI_TIP
           ,@CO_DOC_VEN_GUI_NOM_TRA
           ,@CO_DOC_VEN_GUI_IDE
		   ,@CO_DOC_VEN_GUI_PLACA
		   ,1
		   ,GETDATE()
		   ,@CO_DOC_VEN_GUI_DES)

GO
