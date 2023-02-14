SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_SALDOS_TEMP_MES_ANTERIOR]
@co_mes_num INT,
@co_anio_num INT,
@co_emp_ruc CHAR(13)
AS
INSERT INTO [dbo].[CO_MES_SALDO_TEMP]
           ([CO_EMP_RUC]
           ,[CO_CUE_COD]
           ,[CO_MES_SAL_ACT]
           ,[CO_MES_SAL_DEB]
           ,[CO_MES_SAL_HAB]
		   ,[CO_MES_SAL_ANT]
		   ,[CO_CUE_COD_ANT])
select co_emp_ruc, co_cue_cod, 0, 0, 0,co_mes_sal_ant, isnull(co_cue_cod_ant,'0')  from co_mes_saldo
where co_mes_num=@co_mes_num and co_anio_num=@co_anio_num and co_emp_ruc=@co_emp_ruc
UNION
SELECT co_emp_ruc, co_cue_cod, 0, 0, 0, 0, isnull(co_cue_cod_ant,'0')
FROM CO_CUENTA 
WHERE CO_EMP_RUC=@co_emp_ruc AND 
CO_CUE_COD NOT IN (SELECT CO_CUE_COD FROM CO_MES_SALDO WHERE CO_EMP_RUC=@co_emp_ruc)
GO
