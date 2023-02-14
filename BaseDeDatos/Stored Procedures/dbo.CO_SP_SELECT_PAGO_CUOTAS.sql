SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PAGO_CUOTAS]
@CO_EMP_RUC CHAR(13),
@PROF_COD CHAR(10)
AS
SELECT CO_PAG_COD,CO_PAG_CON,CO_PAG_FEC,CO_NOT_DEB_NUM,CO_PAG_VAL,CO_PAG_VAL_IMP
FROM CO_VW_SELECT_PAGO_CUOTAS
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_PAG_EST=0 AND PROF_COD=@PROF_COD
GO
