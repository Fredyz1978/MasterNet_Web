SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_PAGO_DOCUMENTO_PAGO_SALDO]
@CO_EMP_RUC CHAR(13)
,@CO_DOC_COM_NUM uniqueidentifier
,@CO_PAG_PRO_COD INT
,@CO_PAG_PRO_VAL float
,@CO_PAG_PRO_OPE CHAR(1)
AS
IF(@CO_PAG_PRO_OPE='+')
UPDATE CO_PAGO_PROVEEDOR
SET CO_PAG_PRO_VAL=round(CO_PAG_PRO_VAL+@CO_PAG_PRO_VAL,2)
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_DOC_COM_NUM=@CO_DOC_COM_NUM
AND CO_PAG_PRO_COD=@CO_PAG_PRO_COD
ELSE
UPDATE CO_PAGO_PROVEEDOR
SET CO_PAG_PRO_VAL=round(CO_PAG_PRO_VAL-@CO_PAG_PRO_VAL,2)
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_DOC_COM_NUM=@CO_DOC_COM_NUM
AND CO_PAG_PRO_COD=@CO_PAG_PRO_COD
GO
