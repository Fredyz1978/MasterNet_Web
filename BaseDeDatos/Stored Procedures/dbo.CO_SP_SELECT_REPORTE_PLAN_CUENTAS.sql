SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_PLAN_CUENTAS]
@CO_EMP_RUC CHAR(13)
AS
SELECT dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_EMPRESA.CO_EMP_TEL, dbo.CO_CUENTA.CO_CUE_COD, 
concat(replicate(' ',len(dbo.CO_CUENTA.CO_CUE_COD)),dbo.CO_CUENTA.CO_CUE_NOM) as CO_CUE_NOM, dbo.CO_CUENTA.CO_CUE_TIP
FROM dbo.CO_EMPRESA INNER JOIN
dbo.CO_CUENTA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_CUENTA.CO_EMP_RUC
WHERE CO_EMPRESA.CO_EMP_RUC = @CO_EMP_RUC
GO
