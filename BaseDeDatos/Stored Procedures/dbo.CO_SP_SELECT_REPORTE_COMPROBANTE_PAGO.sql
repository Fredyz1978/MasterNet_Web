SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_COMPROBANTE_PAGO]
@CO_COM_PAG_NUM uniqueidentifier
,@CO_EMP_RUC CHAR(13)
AS
SELECT * FROM CO_VW_SELECT_REPORTE_COMPROBANTE_PAGO
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_COM_PAG_NUM=@CO_COM_PAG_NUM
GO