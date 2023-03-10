SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NUMERO_DOCUMENTO_VENTA]
@CO_TIP_DOC_VEN_NUM int
,@CO_EMP_RUC char(13)
AS
SELECT MAX(CAST(CO_DOC_VEN_NUM AS INT)) AS CONTADOR FROM CO_DOCUMENTO_VENTA
WHERE CO_TIP_DOC_VEN_NUM=@CO_TIP_DOC_VEN_NUM AND CO_EMP_RUC=@CO_EMP_RUC
GO
