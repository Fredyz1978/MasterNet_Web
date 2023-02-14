SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_RUBROS_EMPLEADO1]
@CO_EMP_RUC CHAR(13)
,@MES_INI INT
,@ANIO_INI INT
,@CO_UBI_COD INT
,@MES_FIN INT
,@ANIO_FIN INT
AS
IF (@CO_UBI_COD=0)
SELECT EMPLEADO,CO_RUB_ROL_NOM,PROF_COD,CO_RUB_ROL_VAL,MES,ANIO
FROM CO_VW_SELECT_PLANILLA_ROL
WHERE CO_EMP_RUC=@CO_EMP_RUC AND (MES>=@MES_INI AND ANIO>=@ANIO_INI) AND (MES<=@MES_FIN AND ANIO<=@ANIO_FIN)
order by CO_RUB_ROL_VAL desc
else
SELECT EMPLEADO,CO_RUB_ROL_NOM,PROF_COD,CO_RUB_ROL_VAL,MES,ANIO
FROM CO_VW_SELECT_PLANILLA_ROL
WHERE CO_EMP_RUC=@CO_EMP_RUC AND (MES>=@MES_INI AND ANIO>=@ANIO_INI) AND (MES<=@MES_FIN AND ANIO<=@ANIO_FIN) AND CO_UBI_COD=@CO_UBI_COD
order by CO_RUB_ROL_VAL desc
GO
