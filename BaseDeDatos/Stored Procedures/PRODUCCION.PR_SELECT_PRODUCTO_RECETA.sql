SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [PRODUCCION].[PR_SELECT_PRODUCTO_RECETA]
@PR_TIP_REC_COD INT
AS
WITH S
as
(
SELECT RANK() OVER (PARTITION BY PRODUCCION.KARDEX.PR_PRO_COD ORDER BY PRODUCCION.KARDEX.CO_KAR_TOT_COD DESC) AS 'RowNumber',		
				PRODUCCION.PRODUCTO.PR_PRO_COD, 
						PRODUCCION.KARDEX.CO_KAR_TOT_FEC, PRODUCCION.KARDEX.CO_KAR_TOT_EXI_CANT, 
                      PRODUCCION.KARDEX.CO_KAR_TOT_EXI_VAL_UNI, PRODUCCION.KARDEX.CO_KAR_TOT_EXI_VAL_TOT, PRODUCCION.PRODUCTO.PR_PRO_NOM, 
                      PRODUCCION.PRODUCTO.CO_EMP_RUC, PRODUCCION.KARDEX.CO_KAR_TOT_COD
--FROM         PRODUCCION.PRODUCTO INNER JOIN
--                      PRODUCCION.KARDEX ON PRODUCCION.PRODUCTO.PR_PRO_COD = PRODUCCION.KARDEX.PR_PRO_COD AND 
--                      PRODUCCION.PRODUCTO.CO_EMP_RUC = PRODUCCION.KARDEX.CO_EMP_RUC
FROM         PRODUCCION.PRODUCTO LEFT OUTER JOIN
                      PRODUCCION.KARDEX ON PRODUCCION.PRODUCTO.PR_PRO_COD = PRODUCCION.KARDEX.PR_PRO_COD AND 
                      PRODUCCION.PRODUCTO.CO_EMP_RUC = PRODUCCION.KARDEX.CO_EMP_RUC
where PR_TIP_REC_COD=@PR_TIP_REC_COD) 


select PR_PRO_COD, PR_PRO_NOM, ISNULL(CO_KAR_TOT_EXI_VAL_UNI,0) as PR_PRO_PRE, ISNULL(CO_KAR_TOT_EXI_CANT,0) as PR_PRO_CAN
from (
		SELECT RANK() OVER (PARTITION BY PR_PRO_COD ORDER BY CO_KAR_TOT_COD desc) AS 'RowNumber2', PR_PRO_COD, CO_KAR_TOT_EXI_CANT, 
				CO_KAR_TOT_EXI_VAL_UNI, PR_PRO_NOM  
		FROM S
		WHERE RowNumber=1
) as X
where RowNumber2=1
ORDER BY 1




GO
