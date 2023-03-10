SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_RUBROS_TEMP_LIQUIDACION]
@CO_EMP_RUC CHAR(13)
,@CO_MES INT
,@CO_ANIO INT
AS
SELECT dbo.CO_ROL_TEMP.CO_EMP_RUC, dbo.CO_ROL_TEMP.CO_RUB_ROL_COD, dbo.CO_ROL_TEMP.PROF_COD, 
dbo.CO_ROL_TEMP.CO_RUB_ROL_VAL, dbo.CO_ROL_TEMP.CO_MES, dbo.CO_ROL_TEMP.CO_ANIO
FROM dbo.CO_ROL_TEMP INNER JOIN
dbo.PROFESOR ON dbo.CO_ROL_TEMP.PROF_COD = dbo.PROFESOR.PROF_COD
WHERE 
dbo.CO_ROL_TEMP.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_ROL_TEMP.CO_MES=@CO_MES AND dbo.CO_ROL_TEMP.CO_ANIO=@CO_ANIO
GO
