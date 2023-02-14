SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE PROC [PRODUCCION].[PR_SELECT_REPORTE_PRODUCCION_REGLA]
@CO_EMP_RUC CHAR(13)
AS
SELECT PRODUCCION.PROCESO.PR_PRO_NUM, PRODUCCION.DETALLE_PROCESO_REGLA.PR_PRO_COD, 
PRODUCCION.DETALLE_PROCESO_REGLA.PR_DET_PRO_REG_CAN
FROM PRODUCCION.PROCESO INNER JOIN
PRODUCCION.DETALLE_PROCESO_REGLA ON 
PRODUCCION.PROCESO.PR_PRO_NUM = PRODUCCION.DETALLE_PROCESO_REGLA.PR_PRO_NUM INNER JOIN
PRODUCCION.TIPO_RECETA ON PRODUCCION.PROCESO.PR_TIP_REC_COD = PRODUCCION.TIPO_RECETA.PR_TIP_REC_COD
WHERE PRODUCCION.PROCESO.CO_EMP_RUC=@CO_EMP_RUC



GO