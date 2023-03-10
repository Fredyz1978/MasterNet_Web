SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_PAGO_DOCUMENTO_VENTA_SALDO]
@CO_PAG_DOC_VEN_COD UNIQUEIDENTIFIER
,@CO_PAG_DOC_VEN_VAL float
,@CO_PAG_DOC_VEN_OPE CHAR(1)
AS
IF(@CO_PAG_DOC_VEN_OPE='+')
UPDATE CO_PAGO_DOCUMENTO_VENTA
SET CO_PAG_DOC_VEN_VAL=round(CO_PAG_DOC_VEN_VAL+@CO_PAG_DOC_VEN_VAL,2)
WHERE CO_PAG_DOC_VEN_COD=@CO_PAG_DOC_VEN_COD
ELSE
UPDATE CO_PAGO_DOCUMENTO_VENTA
SET CO_PAG_DOC_VEN_VAL=round(CO_PAG_DOC_VEN_VAL-@CO_PAG_DOC_VEN_VAL,2)
WHERE CO_PAG_DOC_VEN_COD=@CO_PAG_DOC_VEN_COD

GO
