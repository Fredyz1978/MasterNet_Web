SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_SALDOS_MES_ANTERIOR]
@co_mes_num_ant INT,
@co_anio_num_ant INT,
@co_emp_ruc CHAR(13),
@co_mes_num_act INT,
@co_anio_num_act INT
AS
INSERT INTO [dbo].[CO_MES_SALDO]
           ([CO_EMP_RUC]
           ,[CO_CUE_COD]
		   ,[CO_MES_NUM]
		   ,[CO_ANIO_NUM]
           ,[CO_MES_SAL_ACT]
           ,[CO_MES_SAL_DEB]
           ,[CO_MES_SAL_HAB]
		   ,[CO_MES_SAL_ANT]
		   ,[CO_CUE_COD_ANT])
select co_emp_ruc, co_cue_cod, @co_mes_num_act, @co_anio_num_act, CO_MES_SAL_ACT, 0, 0,CO_MES_SAL_ACT, isnull(co_cue_cod_ant,'0')  from co_mes_saldo
where co_mes_num=@co_mes_num_ant and co_anio_num=@co_anio_num_ant and co_emp_ruc=@co_emp_ruc
UNION
SELECT co_emp_ruc, co_cue_cod, @co_mes_num_act, @co_anio_num_act, 0, 0, 0, 0, isnull(co_cue_cod_ant,'0')
FROM CO_CUENTA 
WHERE CO_EMP_RUC=@co_emp_ruc AND 
(SELECT ISNULL(COUNT(*),0) FROM CO_MES_SALDO WHERE CO_CUENTA.co_cue_cod=CO_MES_SALDO.co_cue_cod AND CO_EMP_RUC=@co_emp_ruc AND co_mes_num=@co_mes_num_ant and co_anio_num=@co_anio_num_ant)=0
GO
