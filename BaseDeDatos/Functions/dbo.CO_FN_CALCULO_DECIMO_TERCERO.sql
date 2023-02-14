SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[CO_FN_CALCULO_DECIMO_TERCERO] (@str_prof_cod char(10))
RETURNS float
as
begin
	DECLARE @valor_sueldo float
	DECLARE @filas int
	SELECT @valor_sueldo=PROF_SUE
	FROM dbo.PROFESOR
	WHERE PROF_APO_IES=1 AND PROF_COD=@str_prof_cod
	return round((@valor_sueldo)/12,2)
end
GO
