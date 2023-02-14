SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [PRODUCCION].[PR_UPDATE_PRODUCTO]
		(@PR_PRO_COD nvarchar(10)
           ,@CO_EMP_RUC char(13)
           ,@PR_TIP_REC_COD int
           ,@PR_PRO_NOM nvarchar(100)
           ,@PR_PRO_UNI nvarchar(50)
           ,@PR_PRO_PES float)
AS
UPDATE  [PRODUCCION].[PRODUCTO] SET
          [PR_TIP_REC_COD]=@PR_TIP_REC_COD
           ,[PR_PRO_NOM]=@PR_PRO_NOM
           ,[PR_PRO_UNI]=@PR_PRO_UNI
           ,[PR_PRO_PES]=@PR_PRO_PES
WHERE 
           [PR_PRO_COD]=@PR_PRO_COD
           AND [CO_EMP_RUC]=@CO_EMP_RUC

GO
