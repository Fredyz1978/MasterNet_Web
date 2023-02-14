SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROC [PRODUCCION].[PR_INSERT_PRODUCTO]
			(@PR_PRO_COD nvarchar(10)
           ,@CO_EMP_RUC char(13)
           ,@PR_TIP_REC_COD int
           ,@PR_PRO_NOM nvarchar(100)
           ,@PR_PRO_UNI nvarchar(50)
           ,@PR_PRO_PES float)
AS
INSERT INTO [PRODUCCION].[PRODUCTO]
           ([PR_PRO_COD]
           ,[CO_EMP_RUC]
           ,[PR_TIP_REC_COD]
           ,[PR_PRO_NOM]
           ,[PR_PRO_UNI]
           ,[PR_PRO_PES])
     VALUES
           (@PR_PRO_COD
           ,@CO_EMP_RUC
           ,@PR_TIP_REC_COD
           ,@PR_PRO_NOM
           ,@PR_PRO_UNI
           ,@PR_PRO_PES)




GO
