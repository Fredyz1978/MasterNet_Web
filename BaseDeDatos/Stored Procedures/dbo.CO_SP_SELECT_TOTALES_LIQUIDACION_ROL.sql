SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_TOTALES_LIQUIDACION_ROL]
@CO_EMP_RUC CHAR(13)
,@CO_MES INT
,@CO_ANIO INT
AS
declare @total_recibir as float
SELECT DISTINCT PROF_COD,EMPLEADO,@total_recibir as TOTAL_RECIBIR,
(select sum(CO_RUB_ROL_VAL) from CO_ROL_TEMP AS TEMP where co_rub_rol_tip='Ingresos' and TEMP.PROF_COD=VISTA.PROF_COD) AS INGRESOS,
(select sum(CO_RUB_ROL_VAL) from CO_ROL_TEMP AS TEMP where co_rub_rol_tip='Descuentos' and TEMP.PROF_COD=VISTA.PROF_COD) AS DESCUENTOS,
'' AS LIQUID_NOM,PROF_CUE_NUM,PROF_CUE_BAN,'' AS CHEQUE,'' as CUENTA
FROM CO_VW_SELECT_LISTADO_ROL AS VISTA
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_MES=@CO_MES AND CO_ANIO=@CO_ANIO
GO
