SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NUMERO_PAGO_PROVEEDOR]
@CO_EMP_RUC CHAR(13)
AS
SELECT MAX(CO_PAG_PRO_COD) AS CO_PAG_PRO_MAX
FROM CO_PAGO_PROVEEDOR
WHERE CO_EMP_RUC=@CO_EMP_RUC
GO
