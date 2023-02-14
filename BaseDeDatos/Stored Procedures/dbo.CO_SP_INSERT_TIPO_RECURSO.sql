SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_TIPO_RECURSO]
         (@CO_TIP_REC_COD int
           ,@CO_EMP_RUC char(13)
           ,@CO_TIP_REC_NOM nvarchar(50))
AS
INSERT INTO [dbo].[CO_TIPO_RECURSO]
           ([CO_TIP_REC_COD]
           ,[CO_EMP_RUC]
           ,[CO_TIP_REC_NOM])
     VALUES
           (@CO_TIP_REC_COD
           ,@CO_EMP_RUC
           ,@CO_TIP_REC_NOM)
GO
