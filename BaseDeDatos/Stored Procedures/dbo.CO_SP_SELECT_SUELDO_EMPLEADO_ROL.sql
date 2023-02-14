SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_SUELDO_EMPLEADO_ROL]
@co_emp_ruc CHAR(13)
,@co_ubi_cod INT
,@co_mes INT
,@co_anio INT
AS
select prof_cod,prof_sue,prof_tra_tie_hor,prof_tra_val_hor,horas_laboradas 
from CO_VW_SELECT_LIQUIDACION_ROL
where co_emp_ruc=@co_emp_ruc and co_ubi_cod=@co_ubi_cod and mes=@co_mes
and anio=@co_anio
GO
