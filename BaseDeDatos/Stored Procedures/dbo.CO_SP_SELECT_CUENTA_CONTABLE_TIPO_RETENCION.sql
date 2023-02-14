SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CUENTA_CONTABLE_TIPO_RETENCION]
@CO_TIP_RET_COD VARCHAR(10)
,@CO_EMP_RUC CHAR(13)
AS
SELECT CO_CUE_COD FROM CO_TIPO_RETENCION
WHERE CO_TIP_RET_COD=@CO_TIP_RET_COD AND CO_EMP_RUC=@CO_EMP_RUC
GO