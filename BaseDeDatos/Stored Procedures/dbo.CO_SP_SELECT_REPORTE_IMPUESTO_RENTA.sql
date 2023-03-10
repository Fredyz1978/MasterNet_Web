SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_IMPUESTO_RENTA]
@CO_EMP_RUC CHAR(13)
,@CO_UBI_COD INT
,@CO_TRA_FEC1 DATETIME
,@CO_TRA_FEC2 DATETIME
,@CO_RUB_ROL_COD INT
AS
SELECT dbo.CO_RUBROS_ROL.CO_RUB_ROL_NOM, SUM(dbo.CO_TRANSACCION.CO_TRA_VAL) AS VALOR, 
dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO, 
dbo.PROFESOR.CO_UBI_COD, dbo.PROFESOR.CO_EMP_RUC, dbo.CO_UBICACION_AF.CO_UBI_NOM, dbo.CO_EMPRESA.CO_EMP_NOM
FROM dbo.CO_TRANSACCION INNER JOIN
dbo.CO_RUBROS_ROL ON dbo.CO_TRANSACCION.CO_RUB_ROL_COD = dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD AND 
dbo.CO_TRANSACCION.CO_EMP_RUC = dbo.CO_RUBROS_ROL.CO_EMP_RUC INNER JOIN
dbo.PROFESOR ON dbo.CO_TRANSACCION.PROF_COD = dbo.PROFESOR.PROF_COD INNER JOIN
dbo.CO_UBICACION_AF ON dbo.PROFESOR.CO_EMP_RUC = dbo.CO_UBICACION_AF.CO_EMP_RUC AND 
dbo.PROFESOR.CO_UBI_COD = dbo.CO_UBICACION_AF.CO_UBI_COD INNER JOIN
dbo.CO_EMPRESA ON dbo.CO_RUBROS_ROL.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC AND 
dbo.CO_UBICACION_AF.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
WHERE 
--CONVERT(NVARCHAR(10),dbo.CO_TRANSACCION.CO_TRA_PER,101)>=CONVERT(NVARCHAR(10),@CO_TRA_FEC1,101) AND 
--CONVERT(NVARCHAR(10),dbo.CO_TRANSACCION.CO_TRA_PER,101)<=CONVERT(NVARCHAR(10),@CO_TRA_FEC2,101) AND
DBO.PROFESOR.CO_UBI_COD=case @CO_UBI_COD when 0 then dbo.PROFESOR.CO_UBI_COD else @CO_UBI_COD end  AND
dbo.PROFESOR.CO_EMP_RUC=@CO_EMP_RUC AND
dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD=@CO_RUB_ROL_COD
GROUP BY dbo.CO_RUBROS_ROL.CO_RUB_ROL_NOM, dbo.PROFESOR.PROF_APE, dbo.PROFESOR.PROF_NOM, dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD, 
dbo.PROFESOR.CO_UBI_COD, dbo.PROFESOR.CO_EMP_RUC, dbo.CO_UBICACION_AF.CO_UBI_NOM, dbo.CO_EMPRESA.CO_EMP_NOM
GO
