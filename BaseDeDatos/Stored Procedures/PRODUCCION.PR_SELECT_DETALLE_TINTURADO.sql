SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_TINTURADO]
@PR_DES_COD INT
,@CO_ART_COD varchar(50)
,@CO_ART_NOM varchar(100)
AS
SELECT @PR_DES_COD as PR_DET_DES_COD, 0 as PR_DES_COD,@CO_ART_COD as CO_ART_COD,@CO_ART_NOM as CO_ART_NOM,0 as CO_ART_PRE,0 as CO_ART_UNI, PR_PRO_COD,
		0 as PR_DET_DES_CAN,0 as PR_PRO_VAL, cast(0 as float) as PR_DET_PRO_REC_CAN_DES, cast(0 as float) as STOCK_ACTUAL, '' as ESTADO 
FROM [PRODUCCION].[PRODUCTO] 
WHERE PR_PRO_COD IN (select CO_ART_COD from PRODUCCION.DETALLE_REGLA where PR_REG_COD in
(select PR_REG_COD from PRODUCCION.REGLA where PR_TIP_REC_COD in
(select PR_TIP_REC_COD from PRODUCCION.PRODUCTO where PR_PRO_COD in 
(select PR_PRO_COD from PRODUCCION.ORDEN_TINTURADO where CO_TINTURADO_ID=@PR_DES_COD))))

GO
