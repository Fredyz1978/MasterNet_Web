SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[CO_FN_CALCULO_IESS] (@str_prof_cod char(10),@bit_prof_tra_tie_hor bit)
RETURNS float
as
begin
	DECLARE @valor_iess float
	SELECT @valor_iess=SUM(dbo.CO_ROL_TEMP.CO_RUB_ROL_VAL)
	FROM dbo.CO_RUBROS_ROL INNER JOIN
	dbo.CO_ROL_TEMP ON dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD = dbo.CO_ROL_TEMP.CO_RUB_ROL_COD AND 
    dbo.CO_RUBROS_ROL.CO_EMP_RUC = dbo.CO_ROL_TEMP.CO_EMP_RUC INNER JOIN
    dbo.PROFESOR ON dbo.CO_ROL_TEMP.PROF_COD = dbo.PROFESOR.PROF_COD
	WHERE(dbo.CO_RUBROS_ROL.CO_RUB_ROL_IES = 1) AND (dbo.PROFESOR.PROF_APO_IES = 1) AND dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL='Ingresos'
	and dbo.CO_ROL_TEMP.PROF_COD=@str_prof_cod
	return round((@valor_iess*9.35)/100,2)
end
GO
