SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_DESPACHO_ARTICULO]
@PR_DES_COD INT,
@CO_ART_COD VARCHAR(50),
@CO_ART_UNI int

AS
SELECT PR_DET_DES_COD,PR_DES_COD,CO_ART_COD,CO_ART_NOM,CO_ART_PRE,CO_ART_UNI,PR_PRO_COD,PR_DET_DES_CAN,PR_PRO_VAL, ESTADO 
FROM [PRODUCCION].[DETALLE_DESPACHO] 
WHERE PR_DES_COD=@PR_DES_COD AND CO_ART_COD=@CO_ART_COD
AND ESTADO<>'PROCESADO'
and CO_ART_UNI=@CO_ART_UNI

GO
