SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_PRODUCTO_ANTES]
@CO_EMP_RUC CHAR(13),
@PR_PRO_COD NVARCHAR(10),
@CO_KAR_TOT_FEC DATETIME
AS

WITH S
as
(
SELECT RANK() OVER (PARTITION BY PRODUCCION.KARDEX.PR_PRO_COD ORDER BY PRODUCCION.KARDEX.CO_KAR_TOT_COD DESC) AS 'RowNumber',		
				PRODUCCION.PRODUCTO.PR_PRO_COD, 
						PRODUCCION.KARDEX.CO_KAR_TOT_FEC, PRODUCCION.KARDEX.CO_KAR_TOT_EXI_CANT, CO_KAR_TOT_EXI_VAL_TOT,CO_KAR_TOT_EXI_VAL_UNI,
                      PRODUCCION.PRODUCTO.PR_PRO_NOM, PRODUCCION.PRODUCTO.PR_PRO_UNI, PRODUCCION.PRODUCTO.PR_PRO_PES,
                      PRODUCCION.PRODUCTO.CO_EMP_RUC, PRODUCCION.PRODUCTO.PR_TIP_REC_COD, PRODUCCION.KARDEX.CO_KAR_TOT_COD
FROM         PRODUCCION.PRODUCTO INNER JOIN
                      PRODUCCION.KARDEX ON PRODUCCION.PRODUCTO.PR_PRO_COD = PRODUCCION.KARDEX.PR_PRO_COD AND 
                      PRODUCCION.PRODUCTO.CO_EMP_RUC = PRODUCCION.KARDEX.CO_EMP_RUC
where CO_KAR_TOT_FEC<@CO_KAR_TOT_FEC and PRODUCCION.KARDEX.PR_PRO_COD=@PR_PRO_COD and PRODUCCION.PRODUCTO.CO_EMP_RUC=@CO_EMP_RUC)


select PR_PRO_COD, CO_EMP_RUC, PR_TIP_REC_COD, PR_PRO_NOM, PR_PRO_UNI, PR_PRO_PES, CO_KAR_TOT_EXI_CANT, CO_KAR_TOT_EXI_VAL_TOT, CO_KAR_TOT_EXI_VAL_UNI
from (
		SELECT RANK() OVER (PARTITION BY PR_PRO_COD ORDER BY CO_KAR_TOT_COD desc) AS 'RowNumber2', PR_PRO_COD, CO_EMP_RUC, 
		PR_TIP_REC_COD, PR_PRO_NOM, PR_PRO_UNI, PR_PRO_PES, CO_KAR_TOT_EXI_CANT, CO_KAR_TOT_EXI_VAL_TOT, CO_KAR_TOT_EXI_VAL_UNI
		FROM S
		WHERE RowNumber=1
) as X
where RowNumber2=1




GO
