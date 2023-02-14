SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_PROYECTO_INGRESOS]
@CO_PRO_COD int
,@CO_EMP_RUC char(13)
,@CO_TIP_REC_COD int
,@CO_ING_NOM nvarchar(50)
,@CO_ING_MAN bit
,@CO_ING_CUE nvarchar(50)
,@CO_PRO_TIP nvarchar(10)
AS
INSERT INTO [dbo].[CO_PROYECTO_INGRESOS]
           ([CO_PRO_COD]
           ,[CO_EMP_RUC]
           ,[CO_TIP_REC_COD]
           ,[CO_ING_NOM]
           ,[CO_ING_MAN]
           ,[CO_ING_CUE]
			,CO_PRO_TIP)
     VALUES
           (@CO_PRO_COD
           ,@CO_EMP_RUC
           ,@CO_TIP_REC_COD
           ,@CO_ING_NOM
           ,@CO_ING_MAN
           ,@CO_ING_CUE
			,@CO_PRO_TIP)
GO
