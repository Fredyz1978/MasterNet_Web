SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[CO_FN_CALCULO_HORAS_SUPLEMENTARIAS] (@str_prof_cod char(10),@bit_prof_tra_tie_hor bit,@int_mes int,@int_anio int)
RETURNS float
as
begin
	DECLARE @valor_suplementarias float

	if @bit_prof_tra_tie_hor=0
		select @valor_suplementarias=round(((prof_sue/240)*SUPLEMENTARIAS*1.5),2) 
		from CO_VW_SELECT_LIQUIDACION_ROL 
		where prof_cod=@str_prof_cod and mes=@int_mes and anio=@int_anio
	
	if @bit_prof_tra_tie_hor=1
		select @valor_suplementarias=round((prof_tra_val_hor*SUPLEMENTARIAS*1.5),2) 
		from CO_VW_SELECT_LIQUIDACION_ROL 
		where prof_cod=@str_prof_cod and mes=@int_mes and anio=@int_anio

	return @valor_suplementarias
end
GO
