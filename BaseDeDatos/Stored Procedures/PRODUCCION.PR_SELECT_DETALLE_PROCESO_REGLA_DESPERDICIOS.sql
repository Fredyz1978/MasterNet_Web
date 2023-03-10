SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_PROCESO_REGLA_DESPERDICIOS]
@PR_PRO_NUM INT
,@CO_EMP_RUC CHAR(13)
AS
SELECT PR_DET_PRO_REG_COD AS ID_DETALLE,PR_PRO_NUM,CO_EMP_RUC,PR_PRO_COD,PR_DET_PRO_REG_CAN AS CANTIDAD,PR_DET_PRO_REG_CAN_DES AS DESPERDICIO,PR_DET_PRO_REG_TIP AS TIPO, 'REGLA' AS PROCESO 
FROM [PRODUCCION].[DETALLE_PROCESO_REGLA]
WHERE @PR_PRO_NUM=PR_PRO_NUM AND CO_EMP_RUC=@CO_EMP_RUC
UNION
SELECT PR_DET_PRO_COD AS ID_DETALLE, PR_PRO_NUM,CO_EMP_RUC,PR_PRO_COD,PR_DET_PRO_CAN AS CANTIDAD,PR_DET_PRO_CAN_DES AS DESPERDICIO,'P' AS TIPO, 'NORMAL' AS PROCESO 
FROM PRODUCCION.DETALLE_PROCESO
WHERE @PR_PRO_NUM=PR_PRO_NUM AND CO_EMP_RUC=@CO_EMP_RUC
GO
