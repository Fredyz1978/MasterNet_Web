SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_DOCUMENTO_VENTA_TOTAL_102A1]
@CO_EMP_RUC CHAR(13),
@CO_DOC_VEN_ANIO INT
AS
SELECT SUM(CO_DOC_VEN_TOT_PAG)
FROM CO_DOCUMENTO_VENTA 
WHERE YEAR(CO_DOC_VEN_FEC)=@CO_DOC_VEN_ANIO
AND (CO_TIP_DOC_VEN_NUM=5 OR CO_TIP_DOC_VEN_NUM=18) 
AND CO_EMP_RUC=@CO_EMP_RUC
GO
