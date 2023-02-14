SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_PAGO_CUOTA_NUMERO]
@CO_EMP_RUC CHAR(13)
,@CO_COM_COB_NUM INT
AS
SELECT * FROM CO_VW_SELECT_BUSCAR_PAGO_CUOTAS
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_COM_COB_NUM=@CO_COM_COB_NUM
GO