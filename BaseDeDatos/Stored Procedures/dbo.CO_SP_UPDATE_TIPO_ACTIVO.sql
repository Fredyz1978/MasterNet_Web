SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_TIPO_ACTIVO]
@CO_TIP_ACT_COD int
,@CO_EMP_RUC char(13)
,@CO_CUE_COD varchar(40)
,@CO_TIP_ACT_NOM nvarchar(50)
,@CO_CUE_COD_DEP varchar(40)
,@CO_TIP_ACT_POR float
,@CO_TIP_ACT_TIE INT
AS
UPDATE [dbo].[CO_TIPO_ACTIVO] SET
           CO_CUE_COD=@CO_CUE_COD
           ,CO_TIP_ACT_NOM=@CO_TIP_ACT_NOM
           ,CO_CUE_COD_DEP=@CO_CUE_COD_DEP
           ,CO_TIP_ACT_POR=@CO_TIP_ACT_POR
		   ,CO_TIP_ACT_TIE=@CO_TIP_ACT_TIE
     WHERE 
           CO_TIP_ACT_COD=@CO_TIP_ACT_COD
           AND CO_EMP_RUC=@CO_EMP_RUC
GO
