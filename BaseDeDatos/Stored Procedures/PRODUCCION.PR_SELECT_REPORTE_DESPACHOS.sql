SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_REPORTE_DESPACHOS]
@PR_DES_INCIO DATETIME,
@PR_DES_FIN DATETIME,
@CO_EMP_RUC CHAR(13),
@TIPO VARCHAR(20)
AS
SELECT * FROM [PRODUCCION].[SELECT_DESPACHOS]
WHERE PR_DES_FEC>=@PR_DES_INCIO AND PR_DES_FEC<=@PR_DES_FIN AND CO_EMP_RUC=@CO_EMP_RUC
AND TIPO=@TIPO
ORDER BY CODIGO_AGRUPACION ASC
GO
