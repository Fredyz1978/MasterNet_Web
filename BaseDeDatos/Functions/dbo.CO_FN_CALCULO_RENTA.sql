SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[CO_FN_CALCULO_RENTA] (@str_prof_cod char(10))
RETURNS float
as
begin
	DECLARE @base_renta_ingresos float
	DECLARE @base_renta_descuentos float
	DECLARE @limite_inferior float
	DECLARE @base float
	DECLARE @porcentaje float
	--sacamos la suma de los ingresos que forman parte del impuesto a la renta
	SELECT  @base_renta_ingresos=SUM(dbo.CO_ROL_TEMP.CO_RUB_ROL_VAL)
	FROM dbo.CO_RUBROS_ROL INNER JOIN
    dbo.CO_ROL_TEMP ON dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD = dbo.CO_ROL_TEMP.CO_RUB_ROL_COD AND 
    dbo.CO_RUBROS_ROL.CO_EMP_RUC = dbo.CO_ROL_TEMP.CO_EMP_RUC
	WHERE dbo.CO_RUBROS_ROL.CO_RUB_ROL_REN=1 AND dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL='Ingresos'
	and dbo.CO_ROL_TEMP.PROF_COD=@str_prof_cod
	--sacamos la suma de los ingresos que forman parte del impuesto a la renta
	SELECT  @base_renta_descuentos=SUM(dbo.CO_ROL_TEMP.CO_RUB_ROL_VAL)
	FROM dbo.CO_RUBROS_ROL INNER JOIN
    dbo.CO_ROL_TEMP ON dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD = dbo.CO_ROL_TEMP.CO_RUB_ROL_COD AND 
    dbo.CO_RUBROS_ROL.CO_EMP_RUC = dbo.CO_ROL_TEMP.CO_EMP_RUC
	WHERE dbo.CO_RUBROS_ROL.CO_RUB_ROL_REN=1 AND dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL='Descuentos'
	and dbo.CO_ROL_TEMP.PROF_COD=@str_prof_cod
	--obtenemos el valor del rango del impuesto a la renta segun la tabla parametro_renta
	SELECT @limite_inferior=CO_PAR_REN_LIM_INF,@base=CO_PAR_REN_VAL_BAS,@porcentaje=CO_PAR_REN_POR_DIF
	FROM CO_PARAMETRO_RENTA
	WHERE @base_renta_ingresos-@base_renta_descuentos BETWEEN(CO_PAR_REN_LIM_INF/12) AND (CO_PAR_REN_LIM_SUP/12)
	--calculamos el valor del impuesto a la renta
	DECLARE @exedente float
	set @exedente=((@base_renta_ingresos-@base_renta_descuentos)-(@limite_inferior/12))
	return round((@base/12)+((@exedente*@porcentaje)/100),2)
end
GO
