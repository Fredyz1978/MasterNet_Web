SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CUENTA_DECUENTA_CORRIENTE]
@CO_CC_NUM VARCHAR(10),
@CO_EMP_RUC CHAR(13)
AS
SELECT dbo.CO_CUENTA.CO_CUE_COD, dbo.CO_CUENTA.CO_CUE_NOM
FROM dbo.CO_CUENTA_CORRIENTE INNER JOIN
dbo.CO_CUENTA ON dbo.CO_CUENTA_CORRIENTE.CO_EMP_RUC = dbo.CO_CUENTA.CO_EMP_RUC AND 
dbo.CO_CUENTA_CORRIENTE.CO_CUE_COD = dbo.CO_CUENTA.CO_CUE_COD
WHERE dbo.CO_CUENTA_CORRIENTE.CO_CC_NUM=@CO_CC_NUM AND dbo.CO_CUENTA_CORRIENTE.CO_EMP_RUC=@CO_EMP_RUC
GO