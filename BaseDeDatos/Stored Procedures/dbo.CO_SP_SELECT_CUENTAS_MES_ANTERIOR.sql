SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CUENTAS_MES_ANTERIOR]
@co_mes_num INT,
@co_anio_num INT,
@co_emp_ruc CHAR(13)
AS
select * from co_mes_saldo
where co_mes_num=@co_mes_num and co_anio_num=@co_anio_num and co_emp_ruc=@co_emp_ruc
GO
