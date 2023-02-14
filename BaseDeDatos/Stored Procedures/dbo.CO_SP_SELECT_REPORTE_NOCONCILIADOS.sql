SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_NOCONCILIADOS]
@CO_EMP_RUC CHAR(13),
@CO_CON_BAN_FEC DATETIME,
@CO_CC_NUM nvarchar(10)
AS
SELECT CO_CC_NUM,CO_EMP_RUC,convert(nvarchar(10),FECHA,101) as FECHA,TRANSACCION,
VALOR,DOCUMENTO,CO_MOV_NOC_BEN,OPERACION
FROM CO_VW_SELECT_MOVIMIENTO_NOCONCILIADO
WHERE ESTADO=0 AND CO_EMP_RUC=@CO_EMP_RUC AND 
FECHA<=@CO_CON_BAN_FEC and
CO_CC_NUM=@CO_CC_NUM
GO
