SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[CO_SP_SELECT_NUMERO_MES_LIQUIDADO_ESTADO]
@CO_EMP_RUC CHAR(13),
@CO_MES_LIQ_NUM INT,
@CO_ANIO_LIQ_NUM INT
AS
SELECT COUNT(*) AS CONTADOR FROM CO_MES_LIQUIDACION
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_MES_LIQ_NUM=@CO_MES_LIQ_NUM 
AND CO_ANIO_LIQ_NUM=@CO_ANIO_LIQ_NUM and CO_MES_LIQ_CON_EST=1
GO
