SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_INSERT_KARDEX]
			(@CO_EMP_RUC char(13)
           ,@PR_PRO_COD nvarchar(10)
           ,@CO_KAR_TOT_FEC datetime
           ,@CO_KAR_TOT_DET nvarchar(70)
           ,@CO_KAR_TOT_DOC int
           ,@CO_KAR_TOT_ENT_CANT float
           ,@CO_KAR_TOT_ENT_VAL_UNI float
           ,@CO_KAR_TOT_ENT_VAL_TOT float
           ,@CO_KAR_TOT_SAL_CANT float
           ,@CO_KAR_TOT_SAL_VAL_UNI float
		   ,@CO_KAR_TOT_SAL_VAL_TOT float
           ,@CO_KAR_TOT_EXI_CANT float
           ,@CO_KAR_TOT_EXI_VAL_UNI float
           ,@CO_KAR_TOT_EXI_VAL_TOT float)
AS
INSERT INTO [PRODUCCION].[KARDEX]
           ([CO_EMP_RUC]
           ,[PR_PRO_COD]
           ,[CO_KAR_TOT_FEC]
           ,[CO_KAR_TOT_DET]
           ,[CO_KAR_TOT_DOC]
           ,[CO_KAR_TOT_ENT_CANT]
           ,[CO_KAR_TOT_ENT_VAL_UNI]
           ,[CO_KAR_TOT_ENT_VAL_TOT]
           ,[CO_KAR_TOT_SAL_CANT]
           ,[CO_KAR_TOT_SAL_VAL_UNI]
           ,[CO_KAR_TOT_SAL_VAL_TOT]
           ,[CO_KAR_TOT_EXI_CANT]
           ,[CO_KAR_TOT_EXI_VAL_UNI]
           ,[CO_KAR_TOT_EXI_VAL_TOT])
     VALUES
           (@CO_EMP_RUC
           ,@PR_PRO_COD
           ,@CO_KAR_TOT_FEC
           ,@CO_KAR_TOT_DET
           ,@CO_KAR_TOT_DOC
           ,@CO_KAR_TOT_ENT_CANT
           ,@CO_KAR_TOT_ENT_VAL_UNI
           ,@CO_KAR_TOT_ENT_VAL_TOT
           ,@CO_KAR_TOT_SAL_CANT
           ,@CO_KAR_TOT_SAL_VAL_UNI
		   ,@CO_KAR_TOT_SAL_VAL_TOT
           ,@CO_KAR_TOT_EXI_CANT
           ,@CO_KAR_TOT_EXI_VAL_UNI
           ,@CO_KAR_TOT_EXI_VAL_TOT)

GO
