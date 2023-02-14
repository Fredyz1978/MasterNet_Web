SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CUENTA_SALDO_ACTUAL]
@CO_EMP_RUC CHAR(13),
@CO_MES_NUM INT,
@CO_ANIO_NUM INT,
@CO_CUE_COD VARCHAR(40)
AS
SELECT CO_MES_SAL_ACT
FROM CO_MES_SALDO 
WHERE CO_EMP_RUC=@CO_EMP_RUC 
AND CO_MES_NUM=@CO_MES_NUM 
AND CO_ANIO_NUM=@CO_ANIO_NUM 
AND CO_CUE_COD=@CO_CUE_COD
GO