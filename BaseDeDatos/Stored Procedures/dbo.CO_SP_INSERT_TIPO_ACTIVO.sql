SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_TIPO_ACTIVO]
@CO_EMP_RUC char(13)
,@CO_CUE_COD varchar(40)
,@CO_TIP_ACT_NOM nvarchar(50)
,@CO_CUE_COD_DEP varchar(40)
,@CO_TIP_ACT_POR float
,@CO_TIP_ACT_USU_ALI varchar(15)
,@CO_TIP_ACT_TIE INT
AS
INSERT INTO [dbo].[CO_TIPO_ACTIVO]
           ([CO_EMP_RUC]
           ,[CO_CUE_COD]
           ,[CO_TIP_ACT_NOM]
           ,[CO_CUE_COD_DEP]
           ,[CO_TIP_ACT_POR]
           ,[CO_TIP_ACT_USU_ALI]
		   ,[CO_TIP_ACT_TIE])
     VALUES
           (@CO_EMP_RUC
           ,@CO_CUE_COD
           ,@CO_TIP_ACT_NOM
           ,@CO_CUE_COD_DEP
           ,@CO_TIP_ACT_POR
           ,@CO_TIP_ACT_USU_ALI
		   ,@CO_TIP_ACT_TIE)
GO
