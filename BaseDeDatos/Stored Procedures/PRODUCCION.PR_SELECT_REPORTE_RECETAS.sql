SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_REPORTE_RECETAS]
@CO_EMP_RUC CHAR(13)
,@PR_TIP_PRO_COD INT
AS
SELECT * FROM [PRODUCCION].[PR_SELECT_REPORTE_TIPO_RECETA]
WHERE CO_EMP_RUC=@CO_EMP_RUC
AND PR_TIP_PRO_COD=CASE @PR_TIP_PRO_COD WHEN 0 THEN PR_TIP_PRO_COD ELSE @PR_TIP_PRO_COD END
GO
