SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_DESPACHO]
@PR_DES_COD INT
AS
SELECT PR_DET_DES_COD,PR_DES_COD,CO_ART_COD,CO_ART_NOM,CO_ART_PRE,CO_ART_UNI,PR_PRO_COD,PR_DET_DES_CAN,PR_PRO_VAL, PR_DET_PRO_REC_CAN_DES, cast(0 as float) as STOCK_ACTUAL, ESTADO 
FROM [PRODUCCION].[DETALLE_DESPACHO] 
WHERE PR_DES_COD=@PR_DES_COD


GO
