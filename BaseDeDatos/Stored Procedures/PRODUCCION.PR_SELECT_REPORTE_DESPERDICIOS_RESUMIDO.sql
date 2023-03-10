SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_REPORTE_DESPERDICIOS_RESUMIDO]
@PR_PRO_FEC1 DATETIME
,@PR_PRO_FEC2 DATETIME
,@CO_EMP_RUC CHAR(13)
AS

SELECT PRODUCCION.KARDEX.PR_PRO_COD, PRODUCCION.KARDEX.CO_KAR_TOT_FEC,
PRODUCCION.KARDEX.CO_KAR_TOT_SAL_CANT AS DESPERDICIO,
PRODUCCION.PRODUCTO.PR_PRO_NOM
FROM PRODUCCION.KARDEX INNER JOIN
PRODUCCION.PRODUCTO ON PRODUCCION.KARDEX.PR_PRO_COD = PRODUCCION.PRODUCTO.PR_PRO_COD AND 
PRODUCCION.KARDEX.CO_KAR_TOT_DET='Desperdicio'
WHERE 
PRODUCCION.KARDEX.CO_EMP_RUC=@CO_EMP_RUC AND
(PRODUCCION.KARDEX.CO_KAR_TOT_FEC>=@PR_PRO_FEC1 AND PRODUCCION.KARDEX.CO_KAR_TOT_FEC<=@PR_PRO_FEC2)
order by PRODUCCION.KARDEX.PR_PRO_COD
GO
